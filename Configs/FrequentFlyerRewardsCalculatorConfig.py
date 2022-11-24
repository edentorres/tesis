fileName = "FrequentFlyerRewardsCalculator.sol"
contractName = "FrequentFlyerRewardsCalculator"
functions = ["AddMiles(miles);", "ComputeTotalRewards();", "GetMiles();"]

statePreconditions = ["true", 
"true",
"true"]
functionPreconditions = ["msg.sender == Flyer",
"true",
"true"]

functionVariables = "int[] memory miles"
tool_output = "Found a counterexample"

statesModeState = [[1,0], [0,2]]
statesNamesModeState = ["SetFlyerAndReward", "MilesAdded"]
statePreconditionsModeState = ["State == StateType.SetFlyerAndReward", "State == StateType.MilesAdded"]
txBound = 4