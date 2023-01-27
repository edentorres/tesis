import os
import time
import datetime 
from statistics import mean
from tabulate import tabulate

def runCommand(command):
    st = time.time()
    os.system(command)
    et = time.time()
    result = et - st
    print(result)
    return result

contracts = [
    "HelloBlockchain",
    "BasicProvenance",
    "DefectiveComponentCounter",
    "DigitalLocker",
    "FrequentFlyerRewardsCalculator",
    "RefrigeratedTransportation",
    "RoomThermostat",
    "SimpleMarketplace",
    "AssetTransfer",
    # Fixed
    "HelloBlockchainFixed",
    "SimpleMarketplaceFixed",
    "BasicProvenanceFixed",
    "DefectiveComponentCounterFixed",
    "DigitalLockerFixed",
    "AssetTransferFixed",
    "RefrigeratedTransportationFixed"
]

table = [['Contract', 'Epa Time', 'StateTimes']]

for contract in contracts:
    print("Corriendo " + contract)
    
    command = "python3 Tesis.py "  + contract + " -t"
    commandEpa = command + " -e"
    print("Modo epa")
    results = []

    results.append(runCommand(commandEpa))
    # results.append(runCommand(commandEpa))
    # results.append(runCommand(commandEpa))
    avg = mean(results)
    print("Promedio epa: " + str(avg))
    avgEpa = str(datetime.timedelta(seconds=int(avg)))
    print(str(datetime.timedelta(seconds=int(avg))))

    commandStates = command + " -s"
    print("Modo States")
    results = []
    results.append(runCommand(commandStates))
    # results.append(runCommand(commandStates))
    # results.append(runCommand(commandStates))
    avg = mean(results)
    print("Promedio States: " + str(avg))
    avgStates = str(datetime.timedelta(seconds=int(avg)))
    print(str(datetime.timedelta(seconds=int(avg))))

    table.append([contract, avgEpa, avgStates]) 
    with open('filename.txt', 'w') as outputfile:
      print(tabulate(table, headers='firstrow', tablefmt='fancy_grid'), file=outputfile)
