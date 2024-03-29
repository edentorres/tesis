fileName = "ValidatorAuction.sol"
contractName = "ValidatorAuction"
functions = [
"bid();",
"startAuction();",
"depositBids();",
"closeAuction();",
"addToWhitelist(addressesToWhitelist);",

"withdrawA();",
"withdrawNoA();",
]
statePreconditions = [
"((bidders.length < maximalNumberOfParticipants) && ((time - startTime) < (100 * 365) && time >= startTime && time <= (startTime + auctionDurationInDays * 1)) && auctionState == AuctionState.Started)",
"depositLocker.initialized() && auctionState == AuctionState.Deployed",
"auctionState == AuctionState.DepositPending",
"((bidders.length < maximalNumberOfParticipants) && (time > (startTime + auctionDurationInDays * 1)) && auctionState == AuctionState.Started)",
"auctionState == AuctionState.Deployed",
"((auctionState == AuctionState.Ended || auctionState == AuctionState.Failed) && biddersArray.length > 0 && hasA)",
"((auctionState == AuctionState.Ended || auctionState == AuctionState.Failed) && biddersArray.length > 0 && (!hasA || biddersArray.length > 1))",
]
functionPreconditions = [
"true",
"true",
"true",
"true",
"true",
"msg.sender == A && bids[msg.sender] > 0",
"msg.sender != A && bids[msg.sender] > 0", 
]
functionVariables = "address[] memory addressesToWhitelist"
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