import os
import time
import datetime 
import subprocess
from statistics import mean
from tabulate import tabulate

def runCommand(command):
    st = time.time()
    result = subprocess.run([command, ""], shell = True, stdout=subprocess.PIPE)
    # print(result.stdout.decode('utf-8'))
    et = time.time()
    result = et - st
    print(result)
    return result
def run(mode, params, extra=""):
    global table, command, configName
    commandEpa = command + " " + params
    modeName = mode + ("-" + extra if extra != "" else "")
    print("Modo " + modeName)
    results = []

    results.append(runCommand(commandEpa))
    results.append(runCommand(commandEpa))
    # results.append(runCommand(commandEpa))
    avg = mean(results)
    print("Promedio " + "mode" + ": " + str(avg))
    avgEpa = str(datetime.timedelta(seconds=int(avg)))
    print(str(datetime.timedelta(seconds=int(avg))))
    f = open("temp/" + configName + "-Mode."+ mode +".txt", "r")
    initEpa = f.readline()
    finiStates = f.readline()
    functions = f.readline()
    name = configName
    statesCount = 2**int(functions) if mode == "epa" else initEpa
    
    table.append([name, modeName, avgEpa, statesCount , initEpa, finiStates, functions]) 

configs = [

    # V1
    # ["HelloBlockchainConfig",["e"]],
    # ["BasicProvenanceConfig",["e"]],
    # ["DefectiveComponentCounterConfig",["e"]], 
    # ["FrequentFlyerRewardsCalculatorConfig",["e"]],
    # ["RefrigeratedTransportationConfig",["e"]],
    # ["RoomThermostatConfig",["e"]],
    # ["SimpleMarketplaceConfig",["e"]],

    # Fixed
    # ["HelloBlockchainFixedConfig",["e"]],
    # ["SimpleMarketplaceFixedConfig",["e"]],
    # ["BasicProvenanceFixedConfig",["e"]],
    # ["DefectiveComponentCounterFixedConfig",["e"]],
    # ["RefrigeratedTransportationFixedConfig",["e"]],


    # ["HelloBlockchainConfig",["s"]],
    # ["BasicProvenanceConfig",["s"]],
    # ["DefectiveComponentCounterConfig",["s"]],
    # ["DigitalLockerConfig",["s"]],    
    # ["FrequentFlyerRewardsCalculatorConfig",["s"]],
    # ["RefrigeratedTransportationConfig",["s"]],
    # ["RoomThermostatConfig",["s"]],
    # ["SimpleMarketplaceConfig",["s"]],
    # ["AssetTransferConfig",["s"]],

    # ["DigitalLockerConfig",["e"]],   
    # ["AssetTransferConfig",["e"]], 
    # ["DigitalLockerFixedConfig",["e"]],
    # ["AssetTransferFixedConfig",["e"]],
    # Fixed
    # ["HelloBlockchainFixedConfig",["s"]],
    # ["SimpleMarketplaceFixedConfig",["s"]],
    # ["BasicProvenanceFixedConfig",["s"]],
    # ["DefectiveComponentCounterFixedConfig",["s"]],
    # ["DigitalLockerFixedConfig",["s"]],
    # ["AssetTransferFixedConfig",["s"]],
    # ["RefrigeratedTransportationFixedConfig",["s"]],

    # # # V2
    # ["AuctionConfig", ["e"]],
    # ["AuctionWithdrawConfig", ["e"]],
    # ["CrowdfundingConfig", ["e"]],
    # ["CrowdfundingTimeConfig", ["e"]],
    # ["EscrowVaultConfig", ["e"]],
     ["EPXCrowdsaleConfig", ["e"]],
    # ["RefundEscrowConfig", ["e"]],
    # ["RefundEscrowWithdrawConfig", ["e"]],
    # ["RockPaperScissorsConfig", ["e"]],
    # ["SimpleAuctionConfig", ["e"]],
    # ["SimpleAuctionTimeConfig", ["e"]],
    # ["ValidatorAuctionConfig", ["e"]],
    
    # ["AuctionEndedConfig", ["s"]],
    # ["CrowdfundingBalanceConfig", ["s"]],
    # ["CrowdfundingTimeBalanceConfig", ["s"]],
    # ["EPXCrowdsaleConfig", ["s"]],
    # ["EPXCrowdsaleIsCrowdsaleClosedConfig", ["s"]],
    # ["EscrowVaultConfig", ["s"]],
    # ["RefundEscrowConfig", ["s"]],
    # ["RockPaperScissorsConfig", ["s"]],
    # ["SimpleAuctionConfig", ["s"]],
]

table = [['Config', 'Mode' ,'Time', 'Inital pre count' , 'Pre count after true', 'Reduce Pr count', 'Functions count']]

for config in configs:
    configName = config[0]
    modes = config[1]
    print("Corriendo " + configName)
    command = "python3 Tesis.py " + configName + " -v"

    for mode in modes:
        if mode == "e":
            run("epa", "-e")
            run("epa", "-e -rt", "noReduceTrue")
            run("epa", "-e -re", "noReduceEqual")
            run("epa", "-e -rte", "noReduceTrueEqual")
        if mode == "s":
             run("states", "-s")
    
        with open('Tiempos-'+ str(datetime.datetime.now())+'.txt', 'w') as outputfile:
            print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)
        if mode == "e":
            run("epa", "-e -rs", "noReduceStates")
    
        with open('Tiempos-'+ str(datetime.datetime.now())+'.txt', 'w') as outputfile:
            print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)

        if mode == "e":
            run("epa", "-e -ra", "noReduceAll")
    
        with open('Tiempos-'+ str(datetime.datetime.now())+'.txt', 'w') as outputfile:
            print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)