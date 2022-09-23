import itertools
import os
import shutil
from threading import Thread
from time import sleep

def threaded_function(arg):
    for i in range(arg):
        print("running")
        sleep(1)

results=[]
finalResults = []
verisolFucntionOutput = ""

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
# # "Terminate();", 
# "Modify(description, price);", 
# "MakeOffer(inspector, appraiser, offerPrice);", 
# "AcceptOffer();", 
# "Reject();", 
# # "Accept();", 
# "ModifyOffer(offerPrice);", 
# "RescindOffer();", 
# "MarkAppraised();", 
# "MarkInspected();"
# ]
# statePreconditions = [
# # "true", 
# "State == StateType.Active", 
# "State == StateType.Active",
# "State == StateType.OfferPlaced",
# "(State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)",
# # "true",
# "State == StateType.OfferPlaced",
# "(State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)",
# "(State != StateType.PendingInspection || State != StateType.Inspected)",
# "(State != StateType.PendingInspection || State != StateType.Appraised)"
# ]
# functionPreconditions = [
# # "InstanceOwner == msg.sender", 
# "InstanceOwner == msg.sender", 
# "InstanceOwner != msg.sender && inspector != address(0x0) && appraiser != address(0x0) && offerPrice != 0",
# "InstanceOwner == msg.sender",
# "InstanceOwner == msg.sender",
# # "(msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)",
# "InstanceBuyer == msg.sender && offerPrice != 0",
# "InstanceBuyer == msg.sender",
# "InstanceAppraiser == msg.sender",
# "InstanceInspector == msg.sender"
# ]
# functionVariables = "uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price"
# tool_output = "Found a counterexample"

count = len(functions)
funcionesNumeros = list(range(1, count + 1))
fileNameTemp = "CombinationsTemp2¡.sol"
tool = "Verisol " + fileNameTemp + " " + contractName

def replace_values(newValue, oldValue):
    with open(fileNameTemp, 'r') as file :
        filedata = file.read()

    filedata = filedata.replace(oldValue, newValue)

    with open(fileNameTemp, 'w') as file:
        file.write(filedata)

def replace_functionOutput(preconditionRequire, function, preconditionAssert, functionIndex):
    global verisolFucntionOutput
    precondictionFunction = functionPreconditions[functionIndex]
    verisolFucntionOutput = "//Remplazar acá \nrequire("+preconditionRequire+");\nrequire("+precondictionFunction+");\n"+function+"\nassert(!(" + preconditionAssert + "));"
    return verisolFucntionOutput

def replace_checkPredOutput(preconditionRequire):
    global verisolFucntionOutput
    verisolFucntionOutput = "//Remplazar acá \nrequire("+preconditionRequire+");\nassert(false);\n"
    return verisolFucntionOutput


def print_combination(indexCombination):
    combination = finalResults[indexCombination]
    for function in combination:
        if function != 0:
            print(functions[function-1])

def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert):
    print("Desde este estado:")
    print_combination(indexPreconditionRequire)
    print("")
    print("Haciendo " + functions[indexFunction])
    print("")
    print("Llegas al estado:")
    print_combination(indexPreconditionAssert)
    print("-------------------------")

# Combinations
for L in range(len(funcionesNumeros) + 1):
    for subset in itertools.combinations(funcionesNumeros, L):
        results.append(subset)

for partialResult in results:
    paddingResult = []
    paddingResult = [0 for i in range(count)] 
    for i in range(3):
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


functionOutput = "function prueba(" + functionVariables + ") public {"

verisolFucntionOutput = "//Remplazar acá"

shutil.copyfile(fileName, fileNameTemp)

inputfile = open(fileNameTemp, 'r').readlines()
write_file = open(fileNameTemp,'w')
for line in inputfile:
    write_file.write(line)
    if 'contract ' + contractName + ' {' in line:
        write_file.write(functionOutput + "\n")
        write_file.write(verisolFucntionOutput + "\n")
        write_file.write("}" + "\n") 
write_file.close()

thread = Thread(target = threaded_function, args = (10, ))
thread.start()
thread.join()
print("thread finished...exiting")

preconditionsTemp = []
finalResultsTemp = []
for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
    oldValue = verisolFucntionOutput
    newValue = replace_checkPredOutput(preconditionRequire)
    replace_values(newValue, oldValue)
    out  = os.popen(tool).readlines()
    for line in out:
    #print(line)
        if tool_output in line:
            print_combination(indexPreconditionRequire)
            preconditionsTemp.append(preconditionRequire)
            finalResultsTemp.append(finalResults[indexPreconditionRequire])
            print("-------------------------")
preconditions = preconditionsTemp
finalResults = finalResultsTemp


for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        for indexFunction, function in enumerate(functions):
            if (indexFunction + 1) in finalResults[indexPreconditionRequire]:
                oldValue = verisolFucntionOutput
                newValue = replace_functionOutput(preconditionRequire, function, preconditionAssert, indexFunction)
                replace_values(newValue, oldValue)
                out  = os.popen(tool).readlines()
                for line in out:
                    # print(line)
                    if tool_output in line:
                        print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert)
os.remove(fileNameTemp)

