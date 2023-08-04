import os
import time
import datetime 
import subprocess
import platform
from statistics import mean
from tabulate import tabulate

def runCommand(command):
    st = time.time()
    if platform.system() == "Windows":
        result = subprocess.run(command.split(" "), shell = True, stdout=subprocess.PIPE)
    else:
        result = subprocess.run([command, ""], shell = True, stdout=subprocess.PIPE)
    # print(result.stdout.decode('utf-8'))
    et = time.time()
    result = et - st
    print(result)
    return result

def run(mode, params, extra=""):
    global table, command, configName, REPETICIONES, TXBOUND
    commandEpa = command + " " + params + " -txbound="+str(TXBOUND)
    modeName = mode + ("-" + extra if extra != "" else "")
    print("Modo " + modeName)
    print("Command " + commandEpa)
    results = []

    i = 1
    while i <= REPETICIONES:
        results.append(runCommand(commandEpa))
        i += 1
    
    avg = mean(results)
    print("Promedio mode: " + str(avg))
    avgEpa = str(datetime.timedelta(seconds=int(avg)))
    print(str(datetime.timedelta(seconds=int(avg))))
    
    file = os.path.join("temp", configName + "-Mode."+ mode +".txt")
    f = open(file, "r")
    initEpa = f.readline()
    finiStates = f.readline()
    functions = f.readline()
    name = configName
    statesCount = 2**int(functions) if mode == "epa" else initEpa
    
    table.append([name+"_k="+str(TXBOUND), modeName, avgEpa, statesCount , initEpa, finiStates, functions]) 

configs = [

    ###Benchmark1-original
    # ["AssetTransferConfig",["s"]],
    # ["BasicProvenanceConfig",["s"]],
    # ["DigitalLockerConfig",["s"]],
    # ["DefectiveComponentCounterConfig",["s"]],
    # ["FrequentFlyerRewardsCalculatorConfig",["s"]],
    # ["HelloBlockchainConfig",["s"]],
    # ["RefrigeratedTransportationConfig",["s"]],
    # ["RoomThermostatConfig",["s"]],
    # ["SimpleMarketplaceConfig",["s"]],
    ###Benchmark1-fixed
    ["AssetTransferFixedConfig",["s"]],
    ["BasicProvenanceFixedConfig",["s"]],
    ["DigitalLockerFixedConfig",["s"]],
    ["DefectiveComponentCounterFixedConfig",["s"]],
    ["HelloBlockchainFixedConfig",["s"]],
    ["RefrigeratedTransportationFixedConfig",["s"]],
    ["SimpleMarketplaceFixedConfig",["s"]],
    
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

    # Benchmark2-original
    ["RefundEscrowConfig", ["e"]],
    ["EscrowVaultConfig", ["e"]],
    ["EPXCrowdsaleConfig", ["e"]],
    ["CrowdfundingConfig", ["e"]],
    ["ValidatorAuctionConfig", ["e"]],
    ["SimpleAuctionConfig", ["e"]],
    ["AuctionConfig", ["e"]],
    ["RockPaperScissorsConfig", ["e"]],
    
    # ["AuctionWithdrawConfig", ["e"]],
    # ["CrowdfundingTimeConfig", ["e"]],
    # ["RefundEscrowWithdrawConfig", ["e"]],
    # ["SimpleAuctionTimeConfig", ["e"]],
    
    
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

REPETICIONES = 1
TXBOUND = 10
init = time.time()


for config in configs:
    configName = config[0]
    modes = config[1]
    print("Corriendo " + configName)
    command = "python.exe .\Tesis.py " + configName + " -t" #windows
    # command = "python3 Tesis.py " + configName + " -t"

    upper_bound = TXBOUND
    for curr_txBound in range(4,upper_bound+1):
        TXBOUND = curr_txBound
        for mode in modes:
            if mode == "e":
                run("epa", "-e")
                # run("epa", "-e -rt", "noReduceTrue")
                # run("epa", "-e -re", "noReduceEqual")
                # run("epa", "-e -rte", "noReduceTrueEqual")
                # run("epa", "-e -rs", "noReduceStates")
                # run("epa", "-e -ra", "noReduceAll")
            if mode == "s":
                run("states", "-s")
        
            # now = str(datetime.datetime.now()).replace(":","-")
            # with open('Tiempos-'+ now +'.txt', 'w') as outputfile:
            #     print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)
            # if mode == "e":
            #     run("epa", "-e -rs", "noReduceStates")
        
            # now = str(datetime.datetime.now()).replace(":","-")
            # with open('Tiempos-'+ now +'.txt', 'w') as outputfile:
            #     print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)

            # if mode == "e":
            #     run("epa", "-e -ra", "noReduceAll")
    
        
now = str(datetime.datetime.now()).replace(":","-")
with open('Tiempos-'+ now +'.txt', 'w') as outputfile:
    print(tabulate(table, headers='firstrow', tablefmt='simple'), file=outputfile)
            
end = time.time()
print("Tiempo total: " + str(end - init) + "segs")