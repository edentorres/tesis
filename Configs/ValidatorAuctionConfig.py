fileName = "ValidatorAuction.sol"
contractName = "ValidatorAuction"
functions = [
"bid();",
"startAuction();",
"depositBids();",
"closeAuction();",
"addToWhitelist(addressesToWhitelist);",
"withdraw();",
"withdrawAfterAuctionEnded();",
"withdrawAfterAuctionFailed();",
"transitionToDepositPending();",
"transitionToAuctionFailed();",

]
statePreconditions = [
"(bidders.length < maximalNumberOfParticipants)",
"depositLocker.initialized()",
"true",
"(bidders.length < maximalNumberOfParticipants)",
"true",
"(auctionState == AuctionState.Ended || auctionState == AuctionState.Failed)",
"true",
"true",
"true",
"true",
]
functionPreconditions = [
"(now > startTime && now <= startTime + auctionDurationInDays * 1 days && msg.value >= currentPrice() && whitelist[msg.sender] && bids[msg.sender] == 0)",
"true",
"true",
"(now > startTime + auctionDurationInDays * 1 days)",
"true",
"true", 
"(bids[msg.sender] > lowestSlotPrice)",
"(bids[msg.sender] > 0)",
"true",
"true",
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
txBound = 4