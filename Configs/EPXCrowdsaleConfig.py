fileName = "EPXCrowdsale.sol"
contractName = "EPXCrowdsale"
functions = [
"SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);",
"buy();",
# "beneficiaryMultiSigWithdraw(_amount);",
"checkGoalReached();",
"refund();",
"t();"
]
statePreconditions = [
"(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))",
"(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock))",
# "(areFundsReleasedToBeneficiary && (amountRaisedInWei >= fundingMinCapInWei))",
"isCrowdSaleSetup",
"((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0))",
"true"
]
functionPreconditions = [
"msg.sender == admin && msg.sender == owner",
"(!(msg.value == 0))",
# "true",
"msg.sender == owner",
"(usersEPXfundValue[msg.sender] > 0)",
"true"
]
functionVariables = "uint256 _amount, uint256 _fundingStartBlock,  uint256 _fundingEndBlock"
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
txBound = 8