fileName = "EPXCrowdsale.sol"
contractName = "EPXCrowdsale"
functions = [
"SetupCrowdsale(_fundingStartBlock, _fundingEndBlock);",
"buy();",
"beneficiaryMultiSigWithdraw(_amount);",
"checkGoalReached();",
"refund();"
]
statePreconditions = [
"(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0)))",
"(tokensRemaining > 0)",
"(areFundsReleasedToBeneficiary && (amountRaisedInWei >= fundingMinCapInWei))",
"isCrowdSaleSetup",
"((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed))",
]
functionPreconditions = [
"msg.sender == admin",
"(!(msg.value == 0) && (block.number <= fundingEndBlock) && (block.number >= fundingStartBlock))",
"true",
"true",
"((block.number > fundingEndBlock) && (usersEPXfundValue[msg.sender] > 0))",
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
txBound = 6