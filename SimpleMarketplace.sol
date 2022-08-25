pragma solidity >=0.4.25 <0.9.0;
pragma experimental ABIEncoderV2;
//import "hardhat/console.sol";

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
    int256[][] result;

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
    // {acceptOffer}: state == 1 && state != 1 &&  state != 0
    // {rejectOffer}: state == 1 && state != 1  && state != 0
    // {acceptOffer, rejectOffer}: state == 1 && state != 0
    // {makeOffer, acceptOffer}: state == 0 && state == 1 && state != 1
    // {makeOffer, rejectOffer}: state == 0 && state == 1 && state != 1
    // {makeOffer, acceptOffer, rejectOffer}: state == 0 && state == 1
    // {}: state != 0 && state != 1

    //Pres:
    // MakeOffer: offerPrice !=0, state = 0, Instance Owner != msg.sender
    // AcceptOffer: Instance Owner == msg.sender, state = 1
    // Reject offer: state = 1, Instance Owner == msg.sender
    event algo(int[] result, uint num);
    function SimpleMarket(int offerPrice) external payable {

        
        int256[] memory states = new int256[](3);
        states[0] = 1;
        states[1] = 2;
        states[2] = 3;

        int256[] memory states2 = new int256[](3);
        states2[0] = 1;
        states2[1] = 2;
        states2[2] = 3;

        uint countComnbinations = 2 ** 3;

        result = new int256[][](countComnbinations);

        combinations(states, states2, uint(0));
        //console.log("Termine");


        for (uint i = 0; i < result.length; i++) {
            //console.log("Resultado", i);
            for (uint y = 0; y < result[i].length; y++) {
                //uint z = uint(result[i][y]);
                //console.log(z);
            }
            //console.log("pre", checkPreconditions(result[i]));
            require(checkPreconditions(result[i]));
            assert(checkPreconditions(result[i]));
           
        }

        // Estoy en {makeOffer}
        // makeOffer_MakeOffer(offerPrice);
        // makeOffer_RejectOffer(offerPrice);
        // makeOffer_AcceptOffer(offerPrice);

        // Estoy en {acceptOffer, rejectOffer}
        // acceptOffer_AcceptOffer();
        // acceptOffer_MakeOffer(offerPrice);
        // acceptOffer_RejectOffer();
        // rejectOffer_MakeOffer(offerPrice);
        // rejectOffer_RejectOffer();
        // rejectOffer_AcceptOffer();
    }

    // function GetCombination(int[] memory list) public view returns (int[][] memory) {
    //     uint countComnbinations = 2 ** list.length;

    //     int[][] memory result = new int[][](countComnbinations);

    //     uint solutionsCounter = 0;

    //     uint count = list.length;

    //     for (uint i = 0; i <= count - 1; i++) {
    //         int[] memory partialResult = new int[](count);
    //         partialResult[i] = list[i];
    //         //console.log("i", i);
    //         for (uint k = i; k <= count - 1; k++) {
    //             //console.log("k", k);
    //             partialResult[k] = list[k];
    //             result[solutionsCounter] = partialResult;
    //             solutionsCounter ++;  
    //         }
    //     }
    //     return result;

    //     // hacer combinaciones de metodos
    //     // si esta la combinación agrego la pre condición
    //     // sino la agrego negada
    //     // Y asi tengo todos los estados
    // }

    function combinations(int256[] memory list , int256[] memory left, uint256 number) private returns (int[][] memory) {

        //console.log("Length first", left.length);
        //console.log("Number", number);
        if (left.length == 0) {
            return result;
        }
        uint256 count = number;       
        for (uint i = 0; i < 2 ** number; i++) {
            int[] memory partialResult = new int[](list.length);
            if (i != 2 ** number - 1) {
                for (uint y = 0; y < number; y++) {
                    partialResult[y] = result[i][y];
                }
            }
            partialResult[number] = left[0];
            result[2 ** number - 1 + i] = partialResult; 
        }
        int[] memory leftNew = new int[](left.length - 1);
        
        for (uint z = 1; z < left.length; z++) {
            leftNew[z-1] = left[z];
        }
        //console.log("Length", leftNew.length);
        uint256 numberNew = number + 1;
        //console.log("ACA", numberNew);
        combinations(list, leftNew, uint(numberNew));
    } 

    function checkPreconditions(int[] memory combination) public view returns (bool) {
        bool result = true;
        if (ifPresent(combination, 1)) {
            result = result && StateEnum == StateType.ItemAvailable;
        } else {
            result = result && StateEnum != StateType.ItemAvailable;
        }

        if (ifPresent(combination, 2)) {
            result = result && StateEnum == StateType.OfferPlaced;
        } else {
            result = result && StateEnum != StateType.OfferPlaced;
        }

        if (ifPresent(combination, 1)) {
            result = result && StateEnum == StateType.OfferPlaced;
        } else {
            result = result && StateEnum != StateType.OfferPlaced;
        }
        return result;
    }

    function ifPresent(int[] memory combination, int num) public view returns(bool) {
        uint arrayLength = combination.length;
        for (uint i=0; i<arrayLength; i++) {
            if(combination[i] == num){
                return true;
            }
        }
        return false;
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