import itertools
import subprocess
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
from time import sleep

def getCombinations():
    global statePreconditions, funcionesNumeros
    truePreconditions = []
    for index, statePrecondition in enumerate(statePreconditions):
        if statePrecondition == "true":
            truePreconditions.append(index + 1)

    # Combinations
    for L in range(len(funcionesNumeros) + 1):
        for subset in itertools.combinations(funcionesNumeros, L):
            isTrue = True
            for truePre in truePreconditions:
                if truePre not in subset:
                    isTrue = False
            if isTrue == True:
                results.append(subset)

    for partialResult in results:
        paddingResult = []
        paddingResult = [0 for i in range(count)] 
        for i in range(count):
            if len(partialResult) > i and partialResult[i] >=0:
                indice = partialResult[i]
                paddingResult[indice-1] = indice
        states.append(paddingResult)
    return states

def getPreconditions():
    global states, statePreconditions
    preconditions = []
    for result in states:
        precondition = ""
        for number in funcionesNumeros:
            if precondition != "":
                precondition += " && "
            if number in result:
                precondition += statePreconditions[number-1]
            else:
                precondition += "!(" + statePreconditions[number-1] + ")"
        preconditions.append(precondition)
    return preconditions

def combinationToString(combination):
    output = ""
    for i in combination:
        output += str(i) + "-"
    return output

def functionOutput(number):
    return "function vc" + number + "(" + functionVariables + ") public {"

def getToolCommand(includeNumber, toolCommand, combinations, txBound):
    global contractName
    command = toolCommand + " " 
    # command = command + "/txBound:" + str(txBound) + " "
    for indexCombination, combi in enumerate(combinations):
        if combi != includeNumber: 
            command += "/ignoreMethod:vc"+ combi +"@" + contractName + " "
    return command

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex):
    precondictionFunction = functionPreconditions[functionIndex]
    verisolFucntionOutput = "require("+preconditionRequire+");\nrequire("+precondictionFunction+");\n"+function+"\nassert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def output_init_function(preconditionAssert):
    verisolFucntionOutput = "assert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def output_valid_state(preconditionRequire):
    return "require("+preconditionRequire+");\nassert(false);\n"

def output_combination(indexCombination, tempCombinations):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            output += functions[function-1] +"\n"
    if output == "":
        output = "Vacio\n"
    return output

def print_combination(indexCombination, tempCombinations):
    output = output_combination(indexCombination, tempCombinations)
    print(output + "---------")

def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination):
    output ="Desde este estado:\n"+ output_combination(indexPreconditionRequire, combinations) + "\nHaciendo " + functions[indexFunction] + "\n\nLlegas al estado:\n" + output_combination(indexPreconditionAssert, fullCombination) + "\n---------"
    print(output)

def create_directory(index):
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'output'+str(index))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)
    return final_directory

def create_file(index, final_directory):
    global contractName, fileName
    fileNameTemp = "OutputTemp"+str(index)+".sol"
    fileNameTemp = final_directory +"/"+ fileNameTemp
    tool = "Verisol " + fileNameTemp + " " + contractName
    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)
    shutil.copyfile(fileName, fileNameTemp)
    return fileNameTemp

def write_file(fileNameTemp, body):
    inputfile = open(fileNameTemp, 'r').readlines()
    write_file = open(fileNameTemp,'w')
    fuctionCombinations = []
    for line in inputfile:
        write_file.write(line)
        if 'contract ' + contractName + ' {' in line:
                write_file.write(body)
    write_file.close()

def get_valid_preconditions_output(preconditions):
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionRequire, "0", "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_valid_state(preconditionRequire)
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_valid_transitions_output(preconditionsThread, preconditions, functions, statesThread): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsThread):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                if (indexFunction + 1) in statesThread[indexPreconditionRequire]:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction)
                    temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_init_output(preconditions): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0" , "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_init_function(preconditionAssert)
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def try_preconditions(tool, tempFunctionNames, final_directory, statesTemp, preconditionsTemp): 
    preconditionsTemp2 = []
    statesTemp2 = []
    
    for functionName in tempFunctionNames:
        indexPreconditionRequire, _ , _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory):
            print_combination(indexPreconditionRequire, statesTemp)
            preconditionsTemp2.append(preconditionsTemp[indexPreconditionRequire])
            statesTemp2.append(statesTemp[indexPreconditionRequire])
    return preconditionsTemp2, statesTemp2

def try_transaction(tool, tempFunctionNames, final_directory, statesTemp, states): 
    for functionName in tempFunctionNames:
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory):
            add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states)
            print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, statesTemp, states)

def try_init(tool, tempFunctionNames, final_directory, states):
    global dot
    for functionName in tempFunctionNames:
        indexPreconditionAssert, _, _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory):
            dot.node("init", "init")
            dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
            dot.edge("init",combinationToString(states[indexPreconditionAssert]) , "constructor")

def try_command(tool, temp_function_name, tempFunctionNames, final_directory):
    global txBound, tool_output
    command = getToolCommand(temp_function_name, tool, tempFunctionNames, txBound)
    result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    return tool_output in str(result.stdout.decode('utf-8'))

def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

def get_params_from_function_name(temp_function_name):
    array = temp_function_name.split('x')
    return int(array[0]), int(array[1]), int(array[2])

def add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states):
    global dot, functions
    dot.node(combinationToString(statesTemp[indexPreconditionRequire]), output_combination(indexPreconditionRequire, statesTemp))
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge(combinationToString(statesTemp[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=functions[indexFunction])

def reduceCombinations(arg):
    global fileName, preconditionsThreads, statesThreads, contractName
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)
    body,fuctionCombinations = get_valid_preconditions_output(preconditionsTemp)
    write_file(fileNameTemp, body)
    tool = "Verisol " + fileNameTemp + " " + contractName
    preconditionsTemp2, statesTemp2 = try_preconditions(tool, fuctionCombinations, final_directory, statesTemp, preconditionsTemp)
    preconditionsThreads[arg] = preconditionsTemp2
    statesThreads[arg] = statesTemp2

def validCombinations(arg):
    global preconditionsThreads, statesThreads, preconditions, states, contractName, fileName, dot
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)
    body, fuctionCombinations = get_valid_transitions_output(preconditionsTemp, preconditions, functions, statesTemp)
    write_file(fileNameTemp, body)
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_transaction(tool, fuctionCombinations, final_directory, statesTemp, states)

def validInit(arg):
    global preconditionsThreads, statesThreads, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)

    body, fuctionCombinations = get_init_output(preconditions)
    write_file(fileNameTemp, body)
    
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_init(tool, fuctionCombinations, final_directory, states)


results=[]
states = []

fileName = "BasicProvenance.sol"
contractName = "BasicProvenance"
functions = ["TransferResponsibility(newCounterparty);", "Complete();"]

statePreconditions = ["State != StateType.Completed", 
"State != StateType.Completed"]
functionPreconditions = ["Counterparty == msg.sender",
"SupplyChainOwner == msg.sender"]

functionVariables = "address newCounterparty"
tool_output = "Found a counterexample"

# states = ["Created", "InTransit", "Completed"]
# statePreconditions = ["State == StateType.Created", "State == StateType.InTransit", "State == StateType.Completed"]

txBound = 4

fileName = "Contracts/" + fileName
count = len(functions)
funcionesNumeros = list(range(1, count + 1))

threadCount = 1
threads = []

dot = graphviz.Digraph(comment='Prueba')

states = getCombinations()
preconditions = getPreconditions()

preconditionsThreads = preconditions
preconditionsThreads = np.array_split(preconditionsThreads, threadCount)

statesThreads = states
statesThreads = np.array_split(statesThreads, threadCount)

for i in range(threadCount):
    thread = Thread(target = reduceCombinations, args = [i])
    thread.start()
    threads.append(thread)
print("threads started")

for thread in threads:
    thread.join()
print("threads finished")
preconditionsThreads = [x for x in preconditionsThreads if x != []]
statesThreads = [x for x in statesThreads if x != []]

preconditionsThreads = np.concatenate(preconditionsThreads)
statesThreads = np.concatenate(statesThreads)

states = statesThreads
preconditions = preconditionsThreads

divideCount = threadCount if len(preconditionsThreads) > threadCount else len(preconditionsThreads)

if len(preconditionsThreads) > 500:
    print("MAYOR A 500")
    divideCount = divideCount * 2

preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
statesThreads = np.array_split(statesThreads, divideCount)


if  len(preconditionsThreads) > 500:
    for i in range(int(divideCount/2)):
        thread = Thread(target = validCombinations, args = [i])
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()
        print("threads finished")

    for i in range(int(divideCount/2), divideCount):
        thread = Thread(target = validCombinations, args = [i])
        thread.start()
        threads.append(thread)
else:
    for i in range(int(divideCount)):
        thread = Thread(target = validCombinations, args = [i])
        thread.start()
        threads.append(thread)

thread = Thread(target = validInit, args = [divideCount + 1])
thread.start()
threads.append(thread)
print("threads started")

for thread in threads:
    thread.join()
print("threads finished")
dot.render("graph/" + contractName +'.gv')