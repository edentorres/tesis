pragma solidity ^0.5.0;

// bugs:
// 1. Auction can never end
// 2. highest bidder can never be refunded their highest bid

contract Auction {
    uint auctionStart;
    uint biddingTime;
    address payable beneficiary;

    bool ended = false;
    address payable highestBidder = address(0x0);
    address payable A = address(0x0);
    uint highestBid = 0;
    mapping(address => uint) pendingReturns;
    address[] pendingReturnsArray = new address[](0);
    address[] auxArray;
    uint pendingReturnsCount = 0;
    uint blockNumber;
    bool hasA = false;

    constructor(uint _auctionStart, uint _biddingTime, address payable _beneficiary, address payable payable_a,  uint _blockNumber) public {
        auctionStart = _auctionStart;
        biddingTime = _biddingTime;
        beneficiary = _beneficiary;
        blockNumber = _blockNumber;
        A = payable_a;
    }

    function Bid() public payable {
        uint end = auctionStart + biddingTime;
        if(end < blockNumber || ended) {
            revert();
        }
        else {
            if(msg.value <= highestBid) {
                revert();
            }
            else {
                pendingReturns[highestBidder] += highestBid;
                pendingReturnsCount = 2;
                pendingReturnsArray.push(msg.sender);
                highestBidder = msg.sender;
                highestBid = msg.value;
                if (highestBidder == A) {
                    hasA = true;
                }
            }
        }
        t();
    }

    function WithdrawA() public {
        if(pendingReturns[msg.sender] != 0 && pendingReturnsArray.length != 0 && msg.sender == A && hasA) {
            uint pr = pendingReturns[msg.sender];
            pendingReturns[msg.sender] = 0;
            pendingReturnsCount = pendingReturnsCount - 1;
            pendingReturnsArray = remove(msg.sender, pendingReturnsArray);
            hasA = false;
            //msg.sender.transfer(pr);  
        }
        else {
            revert();
        }
        t();
    }

    function WithdrawOther() public {
        if(pendingReturns[msg.sender] != 0 && pendingReturnsArray.length != 0 && msg.sender != A && !hasA) {
            uint pr = pendingReturns[msg.sender];
            pendingReturns[msg.sender] = 0;
            pendingReturnsCount = pendingReturnsCount - 1;
            pendingReturnsArray = remove(msg.sender, pendingReturnsArray);
            //msg.sender.transfer(pr);  
        }
        else {
            revert();
        }
        t();
    }

    function remove(address _valueToFindAndRemove, address[] memory _array) public  returns(address[] memory) {

        auxArray = new address[](0); 

        for (uint i = 0; i < _array.length; i++){
             if(_array[i] != _valueToFindAndRemove) 
                auxArray.push(_array[i]);
        }

        return auxArray;
    }

    function AuctionEnd() public {
        uint end = auctionStart + biddingTime;

        //!ended is a bug
        if(blockNumber <= end || !ended) {
            revert();
        }
        else {
            ended = true;
            //beneficiary.transfer(highestBid);
        }
        t();
    }

    function t() public {
        blockNumber = blockNumber + 1;
    }
}