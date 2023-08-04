import itertools
import subprocess
import os
import shutil
import numpy  as np
import graphviz
from threading import Thread
import time
from enum import Enum
import sys
import platform
import psutil
import concurrent.futures

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
            if reducedTrue:
                isTrue = True
                for truePre in truePreconditions:
                    if truePre not in subset:
                        isTrue = False
                if isTrue == True:
                    results.append(subset)
            else:
                results.append(subset)

    for partialResult in results:
        paddingResult = []
        paddingResult = [0 for i in range(count)] 
        for i in range(count):
            if len(partialResult) > i and partialResult[i] >=0:
                indice = partialResult[i]
                paddingResult[indice-1] = indice
        statesTemp.append(paddingResult)
    statesTemp2 = []
    
    if not(reducedEqual):
        for combination in statesTemp:
            isCorrect = True
            for iNumber, number in enumerate(combination):
                for idx, x in enumerate(statePreconditions):
                    if iNumber != idx:
                        if number == 0:
                            if statePreconditions[iNumber] == x and combination[idx] != 0:
                                isCorrect = False
                        elif statePreconditions[iNumber] == x and not((idx+1) in combination):
                            isCorrect = False
            
            if isCorrect:
                statesTemp2.append(combination)
    else:
        statesTemp2 = statesTemp       
    return statesTemp2

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
    return "function vc" + number + "(" + functionVariables + ") payable public {"

def getToolCommand(includeNumber, toolCommand, combinations, txBound):
    global contractName
    command = toolCommand + " " 
    command = command + "/txBound:" + str(txBound) + " "
    for indexCombination, combi in enumerate(combinations):
        if combi != includeNumber: 
            command += "/ignoreMethod:vc"+ combi +"@" + contractName + " "
    # print(command)
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
    verisolFucntionOutput = "require("+preconditionRequire+");\nrequire("+precondictionFunction+");\n" + extraConditionOutputPre + function + "\n"  + "assert(!(" + preconditionAssert + "&& " + extraConditionPost + "));"
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
    if time_mode == False:
        print(output + "---------")

def print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, combinations, fullCombination, succes_by_to):
    output ="Desde este estado:\n"+ output_combination(indexPreconditionRequire, combinations) + "\nHaciendo " + str(functions[indexFunction]+succes_by_to) + "\n\nLlegas al estado:\n" + output_combination(indexPreconditionAssert, fullCombination) + "\n---------"
    if time_mode == False or succes_by_to != "":
        print(output)

def create_directory(index):
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, r'output'+str(index))
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)
    return final_directory

def create_directory_base(name):
    current_directory = os.getcwd()
    final_directory = os.path.join(current_directory, name)
    if not os.path.exists(final_directory):
        os.makedirs(final_directory)
    return final_directory

def delete_directory(final_directory):
    try:
        shutil.rmtree(final_directory)
    except Exception as e:
        print("Excepción al querer borrar carpeta: " + str(e))

def create_file(index, final_directory):
    global contractName, fileName
    fileNameTemp = "OutputTemp"+str(index)+".sol"
    #fileNameTemp = final_directory +"/"+ fileNameTemp
    fileNameTemp = os.path.join(final_directory, fileNameTemp)#Javi
    tool = "VeriSol " + fileNameTemp + " " + contractName
    if os.path.isfile(fileNameTemp):
        os.remove(fileNameTemp)
    shutil.copyfile(fileName, fileNameTemp)
    return fileNameTemp

def create_file_base(final_directory, name):
    global contractName, fileName
    #fileNameTemp = final_directory +"/"+ name
    fileNameTemp = os.path.join(final_directory, name)#Javi
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
        if 'contract ' + contractName in line:
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
        if time_mode == False:
            print(functionName + "---" + str(arg))
        indexPreconditionRequire, _, indexFunction = get_params_from_function_name(functionName)
        query_result = try_command(tool, functionName, tempFunctionNames, final_directory, statesTemp, txBound)
        success = query_result[0]
        if success:
            # print_combination(indexPreconditionRequire, statesTemp)
            preconditionsTemp2.append(preconditionsTemp[indexPreconditionRequire])
            statesTemp2.append(statesTemp[indexPreconditionRequire])
            extraConditionsTemp2.append(extraConditionsTemp[indexPreconditionRequire])
            if query_result[1] != "":
                print("[try_preconditions] Time out en función: " + functions[indexFunction] + " desde estado inicial:")
                i_state = output_combination(indexPreconditionRequire, statesTemp)
                print(i_state)
    return preconditionsTemp2, statesTemp2, extraConditionsTemp2

def try_transaction(tool, tempFunctionNames, final_directory, statesTemp, states, arg):
    global txBound
    for functionName in tempFunctionNames:
        if time_mode == False:
            print(functionName + "---" + str(arg))
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(functionName)
        
        query_result = try_command(tool, functionName, tempFunctionNames, final_directory, statesTemp, txBound)
        success = query_result[0]
        succes_by_timeout = query_result[1]
        if success:
            add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states, succes_by_timeout)
            print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert, statesTemp, states, succes_by_timeout)

def try_init(tool, tempFunctionNames, final_directory, states):
    global dot
    for functionName in tempFunctionNames:
        indexPreconditionAssert, _, _ = get_params_from_function_name(functionName)
        query_result = try_command(tool, functionName, tempFunctionNames, final_directory, [], 1)
        success = query_result[0]
        succes_by_to = query_result[1]
        if success:
            dot.node("init", "init")
            dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
            dot.edge("init",combinationToString(states[indexPreconditionAssert]) , "constructor"+succes_by_to)

def try_command(tool, temp_function_name, tempFunctionNames, final_directory, statesTemp, txBound):
    global tool_output, verbose, number_to
    
    #Evito chequear funciones "dummy"
    if len(statesTemp) > 0:
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(temp_function_name)
        i_state = output_combination(indexPreconditionRequire, statesTemp)
        f_state = output_combination(indexPreconditionAssert, states)
        if functions[indexFunction].startswith("dummy_"):
            if i_state != f_state:
                return (False,"")
            else:
                return (True,"")
    
    command = getToolCommand(temp_function_name, tool, tempFunctionNames, txBound)
    # if verbose:
    #     print(command)
    result = ""
    # time_out = None
    time_out = 600.0
    try:    
        if platform.system() == "Windows":
            proc = subprocess.Popen(command.split(" "), stdout=subprocess.PIPE, cwd=final_directory)
            result = proc.communicate(timeout=time_out)
            # result = subprocess.check_output(command.split(" "), shell = False, cwd=final_directory, timeout=10.0)#Javi
        else:
            #TODO: run with timeout in unix
            result = subprocess.run([command, ""], shell = True, cwd=final_directory, stdout=subprocess.PIPE)
    except Exception as e:
        number_to +=1
        print("---EXCEPTION por time out de {} segs ".format(time_out))
        indexPreconditionRequire, indexPreconditionAssert, indexFunction = get_params_from_function_name(temp_function_name)
        # print(str(e))
        process = psutil.Process(proc.pid)
        for proc in process.children(recursive=True):
            proc.kill()
        process.kill()
        process.wait(2)
        return True,"?"

    # if verbose:
    #     print(result[0].decode('utf-8'))
    return tool_output in str(result[0].decode('utf-8')), ""

def get_temp_function_name(indexPrecondtion, indexAssert, indexFunction):
    return str(indexPrecondtion) + "x" + str(indexAssert) + "x" + str(indexFunction)

def get_params_from_function_name(temp_function_name):
    array = temp_function_name.split('x')
    return int(array[0]), int(array[1]), int(array[2])

def add_node_to_graph(indexPreconditionRequire, indexPreconditionAssert, indexFunction, statesTemp, states, succes_by_to):
    global dot, functions
    dot.node(combinationToString(statesTemp[indexPreconditionRequire]), output_combination(indexPreconditionRequire, statesTemp))
    dot.node(combinationToString(states[indexPreconditionAssert]), output_combination(indexPreconditionAssert, states))
    dot.edge(combinationToString(statesTemp[indexPreconditionRequire]),combinationToString(states[indexPreconditionAssert]) , label=str(functions[indexFunction]+succes_by_to))

def reduceCombinations(arg):
    global fileName, preconditionsThreads, statesThreads, extraConditionsThreads, contractName
    preconditionsTemp = preconditionsThreads[arg]
    statesTemp = statesThreads[arg]
    extraConditionsTemp = extraConditionsThreads[arg]
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)
    body,fuctionCombinations = get_valid_preconditions_output(preconditionsTemp, extraConditionsTemp)
    write_file(fileNameTemp, body)
    #tool = "Verisol " + fileNameTemp + " " + contractName
    tool = "VeriSol " + fileNameTemp + " " + contractName#Javi
    preconditionsTemp2, statesTemp2, extraConditionsTemp2 = try_preconditions(tool, fuctionCombinations, final_directory, statesTemp, preconditionsTemp, extraConditionsTemp , arg)
    preconditionsThreads[arg] = preconditionsTemp2
    statesThreads[arg] = statesTemp2
    extraConditionsThreads[arg] = extraConditionsTemp
    if not verbose:
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
    #tool = "Verisol " + fileNameTemp + " " + contractName
    tool = "VeriSol " + fileNameTemp + " " + contractName#Javi
    try_transaction(tool, fuctionCombinations, final_directory, statesTemp, states, arg)
    if not verbose:
        delete_directory(final_directory)

def validInit(arg):
    global preconditionsThreads, extraConditions, preconditions, states, contractName, fileName, dot
    final_directory = create_directory(arg)
    fileNameTemp = create_file(arg, final_directory)

    body, fuctionCombinations = get_init_output(preconditions, extraConditions)
    write_file(fileNameTemp, body)
    
    #tool = "Verisol " + fileNameTemp + " " + contractName
    tool = "VeriSol " + fileNameTemp + " " + contractName#Javi
    try_init(tool, fuctionCombinations, final_directory, states)
    delete_directory(final_directory)

class Mode(Enum):
    epa = "epa"
    states = "states"

def make_global_variables(config):
    global fileName, preconditions, dot, statesNames, functions, statePreconditions, contractName, functionVariables
    global functionPreconditions, txBound, statePreconditionsModeState, statesModeState, SAVE_GRAPH_PATH
    #fileName = "Contracts/" + config.fileName
    fileName = os.path.join("Contracts", config.fileName)#Javi
    print(config.fileName)
    functions = config.functions
    statePreconditions = config.statePreconditions
    statesNames = config.statesNamesModeState
    statePreconditions = config.statePreconditions
    contractName = config.contractName
    functionVariables = config.functionVariables
    functionPreconditions = config.functionPreconditions
    if txBound == None:
        txBound = config.txBound
    else:
        print("txBound en config ignorado. Usando parámetro txBound="+ str(txBound))
    statePreconditionsModeState = config.statePreconditionsModeState
    statesModeState = config.statesModeState
    SAVE_GRAPH_PATH = "graph/k_"+str(txBound)+"/"

def main():
    global config, dot, preconditionsThreads, statesThreads, states, preconditions, extraConditionsThreads, extraConditions, SAVE_GRAPH_PATH
    make_global_variables(config)

    count = len(functions)
    funcionesNumeros = list(range(1, count + 1))

    threadCount = 8
    threads = []

    dot = graphviz.Digraph(comment=config.fileName)

    extraConditions = []
    countPreInitial = 0
    countPreFinal = 0

    if mode == Mode.epa :
        states = getCombinations(funcionesNumeros)
        preconditions = getPreconditions(funcionesNumeros)
        try:
            extraConditions = [config.epaExtraConditions for i in range(len(states))]
        except:
            extraConditions = ["true" for i in range(len(states))]
    else :
        preconditions = statePreconditionsModeState
        states = statesModeState
        try:
            extraConditions = config.statesExtraConditions
        except:
           extraConditions = ["true" for i in range(len(states))]
    
    tempDir = create_directory_base("temp")
    # tempFilePre = create_file_base(tempDir, configFile + "-" + str(mode) + ".txt")

    countPreInitial = len(preconditions)

    preconditionsThreads = preconditions
    preconditionsThreads = np.array_split(preconditionsThreads, threadCount)
    statesThreads = states
    statesThreads = np.array_split(statesThreads, threadCount)
    extraConditionsThreads = extraConditions
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.array_split(extraConditions, threadCount)

    if time_mode == False:
        print("Length")
        print(len(preconditions))

    if mode == Mode.epa and not(reduced):
        for i in range(threadCount):
            thread = Thread(target = reduceCombinations, args = [i])
            thread.start()
            threads.append(thread)

        for thread in threads:
            thread.join()

    preconditionsThreads = [x for x in preconditionsThreads if len(x)]
    statesThreads = [x for x in statesThreads if len(x)]
    extraConditionsThreads = [x for x in extraConditionsThreads if len(x)]

    preconditionsThreads = np.concatenate(preconditionsThreads)
    statesThreads = np.concatenate(statesThreads)
    if len(extraConditionsThreads) != 0:
        extraConditionsThreads = np.concatenate(extraConditionsThreads)
    states = statesThreads
    preconditions = preconditionsThreads
    extraConditions = extraConditionsThreads
    realThreadCount = threadCount if len(preconditionsThreads) > threadCount else len(preconditionsThreads)

    countPreFinal = len(preconditions)
    # f = open(tempDir + "/" + configFile + "-" + str(mode) + ".txt", "w")
    temp_dir = os.path.join(tempDir, configFile + "-" + str(mode) + ".txt")#Javi
    f = open(temp_dir, "w")
    f.write(str(countPreInitial) + "\n" + str(countPreFinal) + "\n" + str(len(functions)))
    f.close()
    # write_file(tempFilePre, str(countPreInitial) + "\n" + str(countPreFinal))

    threads = []
    divideThreads = 1
    moduleThreadsConut = 0
    divideCount = realThreadCount
    if time_mode == False:
        print("Length")
        print(len(preconditionsThreads))
    if len(preconditionsThreads) > 30:
        if time_mode == False:
            print("MAYOR A 200")
        divideCount = len(preconditionsThreads)
        divideThreads = int(divideCount/threadCount)
        moduleThreadsConut = divideCount % threadCount

    preconditionsThreads = np.array_split(preconditionsThreads, divideCount)
    statesThreads = np.array_split(statesThreads, divideCount)
    extraConditionsThreads = np.array_split(extraConditionsThreads, divideCount)

    # for y in range(divideThreads):
    #     threads = []
        # for i in range(realThreadCount):
        #     thread = Thread(target = validCombinations, args = [i + y * threadCount])
        #     thread.start()
        #     threads.append(thread)

        # for thread in threads:
        #     thread.join()
            
    
    # Otra alternativa
    with concurrent.futures.ThreadPoolExecutor(max_workers=threadCount) as executor:
        for y in range(divideThreads):
            for i in range(realThreadCount):
                executor.submit(validCombinations, i + y * threadCount)

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
    print("ENDED")
    tempFileName = configFile.replace('Config','')
    dot.render(SAVE_GRAPH_PATH + tempFileName + "_" + str(mode))

states = []
preconditions = []
tool_output = "Found a counterexample"
number_to = 0

#sys.path.append("/Users/etorres/Proyectos/verisol-test/Configs")
sys.path.append(os.path.join(os.getcwd(), "Configs"))#Javi

if __name__ == "__main__":
    global mode, config, verbose, time_mode, txBound
    txBound = None
    init = time.time()
    epaMode = False
    statesMode = False
    # sys.argv.append("HelloBlockchainFixedConfig")
    # sys.argv.append("-t")
    # sys.argv.append("-e")
    # sys.argv.append("-re")
    
    configFile = sys.argv[1]
    verbose = False
    time_mode = False
    reduced = False
    reducedTrue = True
    reducedEqual = False
    for i in range(1, len(sys.argv)):
        if sys.argv[i] == "-v":
            verbose = True
        if sys.argv[i] == "-t":
            time_mode = True
        if sys.argv[i] == "-e":
            epaMode = True
        if sys.argv[i] == "-s":
            statesMode = True
        if sys.argv[i] == "-a":
            statesMode = True
            epaMode = True
        if sys.argv[i] == "-default":
            reduced = False
            reducedTrue = True
            reducedEqual = False
        if sys.argv[i] == "-rs":
            reduced = True
        if sys.argv[i] == "-rt":
            reducedTrue = False
        if sys.argv[i] == "-re":
            reducedEqual = True
        if sys.argv[i] == "-rte":
            reducedEqual = True 
            reducedTrue = False       
        if sys.argv[i] == "-ra":
            reducedTrue = False
            reducedEqual = True
            reduced = True
        if "-txbound=" in sys.argv[i]:
            txBound = int(sys.argv[i].replace("-txbound=","").strip())
    
    if epaMode:
        mode = Mode.epa
        print(configFile)
        config = __import__(configFile)
        main()

    if statesMode:
        config = __import__(configFile, level=0)
        mode = Mode.states
        main()
    
    end = time.time()
    print("total time: " + str(end-init))
    print("# Time Out:" + str(number_to))

