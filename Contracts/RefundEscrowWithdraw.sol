

// File: installed_contracts/openzeppelin-solidity/contracts/payment/escrow/RefundEscrow.sol

pragma solidity ^0.5.0;


/**
 * @title RefundEscrow
 * @dev Escrow that holds funds for a beneficiary, deposited from multiple
 * parties.
 * @dev Intended usage: See Escrow.sol. Same usage guidelines apply here.
 * @dev The primary account (that is, the contract that instantiates this
 * contract) may deposit, close the deposit period, and allow for either
 * withdrawal by the beneficiary, or refunds to the depositors. All interactions
 * with RefundEscrow will be made through the primary contract. See the
 * RefundableCrowdsale contract for an example of RefundEscrow’s use.
 */
contract RefundEscrow {
    enum State { Active, Refunding, Closed }

    event RefundsClosed();
    event RefundsEnabled();

    State private _state;
    address payable private _beneficiary;
    bool hasA = false;
    address private _primary;
    address public A;

    /**
     * @dev Constructor.
     * @param beneficiary The beneficiary of the deposits.
     */
    constructor (address payable beneficiary, address _A) public {
        require(beneficiary != address(0));
        _beneficiary = beneficiary;
        _state = State.Active;
        A = _A;
        _primary = msg.sender;
    }

    /**
     * @return the current state of the escrow.
     */
    function state() public view returns (State) {
        return _state;
    }

    /**
     * @return the beneficiary of the escrow.
     */
    function beneficiary() public view returns (address) {
        return _beneficiary;
    }

    /**
     * @dev Stores funds that may later be refunded.
     * @param refundee The address funds will be sent to if a refund occurs.
     */
    function deposit(address refundee) public payable {
        require(_state == State.Active);
        depositInternal(refundee);
    }

    /**
     * @dev Allows for the beneficiary to withdraw their funds, rejecting
     * further deposits.
     */
    function close() public  {
        require(_state == State.Active);
        require(msg.sender == _primary);
        _state = State.Closed;
        //emit RefundsClosed();
    }

    /**
     * @dev Allows for refunds to take place, rejecting further deposits.
     */
    function enableRefunds() public {
        require(_state == State.Active);
        require(msg.sender == _primary);
        _state = State.Refunding;
        //emit RefundsEnabled();
    }

    /**
     * @dev Withdraws the beneficiary's funds.
     */
    function beneficiaryWithdraw() public {
        require(_state == State.Closed);
        //_beneficiary.transfer(address(this).balance);
    }

    /**
     * @dev Returns whether refundees can withdraw their deposits (be refunded). The overridden function receives a
     * 'payee' argument, but we ignore it here since the condition is global, not per-payee.
     */
    function withdrawalAllowed(address) public view returns (bool) {
        return _state == State.Refunding;
    }

    address[] public depositsArray = new address[](0);
    address[] auxArray;

    event Deposited(address indexed payee, uint256 weiAmount);
    event Withdrawn(address indexed payee, uint256 weiAmount);

    mapping(address => uint256) private _deposits;

    function depositsOf(address payee) public view returns (uint256) {
        return _deposits[payee];
    }

    /**
     * @dev Stores the sent amount as credit to be withdrawn.
     * @param payee The destination address of the funds.
     */
    function depositInternal(address payee) internal {
        uint256 amount = msg.value;
        _deposits[payee] = _deposits[payee] + (amount);
        depositsArray.push(payee);

        if (payee == A) {
            hasA = true;
        }

        //emit Deposited(payee, amount);
    }

    /**
     * @dev Withdraw accumulated balance for a payee.
     * @param payee The address whose funds will be withdrawn and transferred to.
     */
    function withdrawInternal(address payable payee) internal  {
        uint256 payment = _deposits[payee];

        _deposits[payee] = 0;

        //payee.transfer(payment);

        depositsArray = remove(payee, depositsArray);

       // emit Withdrawn(payee, payment);
    }

    function remove(address _valueToFindAndRemove, address[] memory _array) private  returns(address[] memory) {

        auxArray = new address[](0); 
        bool alreadyDeleted = false;

        for (uint i = 0; i < _array.length; i++){
            if(_array[i] != _valueToFindAndRemove || alreadyDeleted) {
                auxArray.push(_array[i]);
            } else {
                alreadyDeleted = true;
            }
        }

        return auxArray;
    }

    // function length() public returns(uint) {
    //     return depositsArray.length; 
    // }


    function withdrawA(address payable payee) public {
        require(withdrawalAllowed(payee));
        require(A == payee && depositsArray.length > 0);
        require(_deposits[payee] > 0);
        withdrawInternal(payee);
        hasA = false;
    }

    function withdrawNoA(address payable payee) public {
        require(withdrawalAllowed(payee));
        require(A != payee && depositsArray.length > 0 && (!hasA || depositsArray.length > 1));
        require(_deposits[payee] > 0);
        withdrawInternal(payee);
    }
}