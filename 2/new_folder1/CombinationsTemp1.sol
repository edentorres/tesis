pragma solidity >=0.4.25 <0.6.0;

contract BasicProvenance {
function vc0x0x0(address newCounterparty) public {
//Remplazar acá 
require(State != StateType.Completed && State != StateType.Completed);
require(Counterparty == msg.sender);
TransferResponsibility(newCounterparty);
assert(!(!(State != StateType.Completed) && !(State != StateType.Completed)));
}
function vc0x0x1(address newCounterparty) public {
//Remplazar acá 
require(State != StateType.Completed && State != StateType.Completed);
require(SupplyChainOwner == msg.sender);
Complete();
assert(!(!(State != StateType.Completed) && !(State != StateType.Completed)));
}
function vc0x1x0(address newCounterparty) public {
//Remplazar acá 
require(State != StateType.Completed && State != StateType.Completed);
require(Counterparty == msg.sender);
TransferResponsibility(newCounterparty);
assert(!(State != StateType.Completed && State != StateType.Completed));
}
function vc0x1x1(address newCounterparty) public {
//Remplazar acá 
require(State != StateType.Completed && State != StateType.Completed);
require(SupplyChainOwner == msg.sender);
Complete();
assert(!(State != StateType.Completed && State != StateType.Completed));
}

    //Set of States
    enum StateType { Created, InTransit, Completed}
    
    //List of properties
    StateType public  State;
    address public  InitiatingCounterparty;
    address public  Counterparty;
    address public  PreviousCounterparty;
    address public  SupplyChainOwner;
    address public  SupplyChainObserver;
    
    constructor(address supplyChainOwner, address supplyChainObserver) public
    {
        InitiatingCounterparty = msg.sender;
        Counterparty = InitiatingCounterparty;
        SupplyChainOwner = supplyChainOwner;
        SupplyChainObserver = supplyChainObserver;
        State = StateType.Created;
    }

    function TransferResponsibility(address newCounterparty) public
    {
        if (Counterparty != msg.sender || State == StateType.Completed)
        {
            revert();
        }

        if (State == StateType.Created)
        {
            State = StateType.InTransit;
        }

        PreviousCounterparty = Counterparty;
        Counterparty = newCounterparty;
    }

    function Complete() public
    {
        if (SupplyChainOwner != msg.sender || State == StateType.Completed)
        {
            revert();
        }

        State = StateType.Completed;
        PreviousCounterparty = Counterparty;
        Counterparty = address(0x0000000000000000000000000000000000000000);
    }
}