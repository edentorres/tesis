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

statesModeState = [[1,0,0,0,0], [0,2,0,0,0], [0,0,3,0,0], [0,0,0,4,0], [0,0,0,0,5]]
statesNamesModeState = ["SetupCrowdsale && !isCrowdSaleClosed", "buy && checkGoalReached && !isCrowdSaleClosed", "checkGoalReached && !isCrowdSaleClosed", "checkGoalReached && refund && isCrowdSaleClosed", "checkGoalReached && isCrowdSaleClosed"]
statePreconditionsModeState = [
"(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && !isCrowdSaleSetup && !((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && !isCrowdSaleClosed", 
"!(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && (tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && !isCrowdSaleClosed", 
"!(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && !isCrowdSaleClosed", 
"!(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && ((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && isCrowdSaleClosed",
"!(!isCrowdSaleSetup && !(beneficiaryWallet != address(0x0))) && !(tokensRemaining > 0 && (blockNumber <= fundingEndBlock) && (blockNumber >= fundingStartBlock)) && isCrowdSaleSetup && !((amountRaisedInWei < fundingMinCapInWei) && (isCrowdSaleClosed) && (blockNumber > fundingEndBlock) && (usersEPXfundValueArray.length != 0)) && isCrowdSaleClosed",
]
txBound = 6