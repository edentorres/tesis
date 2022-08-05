pragma solidity >=0.4.25 <0.9.0;
import "./HelloBlockchain.sol";
import "./SimpleMarketplace.sol";

contract AssertFalse {
    
    // // Si target es reacheble, no esta en A-
    // function testAMinusRequest(address R, int statusType) public {
    //     if (R == msg.sender && statusType == 1) {
    //         assert (false);
    //     }
    // }

    // function testAMinusRespond(address R, int statusType) public {
    //     if (statusType == 1) {
    //         assert (false);
    //     }
    // }

    // // Si target es reacheble, no esta en A+
    // function testAPlusRequest(address R, int statusType) public {
    //     if (R != msg.sender || statusType != 0) {
    //         assert (false);
    //     }
    // }

    // function testAPlusRespond(address R, int statusType) public {
    //     if (statusType != 1) {
    //         assert (false);
    //     }
    // }

    // Tengo el estado vacio, request, respond, request respond
    // StatusType = 0 = Request, StatusType = 1 = Respond
    // Pred request = R == msg.sender || statusType == 1
    // Pred respond = statusType == 0
    HelloBlockchain hb;
    constructor() public {
        
    }

    // 0x001d3F1ef827552Ae1114027BD3ECF1f086bA0F9

    // Estados: {makeOffer}, {acceptOffer}, {rejectOffer}, {acceptOffer, rejectOffer}, {makeOffer, acceptOffer}, {makeOffer, rejectOffer}
    // StateType: 
    // ItemAvailable = 0
    // OfferPlaced = 1
    // Accepted = 2

    //Pres:
    // MakeOffer: offerPrice !=0, state = 0, Instance Owner != msg.sender
    // AcceptOffer: Instance Owner == msg.sender, state = 1
    // Reject offer: state = 1, Instance Owner == msg.sender
    function SimpleMarket(int offerPrice, address sender, address offer) public {

        // Si estoy en el estado Make Offer, y me doy cuenta que puedo acer accept y reject. 
        // Me voy a dos estados o a la combinación de los dos?

        // makeOffer_MakeOffer(offerPrice, sender, offer);
        // makeOffer_RejectOffer(offerPrice, sender, offer);
        // makeOffer_AcceptOffer(offerPrice, sender, offer);

        // acceptOffer_AcceptOffer(sender, offer);
        // acceptOffer_MakeOffer(offerPrice, sender, offer);
        // acceptOffer_RejectOffer(sender, offer);

        // rejectOffer_MakeOffer(offerPrice, sender, offer);
        // rejectOffer_RejectOffer(sender, offer);
        // rejectOffer_AcceptOffer(sender, offer);
    }

    function rejectOffer_MakeOffer(int offerPrice, address sender, address offer) private returns (bool) {
        // Estoy en el estado RejectOffer y quiero ver si puedo hacer MakeOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.Reject(sender);
        bool rb = sm.State() == 0 && offerPrice != 0;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // Falla entonces, existe transición
        }
        return false;
    }


    function rejectOffer_RejectOffer(address sender, address offer) private returns (bool) {
        // // Estoy en el estado RejectOffer y quiero ver si puedo hacer RejectOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.Reject(sender);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // No Falla entonces, no existe transición
        }
        return false;
    }

    function rejectOffer_AcceptOffer(address sender, address offer) private returns (bool) {
        // Estoy en el estado RejectOffer y quiero ver si puedo hacer AcceptOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.Reject(sender);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // No Falla entonces, no existe transición
        }
        return false;
    }

    function acceptOffer_AcceptOffer(address sender, address offer) private returns (bool) {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer AcceptOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.AcceptOffer(sender);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // No Falla entonces, no existe transición
        }
        return false;
    }

    function acceptOffer_MakeOffer(int offerPrice, address sender, address offer) private returns (bool) {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer MakeOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.AcceptOffer(sender);
        bool rb = offerPrice != 0 && sm.State() == 0;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // No Falla entonces, no existe transición
        }
        return false;
    }

    function acceptOffer_RejectOffer(address sender, address offer) private returns (bool) {
        // Estoy en el estado AcceptOffer y quiero ver si puedo hacer RejectOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        sm.MakeOffer(1, offer);
        bool predA = sm.State() == 1;
        bool prA = sender == sm.InstanceOwner();
        sm.AcceptOffer(sender);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // NoFalla entonces, no existe transición
        }
        return false;
    } 

    function makeOffer_MakeOffer(int offerPrice, address sender, address offer) private returns (bool) {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer MakeOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        bool predA = sm.State() == 0;
        bool prA = offerPrice != 0 && offer != sm.InstanceOwner();
        sm.MakeOffer(offerPrice, offer);
        bool rb = offerPrice != 0 && sm.State() == 0;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // No Falla entonces, no existe transición
        }
        return false;
    }

    function makeOffer_RejectOffer(int offerPrice, address sender, address offer) private returns (bool) {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer rejectOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        bool predA = sm.State() == 0;
        bool prA = offerPrice != 0 && offer != sm.InstanceOwner();// && sm.InstanceOwner() == address(this);
        sm.MakeOffer(offerPrice, offer);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;  
            // Falla entonces existe transición
        }
        return false;
    }

    function makeOffer_AcceptOffer(int offerPrice, address sender, address offer) private returns (bool) {
        // Estoy en el estado MakeOffer y quiero ver si puedo hacer acceptOffer.
        SimpleMarketplace sm = new SimpleMarketplace("h", 3, sender);
        bool predA = sm.State() == 0;
        bool prA = offerPrice != 0 && offer != sm.InstanceOwner();// && sm.InstanceOwner() == address(this);
        sm.MakeOffer(offerPrice, offer);
        bool rb = sm.State() == 1;
        if (predA && prA && rb) {
            assert(false);
            return true;
            // Falla entonces existe transición
        }
        return false;
    }   

    function test() private {
        // // Estoy en el estado response y quiero ver si puedo hacer un request despues
        // hb = new HelloBlockchain("");
        // bool predA = hb.State() == 0;
        // bool rA = hb.State() == 0;
        // hb.SendResponse("hola");
        // bool rb = hb.State() == 1;
        // if (predA && rA && rb) {
        //     assert(false);
        //     // Falla entonces existe transición
        // }

        // // Estoy en el estado request y quiero ver si quiero hacer un respond despues
        // hb = new HelloBlockchain("");
        // hb.SendResponse("hola");
        // bool predA = hb.State() == 1;// && hb.Requestor() == address(this);
        // bool rA = hb.State() == 1;// && hb.Requestor() == address(this);
        // hb.SendRequest("hola");
        // bool rb = hb.State() == 0;
        // if (predA && rA && rb) {
        //     assert(false);
        //     // Falla entonces existe transición
        // }
        
        // // Estoy en el estado response y quiero ver si puedo hacer respond despues
        // hb = new HelloBlockchain("");
        // bool predA = hb.State() == 0;
        // bool rA = hb.State() == 0;
        // hb.SendResponse("hola");
        // bool rb = hb.State() == 0;
        // if (predA && rA && rb) {
        //     assert(false);
        //     // No Falla entonces, no existe transición
        // }

        // // Estoy en el estado request y quiero ver si puedo hacer request despues
        // hb = new HelloBlockchain("");
        // hb.SendResponse("hola");
        // bool predA = hb.State() == 1;// && hb.Requestor() == address(this);
        // bool rA = hb.State() == 1;// && hb.Requestor() == address(this);
        // hb.SendRequest("hola");
        // bool rb = hb.State() == 1;
        // if (predA && rA && rb) {
        //     assert(false);
        //     // No Falla entonces, no existe transición
        // }
    }        

}
