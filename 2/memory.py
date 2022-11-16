import itertools
import subprocess
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
from time import sleep


def reduceCombinations(arg):
    global tool_output, fileName, threadCount, preconditionsThreads, finalResultsThreads, lastOutputs, txBound
    
    preconditionsTemp = preconditionsThreads[arg]
    finalResultsTemp = finalResultsThreads[arg]

    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'new_folder'+str(arg))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)

    fileNameTemp = "CombinationsTemp"+str(arg)+".sol"
    fileNameTemp = final_directory +"/"+ fileNameTemp
    tool = "Verisol " + fileNameTemp + " " + contractName
    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)

    shutil.copyfile(fileName, fileNameTemp)

    inputfile = open(fileNameTemp, 'r').readlines()
    write_file = open(fileNameTemp,'w')
    fuctionCombinations = []
    for line in inputfile:
        write_file.write(line)
        if 'contract ' + contractName + ' {' in line:
            for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsTemp):
                fuctionCombinations.append(str(indexPreconditionRequire))
                write_file.write(functionOutput(str(indexPreconditionRequire)) + "\n")
                newValue = replace_checkPredOutput(preconditionRequire)
                write_file.write(newValue + "\n")
                write_file.write("}" + "\n") 
    write_file.close()


    preconditionsTemp2 = []
    finalResultsTemp2 = []
    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsTemp):
        command = getToolCommand(str(indexPreconditionRequire), tool, fuctionCombinations, txBound)
        result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
        if tool_output in str(result.stdout.decode('utf-8')):
                print_combination(indexPreconditionRequire, finalResultsTemp)
                preconditionsTemp2.append(preconditionRequire)
                finalResultsTemp2.append(finalResultsTemp[indexPreconditionRequire])
    preconditionsThreads[arg] = preconditionsTemp2
    finalResultsThreads[arg] = finalResultsTemp2
    write_file.close()


def validCombinations(arg):

    global tool_output, fileName, threadCount, preconditionsThreads, finalResultsThreads, lastOutputs, preconditions, finalResults, dot, txBound

    preconditionsTemp = preconditionsThreads[arg]
    finalResultsTemp = finalResultsThreads[arg]
    lastOutput = lastOutputs[arg]

    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'new_folder'+str(arg))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)

    fileNameTemp = "CombinationsTemp"+str(arg)+".sol"
    fileNameTemp = final_directory +"/"+ fileNameTemp
    tool = "Verisol " + fileNameTemp + " " + contractName

    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)

    shutil.copyfile(fileName, fileNameTemp)

    inputfile = open(fileNameTemp, 'r').readlines()
    write_file = open(fileNameTemp,'w')
    fuctionCombinations = []
    for line in inputfile:
        write_file.write(line)
        if 'contract ' + contractName + ' {' in line:
            for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsTemp):
                for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
                    for indexFunction, function in enumerate(functions):
                        if (indexFunction + 1) in finalResultsTemp[indexPreconditionRequire]:
                            functionName = str(indexPreconditionRequire) + "x" + str(indexPreconditionAssert) + "x" + str(indexFunction)
                            fuctionCombinations.append(functionName)
                            write_file.write(functionOutput(functionName) + "\n")
                            newValue = replace_functionOutput(preconditionRequire, function, preconditionAssert, indexFunction)
                            write_file.write(newValue + "\n")
                            write_file.write("}" + "\n") 
    write_file.close()

    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsTemp):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                if (indexFunction + 1) in finalResultsTemp[indexPreconditionRequire]:
                    functionName = str(indexPreconditionRequire) + "x" + str(indexPreconditionAssert) + "x" + str(indexFunction)
                    command = getToolCommand(functionName, tool, fuctionCombinations, txBound)
                    try:
                        result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
                    except:
                        print("Error command " + command)
                    if tool_output in str(result.stdout.decode('utf-8')):
                        dot.node(combinationToString(finalResultsTemp[indexPreconditionRequire]), output_combination(indexPreconditionRequire, finalResultsTemp))
                        dot.node(combinationToString(finalResults[indexPreconditionAssert]), output_combination(indexPreconditionAssert, finalResults))
                        dot.edge(combinationToString(finalResultsTemp[indexPreconditionRequire]),combinationToString(finalResults[indexPreconditionAssert]) , label=functions[indexFunction])
                        print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, finalResultsTemp, finalResults)
    # os.remove(fileNameTemp) 

def validInit(arg):

    global tool_output, fileName, threadCount, preconditionsThreads, finalResultsThreads, lastOutputs, preconditions, finalResults, dot
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'new_folder'+str(arg))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)

    fileNameTemp = "CombinationsTemp"+str(arg)+".sol"
    fileNameTemp = final_directory +"/"+ fileNameTemp
    tool = "Verisol " + fileNameTemp + " " + contractName

    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)

    shutil.copyfile(fileName, fileNameTemp)

    inputfile = open(fileNameTemp, 'r').readlines()
    write_file = open(fileNameTemp,'w')
    fuctionCombinations = []
    for line in inputfile:
        write_file.write(line)
        if 'contract ' + contractName + ' {' in line:
            for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
                functionName =  "initx" + str(indexPreconditionAssert)
                fuctionCombinations.append(functionName)
                write_file.write(functionOutput(functionName) + "\n")
                newValue = replace_functionOutputInit( preconditionAssert)
                write_file.write(newValue + "\n")
                write_file.write("}" + "\n") 
    write_file.close()

    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        functionName = "initx" + str(indexPreconditionAssert)
        command = getToolCommand(functionName, tool, fuctionCombinations, 1)
        result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
        if tool_output in str(result.stdout.decode('utf-8')):
            dot.node("init", "init")
            dot.node(combinationToString(finalResults[indexPreconditionAssert]), output_combination(indexPreconditionAssert, finalResults))
            dot.edge("init",combinationToString(finalResults[indexPreconditionAssert]) , "constructor")

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

def replace_values(newValue, oldValue, filename):
    with open(filename, 'r') as file :
        filedata = file.read()

    filedata = filedata.replace(oldValue, newValue)

    with open(filename, 'w') as file:
        file.write(filedata)

def replace_functionOutput(preconditionRequire, function, preconditionAssert, functionIndex):
    precondictionFunction = functionPreconditions[functionIndex]
    verisolFucntionOutput = "//Remplazar acá \nrequire("+preconditionRequire+");\nrequire("+precondictionFunction+");\n"+function+"\nassert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def replace_functionOutputInit(preconditionAssert):
    verisolFucntionOutput = "//Remplazar acá\nassert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def replace_checkPredOutput(preconditionRequire):
    return "//Remplazar acá \nrequire("+preconditionRequire+");\nassert(false);\n"

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
        finalResults.append(paddingResult)
    return finalResults

def getPreconditions():
    global finalResults, statePreconditions
    preconditions = []
    for result in finalResults:
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

results=[]
finalResults = []

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

txBound = 6

fileName = "Contracts/" + fileName
count = len(functions)
funcionesNumeros = list(range(1, count + 1))

threadCount = 12
threads = []

finalResults = getCombinations()
preconditions = getPreconditions()

preconditionsThreads = preconditions
preconditionsThreads = np.array_split(preconditionsThreads, threadCount)

finalResultsThreads = finalResults
finalResultsThreads = np.array_split(finalResultsThreads, threadCount)

lastOutputs = ["//Remplazar acá" for x in range(threadCount)]

for i in range(threadCount):
    thread = Thread(target = reduceCombinations, args = [i])
    thread.start()
    threads.append(thread)
print("threads started")

for thread in threads:
    thread.join()
print("threads finished")

preconditionsThreads = [x for x in preconditionsThreads if x != []]
finalResultsThreads = [x for x in finalResultsThreads if x != []]

preconditionsThreads = np.concatenate(preconditionsThreads)
finalResultsThreads = np.concatenate(finalResultsThreads)

finalResults = finalResultsThreads
preconditions = preconditionsThreads

divideCount = threadCount if len(preconditionsThreads) > threadCount else len(preconditionsThreads)

if len(preconditionsThreads) > 500:
    print("MAYOR A 500")
    divideCount = divideCount * 2

preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
finalResultsThreads = np.array_split(finalResultsThreads, divideCount)

dot = graphviz.Digraph(comment='Prueba')

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
