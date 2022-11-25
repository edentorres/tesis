import itertools
import subprocess
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
from time import sleep
from enum import Enum
import sys

def getCombinations(funcionesNumeros):
    global statePreconditions
    truePreconditions = []
    results = []
    statesTemp = []
    count = len(funcionesNumeros)
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
        statesTemp.append(paddingResult)
    return statesTemp

def getPreconditions(funcionesNumeros):
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
    command = command + "/txBound:" + str(txBound) + " "
    for indexCombination, combi in enumerate(combinations):
        if combi != includeNumber: 
            command += "/ignoreMethod:vc"+ combi +"@" + contractName + " "
    return command

def get_extra_condition_output(condition):
    extraConditionOutput = ""
    if condition != "" and condition != None:
        extraConditionOutput = "require("+condition+");\n"
    return extraConditionOutput 

def output_transitions_function(preconditionRequire, function, preconditionAssert, functionIndex, extraConditionPre, extraConditionPost):
    if mode == Mode.epa:
        precondictionFunction = functionPreconditions[functionIndex]
    else:
        precondictionFunction = "true"
    extraConditionOutputPre = get_extra_condition_output(extraConditionPre)
    extraConditionOutputPost = get_extra_condition_output(extraConditionPost)
    verisolFucntionOutput = "require("+preconditionRequire+");\nrequire("+precondictionFunction+");\n" + extraConditionOutputPre + function + "\n" + extraConditionOutputPost  + "assert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def output_init_function(preconditionAssert, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    verisolFucntionOutput =  extraConditionOutput + "assert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def output_valid_state(preconditionRequire, extraCondition):
    extraConditionOutput = get_extra_condition_output(extraCondition)
    return "require("+preconditionRequire+");\n" + extraConditionOutput + "assert(false);\n"

def output_combination(indexCombination, tempCombinations):
    combination = tempCombinations[indexCombination]
    output = ""
    for function in combination:
        if function != 0:
            if mode == Mode.epa:
                output += functions[function-1] +"\n"
            else:
                output += statesNames[function-1]

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

def delete_directory(final_directory):
    shutil.rmtree(final_directory)

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

def get_valid_preconditions_output(preconditions, extraConditions):
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionRequire, "0", "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_valid_state(preconditionRequire, extraConditions[indexPreconditionRequire])
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_valid_transitions_output(preconditionsThread, preconditions, extraConditionsTemp, extraConditions, functions, statesThread): 
    global mode
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsThread):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                extraConditionPre = extraConditionsTemp[indexPreconditionRequire]
                extraConditionPost = extraConditions[indexPreconditionAssert]
                if (indexFunction + 1) in statesThread[indexPreconditionRequire] and mode == Mode.epa:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
                elif mode == Mode.states:
                    functionName = get_temp_function_name(indexPreconditionRequire, indexPreconditionAssert, indexFunction)
                    tempFunctionNames.append(functionName)
                    temp_function = functionOutput(functionName) + "\n"
                    temp_function += output_transitions_function(preconditionRequire, function, preconditionAssert, indexFunction, extraConditionPre, extraConditionPost)
                    temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def get_init_output(preconditions, extraConditions): 
    temp_output = ""
    tempFunctionNames = []
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = get_temp_function_name(indexPreconditionAssert, "0" , "0")
        tempFunctionNames.append(functionName)
        temp_function = functionOutput(functionName) + "\n"
        temp_function += output_init_function(preconditionAssert, extraConditions[indexPreconditionAssert])
        temp_output += temp_function + "}\n"
    return temp_output, tempFunctionNames

def try_preconditions(tool, tempFunctionNames, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp, arg): 
    global txBound
    preconditionsTemp2 = []
    statesTemp2 = []
    extraConditionsTemp2 = []
    
    for functionName in tempFunctionNames:
        print(functionName + "---" + str(arg))
        indexPreconditionRequire, _ , _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, txBound):
            print_combination(indexPreconditionRequire, statesTemp)
            preconditionsTemp2.append(preconditionsTemp[indexPreconditionRequire])
            statesTemp2.append(statesTemp[indexPreconditionRequire])
            extraConditionsTemp2.append(extraConditionsTemp[indexPreconditionRequire])
    return preconditionsTemp2, statesTemp2, extraConditionsTemp2

def try_transaction(tool, tempFunctionNames, final_directory, statesTemp, states, arg):
    global txBound 
    for functionName in tempFunctionNames:
        print(functionName + "---" + str(arg))
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, txBound):
            add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states)
            print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, statesTemp, states)

def try_init(tool, tempFunctionNames, final_directory, states):
    global dot
    for functionName in tempFunctionNames:
        indexPreconditionAssert, _, _ = get_params_from_function_name(functionName)
        if try_command(tool, functionName, tempFunctionNames, final_directory, 1):
            dot.node("init", "init")
            dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
            dot.edge("init",combinationToString(states[indexPreconditionAssert]) , "constructor")

def try_command(tool, temp_function_name, tempFunctionNames, final_directory, txBound):
    global tool_output
    command = getToolCommand(temp_function_name, tool, tempFunctionNames, txBound)
    result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    # print(result.stdout.decode('utf-8'))
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
    global fileName, preconditionsThreads, statesThreads, extraConditionsThreads, contractName
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    extraConditionsTemp = extraConditionsThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)
    body,fuctionCombinations = get_valid_preconditions_output(preconditionsTemp, extraConditionsTemp)
    write_file(fileNameTemp, body)
    tool = "Verisol " + fileNameTemp + " " + contractName
    preconditionsTemp2, statesTemp2, extraConditionsTemp2 = try_preconditions(tool, fuctionCombinations, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp , arg)
    preconditionsThreads[arg] = preconditionsTemp2
    statesThreads[arg] = statesTemp2
    extraConditionsThreads[arg] = extraConditionsTemp
    delete_directory(final_directory)

def validCombinations(arg):
    global preconditionsThreads, statesThreads, extraConditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    extraConditionsTemp = extraConditionsThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)
    body, fuctionCombinations = get_valid_transitions_output(preconditionsTemp, preconditions, extraConditionsTemp, extraConditions, functions, statesTemp)
    write_file(fileNameTemp, body)
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_transaction(tool, fuctionCombinations, final_directory, statesTemp, states, arg)
    delete_directory(final_directory)

def validInit(arg):
    global preconditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)

    body, fuctionCombinations = get_init_output(preconditions, extraConditions)
    write_file(fileNameTemp, body)
    
    tool = "Verisol " + fileNameTemp + " " + contractName
    try_init(tool, fuctionCombinations, final_directory, states)
    delete_directory(final_directory)

class Mode(Enum):
    epa = "epa"
    states = "states"

def make_global_variables(config):
    global fileName, preconditions, dot, statesNames, functions, statePreconditions, contractName, functionVariables, functionPreconditions, txBound, statePreconditionsModeState, statesModeState
    fileName = "Contracts/" + config.fileName
    functions = config.functions
    statePreconditions = config.statePreconditions
    statesNames = config.statesNamesModeState
    statePreconditions = config.statePreconditions
    contractName = config.contractName
    functionVariables = config.functionVariables
    functionPreconditions = config.functionPreconditions
    txBound = config.txBound
    statePreconditionsModeState = config.statePreconditionsModeState
    statesModeState = config.statesModeState

def main():
    global config, dot, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions
    make_global_variables(config)

    count = len(functions)
    funcionesNumeros = list(range(1, count + 1))

    threadCount = 10
    threads = []

    dot = graphviz.Digraph(comment='Prueba')

    extraConditions = []

    if mode == Mode.epa :
        states = getCombinations(funcionesNumeros)
        preconditions = getPreconditions(funcionesNumeros)
        extraConditions = [config.epaExtraConditions for i in range(len(states))]
    else :
        preconditions = statePreconditionsModeState
        states = statesModeState
        extraConditions = config.statesExtraConditions

    preconditionsThreads = preconditions
    preconditionsThreads = np.array_split(preconditionsThreads, threadCount)
    statesThreads = states
    statesThreads = np.array_split(statesThreads, threadCount)
    extraConditionsThreads = extraConditions
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.array_split(extraConditions, threadCount)

    print("Length")
    print(len(preconditions))

    if mode == Mode.epa :
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
    extraConditionsThreads = [x for x in extraConditionsThreads if x != []]

    preconditionsThreads = np.concatenate(preconditionsThreads)
    statesThreads = np.concatenate(statesThreads)
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.concatenate(extraConditionsThreads)
    states = statesThreads
    preconditions = preconditionsThreads
    extraConditions = extraConditionsThreads
    realThreadCount = threadCount if len(preconditionsThreads) > threadCount else len(preconditionsThreads)

    threads = []
    divideThreads = 1
    moduleThreadsConut = 0
    divideCount = realThreadCount
    if len(preconditionsThreads) > 200:
        print("MAYOR A 200")
        divideCount = len(preconditionsThreads)
        divideThreads = int(divideCount/threadCount)
        moduleThreadsConut = divideCount % threadCount

    preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
    statesThreads = np.array_split(statesThreads, divideCount)
    extraConditionsThreads = np.array_split(extraConditionsThreads, 2)

    for y in range(divideThreads):
        threads = []
        for i in range(realThreadCount):
            thread = Thread(target = validCombinations, args = [i + y * threadCount])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()
        print("threads finished")
    threads = []
    
    for index in range(moduleThreadsConut):
        thread = Thread(target = validCombinations, args = [threadCount * divideThreads + index])
        thread.start()
        threads.append(thread)
    
    thread = Thread(target = validInit, args = [len(preconditionsThreads)])
    thread.start()
    threads.append(thread)
    for thread in threads:
        thread.join()
    print("threads finished")

    dot.render("graph/" + contractName + "_" + str(mode))

states = []
preconditions = []
tool_output = "Found a counterexample"

sys.path.append("/Users/etorres/Proyectos/verisol-test/Configs")

if __name__ == "__main__":
    global mode, config
    configFile = sys.argv[1] + "Config"
    config = __import__(configFile)
    print("Mode EPA")
    mode = Mode.epa
    main()
    # print("Mode States")
    # config = __import__(configFile)
    # mode = Mode.states
    # main()

