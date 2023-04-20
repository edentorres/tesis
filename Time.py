import os
import time
import datetime 
import subprocess
from statistics import mean
from tabulate import tabulate

def runCommand(command):
    st = time.time()
    result = subprocess.run([command, ""], shell = True, stdout=subprocess.PIPE)
    print(result.stdout.decode('utf-8'))
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
    "RefrigeratedTransportationFixed",
    # V2
    "Auction",
    "CrowdFunding",
    "EPXCrowdSale",
    "EscrowVault",
    "RefundEscrow",
    "RockPaperScissors",
    "SimpleAcution",
    "ValidatorAction",
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
    with open('Tiempos-'+ str(datetime.datetime.now())+'.txt', 'w') as outputfile:
      print(tabulate(table, headers='firstrow', tablefmt='grid'), file=outputfile)
