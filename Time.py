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

configs = [
    "HelloBlockchainConfig",
    "BasicProvenanceConfig",
    "DefectiveComponentCounterConfig",
    "DigitalLockerConfig",
    "FrequentFlyerRewardsCalculatorConfig",
    "RefrigeratedTransportationConfig",
    "RoomThermostatConfig",
    "SimpleMarketplaceConfig",
    "AssetTransferConfig",
    # Fixed
    "HelloBlockchainFixedConfig",
    "SimpleMarketplaceFixedConfig",
    "BasicProvenanceFixedConfig",
    "DefectiveComponentCounterFixedConfig",
    "DigitalLockerFixedConfig",
    "AssetTransferFixedConfig",
    "RefrigeratedTransportationFixedConfig",
]

table = [['Config', 'Time', 'Inital Pre', 'Reduce Pre', 'Function count']]

for config in configs:
    print("Corriendo " + config)
    
    command = "python3 Tesis.py "  + config + " -t"
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

    f = open("temp/" + config + "-Mode.epa.txt", "r")
    initEpa = f.readline()
    finiEpa = f.readline()
    functions = f.readline()

    table.append([config+"-epa", avgEpa, initEpa, finiEpa, functions]) 
    
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

    f = open("temp/" + config + "-Mode.states.txt", "r")
    initStates = f.readline()
    finiStates = f.readline()
    functions = f.readline()

    table.append([config+"-states", avgStates, initStates, finiStates, functions]) 
    with open('Tiempos-'+ str(datetime.datetime.now())+'.txt', 'w') as outputfile:
      print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)
