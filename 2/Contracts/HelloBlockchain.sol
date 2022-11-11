pragma solidity >=0.4.25 <0.9.0;

contract HelloBlockchain {
     //Set of States
    //enum StateType { Request, Respond}

    //List of properties
    int public State;
    address public  Requestor;
    address public  Responder;

    string public RequestMessage;
    string public ResponseMessage;

    // constructor function
    constructor(string memory message) public
    {
        Requestor = msg.sender;
        RequestMessage = message;
        State = 0;
    }

    // call this function to send a request
    function SendRequest(string memory requestMessage) public
    {
        if (Requestor != msg.sender && State != 1)
        {
            revert();
        }

        RequestMessage = requestMessage;
        State = 0;
    }

    // call this function to send a response
    function SendResponse(string memory responseMessage) public
    {
        if (State != 0) {
            revert();
        }
        Responder = msg.sender;

        // call ContractUpdated() to record this action
        ResponseMessage = responseMessage;
        State = 1;
    }
}