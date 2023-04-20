fileName = "RefundEscrowWithdraw.sol"
contractName = "RefundEscrow"
functions = [
"deposit(refundee);",
"close();",
"enableRefunds();",
"beneficiaryWithdraw();",
# "withdraw(payee);",
"withdrawA(payee);",
"withdrawNoA(payee);",
# "transferPrimary(recipient);"
]
statePreconditions = [
"_state == State.Active",
"_state == State.Active",
"_state == State.Active",
"_state == State.Closed",
"length() != 0 && _state == State.Refunding && hasA",
"length() != 0 && _state == State.Refunding && (!hasA || length() > 1)",
# "true"
]
functionPreconditions = [
"true",
"true",
"true",
"true",
"withdrawalAllowed(payee) && A == msg.sender",
"withdrawalAllowed(payee) && A != msg.sender",
# "recipient != address(0)"
]
functionVariables = "address refundee, address payable payee, address recipient"
tool_output = "Found a counterexample"

statesModeState = [[1,0,0], [0,2,0], [0,0,3]]
statesNamesModeState = ["Active", "Refunding", "Close"]
statePreconditionsModeState = [
"_state == State.Active", 
"_state == State.Refunding", 
"_state == State.Closed", 
]
txBound = 10