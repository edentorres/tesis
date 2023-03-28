fileName = "EscrowVault.sol"
contractName = "EscrowVault"
functions = [
"deposit(investor);",
"setGoalReached();",
"withdraw(_amount);",
"withdrawAll();",
"close();",
"enableRefunds();",
"refund(investor);",
"transferOwnership(newOwner);"
]
statePreconditions = [
"(state == State.Active || state == State.GoalReached)",
"state == State.Active",
"state == State.GoalReached",
"state == State.GoalReached",
"state == State.GoalReached",
"state == State.Active",
"state == State.Refunding",
"true"
]
functionPreconditions = [
"true",
"true",
"msg.sender == superOwner && _amount <= address(this).balance &&  _amount > 0",
"true",
"true",
"true",
"true",
"newOwner != address(0)"
]
functionVariables = "uint256 _amount, address payable investor, address newOwner"
tool_output = "Found a counterexample"

statesModeState = [[1,0,0,0,0,0,0,0,0,0], [0,2,0,0,0,0,0,0,0,0], [0,0,3,0,0,0,0,0,0,0], [0,0,0,4,0,0,0,0,0,0], [0,0,0,0,5,0,0,0,0,0], [0,0,0,0,0,6,0,0,0,0], [0,0,0,0,0,0,7,0,0,0], [0,0,0,0,0,0,0,8,0,0], [0,0,0,0,0,0,0,0,9,0], [0,0,0,0,0,0,0,0,0,10]]
statesNamesModeState = ["Active", "OfferPlaced", "PendingInspection", "Inspected", "Appraised", "NotionalAcceptance", "BuyerAccepted", "SellerAccepted", "Accepted", "Terminated"]
statePreconditionsModeState = ["State == StateType.Active", 
"State == StateType.OfferPlaced", 
"State == StateType.PendingInspection", 
"State == StateType.Inspected",
"State == StateType.Appraised",
"State == StateType.NotionalAcceptance",
"State == StateType.BuyerAccepted",
"State == StateType.SellerAccepted",
"State == StateType.Accepted",
"State == StateType.Terminated"]
txBound = 6