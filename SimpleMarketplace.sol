pragma solidity >=0.4.25 <0.9.0;

contract SimpleMarketplace
{
    enum StateType { 
      ItemAvailable,
      OfferPlaced,
      Accepted
    }

    address public InstanceOwner;
    string public Description;
    int public AskingPrice;
    StateType public StateEnum;

    address public InstanceBuyer;
    int public OfferPrice;

    constructor(string memory description, int price, address sender) public
    {
        InstanceOwner = sender;
        AskingPrice = price;
        Description = description;
        StateEnum = StateType.ItemAvailable;
    }

    function MakeOffer(int offerPrice) public
    {
        if (offerPrice == 0)
        {
            revert();
        }

        if (StateEnum != StateType.ItemAvailable)
        {
            revert();
        }
        
        if (InstanceOwner == msg.sender)
        {
            revert();
        }

        InstanceBuyer = msg.sender;
        OfferPrice = offerPrice;
        StateEnum = StateType.OfferPlaced;
    }

    function Reject() public
    {
        if ( StateEnum != StateType.OfferPlaced )
        {
            revert();
        }

        if (InstanceOwner != msg.sender)
        {
            revert();
        }

       //InstanceBuyer = 0x0;
        StateEnum = StateType.ItemAvailable;
    }

    function AcceptOffer() public
    {
        if ( StateEnum != StateType.OfferPlaced )
        {
            revert();
        }

        if ( msg.sender != InstanceOwner )
        {
            revert();
        }

        StateEnum = StateType.Accepted;
    }

    // Estados: {makeOffer}, {acceptOffer}, {rejectOffer}, {acceptOffer, rejectOffer}, {makeOffer, acceptOffer}, {makeOffer, rejectOffer}

    // {makeOffer}: state == 0 && state != 1
    // {acceptOffer}: state == 1 && state != 1
    // {rejectOffer}: state == 1 && state != 1
    // {acceptOffer, rejectOffer}: state == 1 && state != 0
    // {makeOffer, acceptOffer}: state == 0 && state == 1 && state != 1
    // {makeOffer, rejectOffer}: state == 0 && state == 1 && state != 1
    // {makeOffer, acceptOffer, rejectOffer}: state == 0 && state == 1
    // {}: state != 0 && state != 1

    //Pres:
    // MakeOffer: offerPrice !=0, state = 0, Instance Owner != msg.sender
    // AcceptOffer: Instance Owner == msg.sender, state = 1
    // Reject offer: state = 1, Instance Owner == msg.sender
    function SimpleMarket(int offerPrice) public {

        // Estoy en {makeOffer}
        // makeOffer_MakeOffer(offerPrice);
         makeOffer_RejectOffer(offerPrice);
        // makeOffer_AcceptOffer(offerPrice);

        // Estoy en {acceptOffer, rejectOffer}
        // acceptOffer_AcceptOffer();
        // acceptOffer_MakeOffer(offerPrice);
        // acceptOffer_RejectOffer();
        // rejectOffer_MakeOffer(offerPrice);
        // rejectOffer_RejectOffer();
        // rejectOffer_AcceptOffer();
    }

    function toBinaryString(uint8 n) public pure returns (string) {
        // revert on out of range input
        require(n < 32);

        bytes memory output = new bytes(5);

        for (uint8 i = 0; i < 5; i++) {
            output[4 - i] = (n % 2 == 1) ? "1 ": "0";
            n /= 2;
        }

        return string(output);
    }

    function GetCombination(int[] memory list) private {
        // int count = 2 ** list.Count;
        // for (int i = 1; i <= count - 1; i++)
        // {
        //     string str = Convert.ToString(i, 2).PadLeft(list.Count, '0');
        //     string str2 = Strings.toString(i)
        //     for (int j = 0; j < str.Length; j++)
        //     {
        //         if (str[j] == '1')
        //         {
        //             //Console.Write(list[j]);
        //         }
        //     }
        //     //Console.WriteLine();
        // }

        uint count = 2 ** list.length;
        // for (int i = 1; i <= count - 1; i++) {
        //     toBinaryString(i);
        // }

        // hacer combinaciones de metodos
        // si esta la combinación agrego la pre condición
        // sino la agrego negada
        // Y asi tengo todos los estados
    }

    function rejectOffer_MakeOffer(int offerPrice) private {
        // Estoy en el estado RejectOffer y quiero ver si puedo hacer MakeOffer
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        require(predA && prA);
        
        Reject();
        bool rb = StateEnum == StateType.ItemAvailable && offerPrice != 0;
        assert(!rb);
        // Falla entonces, existe transición
    }

    function rejectOffer_RejectOffer() private {
        // Estoy en el estado RejectOffer y quiero ver si puedo hacer RejectOffer.
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        //require(predA && prA);

        Reject();
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // No Falla entonces, no existe transición
    }

    function rejectOffer_AcceptOffer() private {
        // Estoy en el estado RejectOffer y quiero ver si puedo hacer AcceptOffer.
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        require(predA && prA);

        Reject();
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // No Falla entonces, no existe transición
    }

    function acceptOffer_AcceptOffer() private {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer AcceptOffer.
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        require(predA && prA);
        
        AcceptOffer();
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // No Falla entonces, no existe transición
    }

    function acceptOffer_MakeOffer(int offerPrice) private {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer MakeOffer.
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        require(predA && prA);

        AcceptOffer();
        bool rb = offerPrice != 0 && StateEnum == StateType.ItemAvailable;
        assert(!rb);
        // No Falla entonces, no existe transición
    }

    function acceptOffer_RejectOffer() private {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer RejectOffer.
        bool predA = StateEnum == StateType.OfferPlaced;
        bool prA = msg.sender == InstanceOwner;
        require(predA && prA);

        AcceptOffer();
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // NoFalla entonces, no existe transición
    } 

    function makeOffer_MakeOffer(int offerPrice) private returns (bool) {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer MakeOffer.
        bool predA = StateEnum == StateType.ItemAvailable;
        bool prA = offerPrice != 0 && msg.sender != InstanceOwner;
        require(predA && prA);

        MakeOffer(offerPrice);
        bool rb = offerPrice != 0 && StateEnum == StateType.ItemAvailable;
        assert(!rb);
        // No Falla entonces, no existe transición
    }

    function makeOffer_RejectOffer(int offerPrice) private returns (bool) {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer rejectOffer.
        bool predA = StateEnum == StateType.ItemAvailable;
        bool prA = offerPrice != 0 && msg.sender != InstanceOwner;
        require(predA && prA);

        MakeOffer(offerPrice);
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // Falla entonces existe transición
    }

    function makeOffer_AcceptOffer(int offerPrice) private {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer acceptOffer.
        bool predA = StateEnum == StateType.ItemAvailable;
        bool prA = offerPrice != 0 && msg.sender != InstanceOwner;
        require(predA && prA);
        
        MakeOffer(offerPrice);
        bool rb = StateEnum == StateType.OfferPlaced;
        assert(!rb);
        // Falla entonces existe transición
    }  
}