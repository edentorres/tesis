import itertools
import subprocess
import os
import shutil
import numpy  as np
from threading import Thread
from time import sleep
import graphviz


def reduceCombinations(arg):
    global tool_output, fileName, threadCount, preconditionsThreads, finalResultsThreads, lastOutputs
    
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
        command = getToolCommand(str(indexPreconditionRequire), tool, fuctionCombinations)
        result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
        if tool_output in str(result.stdout.decode('utf-8')):
                print_combination(indexPreconditionRequire, finalResultsTemp)
                preconditionsTemp2.append(preconditionRequire)
                finalResultsTemp2.append(finalResultsTemp[indexPreconditionRequire])
    preconditionsThreads[arg] = preconditionsTemp2
    finalResultsThreads[arg] = finalResultsTemp2
    write_file.close()


def validCombinations(arg):

    global tool_output, fileName, threadCount, preconditionsThreads, finalResultsThreads, lastOutputs, preconditions, finalResults

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
                            # print(functionOutput(functionName) + "\n")
                            newValue = replace_functionOutput(preconditionRequire, function, preconditionAssert, indexFunction)
                            write_file.write(newValue + "\n")
                            write_file.write("}" + "\n") 
    write_file.close()

    for indexPreconditionRequire, preconditionRequire in enumerate(preconditionsTemp):
        for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
            for indexFunction, function in enumerate(functions):
                if (indexFunction + 1) in finalResultsTemp[indexPreconditionRequire]:
                    functionName = str(indexPreconditionRequire) + "x" + str(indexPreconditionAssert) + "x" + str(indexFunction)
                    command = getToolCommand(functionName, tool, fuctionCombinations)
                    # print(command)
                    result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
                    if tool_output in str(result.stdout.decode('utf-8')):
                        print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, finalResultsTemp, finalResults)
    # os.remove(fileNameTemp) 

results=[]
finalResults = []

fileName = "SimpleMarketplace.sol"
contractName = "SimpleMarketplace"
functions = ["MakeOffer(offerPrice);", "AcceptOffer();", "Reject();"]
statePreconditions = ["StateEnum == StateType.ItemAvailable", "StateEnum == StateType.OfferPlaced", "StateEnum == StateType.OfferPlaced"]
functionPreconditions = ["offerPrice != 0 && msg.sender != InstanceOwner", "msg.sender == InstanceOwner", "msg.sender == InstanceOwner"]
functionVariables = "int offerPrice"
tool_output = "Found a counterexample"

# fileName = "RoomThermostat.sol"
# contractName = "RoomThermostat"
# functions = ["StartThermostat();", "SetTargetTemperature(targetTemperature);", "SetMode(mode);"]
# statePreconditions = ["State == StateType.Created", "State == StateType.InUse", "State == StateType.InUse"]
# functionPreconditions = ["Installer == msg.sender", "User == msg.sender", "User == msg.sender"]
# functionVariables = "int targetTemperature, ModeEnum mode"
# tool_output = "Found a counterexample"

# fileName = "RefrigeratedTransportation.sol"
# contractName = "RefrigeratedTransportation"
# functions = ["IngestTelemetry(humidity, temperature, timestamp);", "TransferResponsibility(newCounterparty);", "Complete();"]
# statePreconditions = ["State != StateType.Completed && State != StateType.OutOfCompliance ", "State != StateType.Completed && State != StateType.OutOfCompliance", "State != StateType.Completed && State != StateType.OutOfCompliance"]
# functionPreconditions = ["Device == msg.sender", "InitiatingCounterparty == msg.sender && Counterparty == msg.sender && newCounterparty != Device", "Owner == msg.sender && SupplyChainOwner == msg.sender"]
# functionVariables = "int humidity, int temperature, int timestamp, address newCounterparty"
# tool_output = "Found a counterexample"

# fileName = "AssetTransfer.sol"
# contractName = "AssetTransfer"
# functions = [
# "Terminate();", 
# "Modify(description, price);", 
# "MakeOffer(inspector, appraiser, offerPrice);", 
# "AcceptOffer();", 
# "Reject();", 
# "Accept();", 
# "ModifyOffer(offerPrice);", 
# "RescindOffer();", 
# "MarkAppraised();", 
# "MarkInspected();"
# ]
# statePreconditions = [
# "true", 
# "State == StateType.Active", 
# "State == StateType.Active",
# "State == StateType.OfferPlaced",
# "(State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)",
# "true",
# "State == StateType.OfferPlaced",
# "(State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)",
# "(State != StateType.PendingInspection || State != StateType.Inspected)",
# "(State != StateType.PendingInspection || State != StateType.Appraised)"
# ]
# functionPreconditions = [
# "InstanceOwner == msg.sender", 
# "InstanceOwner == msg.sender", 
# "InstanceOwner != msg.sender && inspector != address(0x0) && appraiser != address(0x0) && offerPrice != 0",
# "InstanceOwner == msg.sender",
# "InstanceOwner == msg.sender",
# "(msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)",
# "InstanceBuyer == msg.sender && offerPrice != 0",
# "InstanceBuyer == msg.sender",
# "InstanceAppraiser == msg.sender",
# "InstanceInspector == msg.sender"
# ]
# functionVariables = "uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price"
# tool_output = "Found a counterexample"

count = len(functions)
funcionesNumeros = list(range(1, count + 1))

threadCount = 8
threads = []

def functionOutput(number):
    return "function validCombination" + number + "(" + functionVariables + ") public {"

def getToolCommand(includeNumber, toolCommand, combinations):
    global contractName
    command = toolCommand + " " 
    for indexCombination, combi in enumerate(combinations):
        if combi != includeNumber:
            command += "/ignoreMethod:validCombination"+ combi +"@" + contractName + " "
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

preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
finalResultsThreads = np.array_split(finalResultsThreads, divideCount)

for i in range(divideCount):
    thread = Thread(target = validCombinations, args = [i])
    thread.start()
    threads.append(thread)
print("threads started")

for thread in threads:
    thread.join()
print("threads finished")
