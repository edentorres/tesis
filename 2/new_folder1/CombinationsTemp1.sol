pragma solidity >=0.4.25 <0.9.0;

contract AssetTransfer {
function validCombination0x0x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceOwner == msg.sender);
Terminate();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x0x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require((msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted));
Accept();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x0x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceBuyer == msg.sender);
RescindOffer();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x0x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceAppraiser == msg.sender);
MarkAppraised();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x0x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceInspector == msg.sender);
MarkInspected();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x1x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceOwner == msg.sender);
Terminate();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x1x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require((msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted));
Accept();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x1x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceBuyer == msg.sender);
RescindOffer();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x1x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceAppraiser == msg.sender);
MarkAppraised();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x1x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceInspector == msg.sender);
MarkInspected();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x2x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceOwner == msg.sender);
Terminate();
assert(!(true && State == StateType.Active && State == StateType.Active && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x2x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require((msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted));
Accept();
assert(!(true && State == StateType.Active && State == StateType.Active && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x2x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceBuyer == msg.sender);
RescindOffer();
assert(!(true && State == StateType.Active && State == StateType.Active && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x2x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceAppraiser == msg.sender);
MarkAppraised();
assert(!(true && State == StateType.Active && State == StateType.Active && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x2x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceInspector == msg.sender);
MarkInspected();
assert(!(true && State == StateType.Active && State == StateType.Active && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted)) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x3x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceOwner == msg.sender);
Terminate();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x3x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require((msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted));
Accept();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x3x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceBuyer == msg.sender);
RescindOffer();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x3x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceAppraiser == msg.sender);
MarkAppraised();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x3x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceInspector == msg.sender);
MarkInspected();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x4x0(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceOwner == msg.sender);
Terminate();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x4x5(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require((msg.sender == InstanceBuyer || msg.sender == InstanceOwner) && (msg.sender != InstanceOwner || State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && (msg.sender != InstanceBuyer || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted));
Accept();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x4x7(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceBuyer == msg.sender);
RescindOffer();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x4x8(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceAppraiser == msg.sender);
MarkAppraised();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}
function validCombination0x4x9(uint256 offerPrice, address inspector, address appraiser, string memory description, uint256 price) public {
//Remplazar acá 
require(true && !(State == StateType.Active) && !(State == StateType.Active) && !(State == StateType.OfferPlaced) && !((State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted)) && true && !(State == StateType.OfferPlaced) && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised));
require(InstanceInspector == msg.sender);
MarkInspected();
assert(!(true && !(State == StateType.Active) && !(State == StateType.Active) && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised && State == StateType.NotionalAcceptance || State == StateType.BuyerAccepted) && true && State == StateType.OfferPlaced && (State == StateType.OfferPlaced || State == StateType.PendingInspection || State == StateType.Inspected || State == StateType.Appraised || State == StateType.NotionalAcceptance || State == StateType.SellerAccepted) && (State != StateType.PendingInspection || State != StateType.Inspected) && (State != StateType.PendingInspection || State != StateType.Appraised)));
}

    enum StateType { Active, OfferPlaced, PendingInspection, Inspected, Appraised, NotionalAcceptance, BuyerAccepted, SellerAccepted, Accepted, Terminated }
    address public InstanceOwner;
    string public Description;
    uint public AskingPrice;
    StateType public State;

    address public InstanceBuyer;
    uint public OfferPrice;
    address public InstanceInspector;
    address public InstanceAppraiser;

    constructor(string memory description, uint256 price) public
    {
        InstanceOwner = msg.sender;
        AskingPrice = price;
        Description = description;
        State = StateType.Active;
        // ContractCreated();
    }

    function Terminate() public
    {
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        State = StateType.Terminated;
        // ContractUpdated('Terminate');
    }

    function Modify(string memory description, uint256 price) public
    {
        if (State != StateType.Active)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        Description = description;
        AskingPrice = price;
        // ContractUpdated('Modify');
    }

    function MakeOffer(address inspector, address appraiser, uint256 offerPrice) public
    {
        if (inspector == address(0x0) || appraiser == address(0x0) || offerPrice == 0)
        {
            revert();
        }
        if (State != StateType.Active)
        {
            revert();
        }
        // Cannot enforce "AllowedRoles":["Buyer"] because Role information is unavailable
        if (InstanceOwner == msg.sender) // not expressible in the current specification language
        {
            revert();
        }

        InstanceBuyer = msg.sender;
        InstanceInspector = inspector;
        InstanceAppraiser = appraiser;
        OfferPrice = offerPrice;
        State = StateType.OfferPlaced;
        // ContractUpdated('MakeOffer');
    }

    function AcceptOffer() public
    {
        if (State != StateType.OfferPlaced)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        State = StateType.PendingInspection;
        // ContractUpdated('AcceptOffer');
    }

    function Reject() public
    {
        if (State != StateType.OfferPlaced && State != StateType.PendingInspection && State != StateType.Inspected && State != StateType.Appraised && State != StateType.NotionalAcceptance && State != StateType.BuyerAccepted)
        {
            revert();
        }
        if (InstanceOwner != msg.sender)
        {
            revert();
        }

        InstanceBuyer = address(0x0);
        State = StateType.Active;
        // ContractUpdated('Reject');
    }

    function Accept() public
    {
        if (msg.sender != InstanceBuyer && msg.sender != InstanceOwner)
        {
            revert();
        }

        if (msg.sender == InstanceOwner &&
            State != StateType.NotionalAcceptance &&
            State != StateType.BuyerAccepted)
        {
            revert();
        }

        if (msg.sender == InstanceBuyer &&
            State != StateType.NotionalAcceptance &&
            State != StateType.SellerAccepted)
        {
            revert();
        }

        if (msg.sender == InstanceBuyer)
        {
            if (State == StateType.NotionalAcceptance)
            {
                State = StateType.BuyerAccepted;
            }
            else if (State == StateType.SellerAccepted)
            {
                State = StateType.Accepted;
            }
        }
        else
        {
            if (State == StateType.NotionalAcceptance)
            {
                State = StateType.SellerAccepted;
            }
            else if (State == StateType.BuyerAccepted)
            {
                State = StateType.Accepted;
            }
        }
        // ContractUpdated('Accept');
    }

    function ModifyOffer(uint256 offerPrice) public
    {
        if (State != StateType.OfferPlaced)
        {
            revert();
        }
        if (InstanceBuyer != msg.sender || offerPrice == 0)
        {
            revert();
        }

        OfferPrice = offerPrice;
        // ContractUpdated('ModifyOffer');
    }

    function RescindOffer() public
    {
        if (State != StateType.OfferPlaced && State != StateType.PendingInspection && State != StateType.Inspected && State != StateType.Appraised && State != StateType.NotionalAcceptance && State != StateType.SellerAccepted)
        {
            revert();
        }
        if (InstanceBuyer != msg.sender)
        {
            revert();
        }

        InstanceBuyer = address(0x0);
        OfferPrice = 0;
        State = StateType.Active;
        // ContractUpdated('RescindOffer');
    }

    function MarkAppraised() public
    {
        if (InstanceAppraiser != msg.sender)
        {
            revert();
        }

        if (State == StateType.PendingInspection)
        {
            State = StateType.Appraised;
        }
        else if (State == StateType.Inspected)
        {
            State = StateType.NotionalAcceptance;
        }
        else
        {
            revert();
        }
        // ContractUpdated('MarkAppraised');
    }

    function MarkInspected() public
    {
        if (InstanceInspector != msg.sender)
        {
            revert();
        }

        if (State == StateType.PendingInspection)
        {
            State = StateType.Inspected;
        }
        else if (State == StateType.Appraised)
        {
            State = StateType.NotionalAcceptance;
        }
        else
        {
            revert();
        }
        // ContractUpdated('MarkInspected');
    }
}