fileName = "DefectiveComponentCounter.sol"
contractName = "DefectiveComponentCounter"
functions = ["ComputeTotal();", "GetDefectiveComponentsCount();"]

statePreconditions = ["true", 
"true"]
functionPreconditions = ["Manufacturer == msg.sender",
"true"]

functionVariables = ""
tool_output = "Found a counterexample"

statesModeState = [[1,0], [0,2]]
statesNamesModeState = ["Create", "ComputeTotal"]
statePreconditionsModeState = ["State == StateType.Create", "State == StateType.ComputeTotal"]
txBound = 4