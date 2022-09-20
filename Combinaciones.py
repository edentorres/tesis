import itertools
import os

stuff = [1, 2, 3]
functions = ["MakeOffer(offerPrice);", "AcceptOffer();", "Reject();"]
results=[]
count = 3
finalResults = []
verisolFucntionOutput = ""

def replace_values(replacpreconditionRequire, function, preconditionAsserteValue):
    # Read in the file
    with open('SimpleMarketplace.sol', 'r') as file :
        filedata = file.read()

    # Replace the target string
    oldValue = verisolFucntionOutput
    newValue = replace_functionOutput(preconditionRequire, function, preconditionAssert)
    filedata = filedata.replace(oldValue, newValue)

    # Write the file out again
    with open('SimpleMarketplace.sol', 'w') as file:
        file.write(filedata)

def replace_functionOutput(preconditionRequire, function, preconditionAssert):
    global verisolFucntionOutput
    verisolFucntionOutput = "//Remplazar acá \nrequire("+preconditionRequire+");\n"+function+"\n assert(!(" + preconditionAssert + "));"
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
for L in range(len(stuff) + 1):
    for subset in itertools.combinations(stuff, L):
        results.append(subset)

for partialResult in results:
    paddingResult = []
    paddingResult = [0 for i in range(count)] 
    for i in range(3):
        if len(partialResult) > i and partialResult[i] >=0:
            indice = partialResult[i]
            paddingResult[indice-1] = indice
    finalResults.append(paddingResult)

# Preconditons
preconditions = []
for result in finalResults:
    precondition = ""
    if 1 in result:
        precondition = "StateEnum == StateType.ItemAvailable"
    else:
        precondition = "StateEnum != StateType.ItemAvailable"
    if 2 in result:
        precondition += " && StateEnum == StateType.OfferPlaced"
    else:
        precondition += " && StateEnum != StateType.OfferPlaced"
    if 3 in result:
        precondition += " && StateEnum == StateType.OfferPlaced"
    else:
        precondition += " && StateEnum != StateType.OfferPlaced"
    preconditions.append(precondition)

# Combinations Output
outputCombination = ""
outputCombinationVariables = "int256[][] memory result = new int256[][](%s);"%(2 ** count)
outputCombination += outputCombinationVariables
outputCombination +="\n"
outputCombinationBody = ""
for i in range(2**count):
    outputCombinationBody += "int256[] memory state%s = new int256[](%s);"%(str(i), str(count))
    outputCombinationBody +="\n"
    for y in range(count):
        outputCombinationBody +=  "state%s[%s] = %s;"%(str(i), str(y), str(finalResults[i][y]))
        outputCombinationBody +="\n"
    outputCombinationBody += "result[%s]= state%s;"%(str(i),str(i))
    outputCombinationBody +="\n"

outputCombination += outputCombinationBody
outputCombination +="\n"


# Precondition Output
outputPrecondition = ""
outputPreconditionVariables = "bool[] memory precondtions = new bool[](%s);"%(2 ** count)
outputPrecondtionBody = ""
for i in range(2**count):
    outputPrecondtionBody += "precondtions[%s]= %s;"%(str(i),preconditions[i])
    outputPrecondtionBody +="\n"
outputPrecondition += outputPrecondtionBody
outputPrecondition +="\n"


functionOutput = "function prueba(int offerPrice) public {"

verisolFucntionOutput = "//Remplazar acá"

inputfile = open('SimpleMarketplace.sol', 'r').readlines()
write_file = open('SimpleMarketplace.sol','w')
for line in inputfile:
    write_file.write(line)
    if 'contract SimpleMarketplace{' in line:
        write_file.write(functionOutput + "\n")
        write_file.write(verisolFucntionOutput + "\n")
        write_file.write("}" + "\n") 
write_file.close()
for indexPreconditionRequire, preconditionRequire in enumerate(preconditions):
    for indexPreconditionAssert, preconditionAssert in enumerate(preconditions):
        for indexFunction, function in enumerate(functions):
            if (indexFunction + 1) in finalResults[indexPreconditionRequire]:
                replace_values(preconditionRequire, function, preconditionAssert)
                out  = os.popen('Verisol SimpleMarketplace.sol SimpleMarketplace').readlines()
                for line in out:
                    if "Found a counterexample" in line:
                        print_output(indexPreconditionRequire, indexFunction, indexPreconditionAssert)