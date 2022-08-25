type Ref;

type ContractName;

const unique null: Ref;

const unique Context: ContractName;

const unique SafeMath: ContractName;

const unique Secondary: ContractName;

const unique Escrow: ContractName;

const unique ConditionalEscrow: ContractName;

const unique RefundEscrow: ContractName;

const unique IERC20: ContractName;

const unique SafeERC20: ContractName;

const unique ReentrancyGuard: ContractName;

const unique Crowdsale: ContractName;

const unique TimedCrowdsale: ContractName;

const unique FinalizableCrowdsale: ContractName;

const unique RefundableCrowdsale: ContractName;

function ConstantToRef(x: int) : Ref;

function BoogieRefToInt(x: Ref) : int;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var M_Ref_int: [Ref][Ref]int;

var Length: [Ref]int;

var now: int;

procedure FreshRefGenerator() returns (newRef: Ref);
  modifies Alloc;



implementation {:ForceInline} FreshRefGenerator() returns (newRef: Ref)
{

  anon0:
    havoc newRef;
    assume Alloc[newRef] <==> false;
    Alloc[newRef] := true;
    assume newRef != null;
    return;
}



procedure HavocAllocMany();



procedure boogie_si_record_sol2Bpl_int(x: int);



procedure boogie_si_record_sol2Bpl_ref(x: Ref);



procedure boogie_si_record_sol2Bpl_bool(x: bool);



axiom (forall __i__0_0: int, __i__0_1: int :: { ConstantToRef(__i__0_0), ConstantToRef(__i__0_1) } __i__0_0 == __i__0_1 || ConstantToRef(__i__0_0) != ConstantToRef(__i__0_1));

axiom (forall __i__0_0: int, __i__0_1: int :: { keccak256(__i__0_0), keccak256(__i__0_1) } __i__0_0 == __i__0_1 || keccak256(__i__0_0) != keccak256(__i__0_1));

axiom (forall __i__0_0: int, __i__0_1: int :: { abiEncodePacked1(__i__0_0), abiEncodePacked1(__i__0_1) } __i__0_0 == __i__0_1 || abiEncodePacked1(__i__0_0) != abiEncodePacked1(__i__0_1));

axiom (forall __i__0_0: [Ref]int :: (exists __i__0_1: Ref :: __i__0_0[__i__0_1] != 0) || _SumMapping_VeriSol(__i__0_0) == 0);

axiom (forall __i__0_0: [Ref]int, __i__0_1: Ref, __i__0_2: int :: _SumMapping_VeriSol(__i__0_0[__i__0_1 := __i__0_2]) == _SumMapping_VeriSol(__i__0_0) - __i__0_0[__i__0_1] + __i__0_2);

axiom (forall __i__0_0: int, __i__0_1: int, __i__1_0: int, __i__1_1: int :: { abiEncodePacked2(__i__0_0, __i__1_0), abiEncodePacked2(__i__0_1, __i__1_1) } (__i__0_0 == __i__0_1 && __i__1_0 == __i__1_1) || abiEncodePacked2(__i__0_0, __i__1_0) != abiEncodePacked2(__i__0_1, __i__1_1));

axiom (forall __i__0_0: Ref, __i__0_1: Ref :: { abiEncodePacked1R(__i__0_0), abiEncodePacked1R(__i__0_1) } __i__0_0 == __i__0_1 || abiEncodePacked1R(__i__0_0) != abiEncodePacked1R(__i__0_1));

axiom (forall __i__0_0: Ref, __i__0_1: Ref, __i__1_0: int, __i__1_1: int :: { abiEncodePacked2R(__i__0_0, __i__1_0), abiEncodePacked2R(__i__0_1, __i__1_1) } (__i__0_0 == __i__0_1 && __i__1_0 == __i__1_1) || abiEncodePacked2R(__i__0_0, __i__1_0) != abiEncodePacked2R(__i__0_1, __i__1_1));

procedure Context_Context_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} Context_Context_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    return;
}



procedure {:constructor} {:public} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} Context_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 5} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 6} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 7} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 8} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 10} Context_Context_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure _msgSender_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



implementation {:ForceInline} _msgSender_Context(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{

  anon0:
    call {:si_unique_call 11} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 12} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 13} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 14} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 15} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_3;

  corral_source_split_3:
    goto corral_source_split_4;

  corral_source_split_4:
    __ret_0_ := msgsender_MSG;
    return;
}



procedure SafeMath_SafeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int);



implementation {:ForceInline} add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s40: int, b_s40: int) returns (__ret_0_: int)
{
  var c_s40: int;

  anon0:
    call {:si_unique_call 16} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 17} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 18} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 19} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 20} {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s40);
    call {:si_unique_call 21} {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s40);
    call {:si_unique_call 22} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_6;

  corral_source_split_6:
    goto corral_source_split_7;

  corral_source_split_7:
    assume c_s40 >= 0;
    assume a_s40 >= 0;
    assume b_s40 >= 0;
    assume a_s40 + b_s40 >= 0;
    c_s40 := a_s40 + b_s40;
    call {:si_unique_call 23} {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s40);
    goto corral_source_split_8;

  corral_source_split_8:
    assume c_s40 >= 0;
    assume a_s40 >= 0;
    assume c_s40 >= a_s40;
    goto corral_source_split_9;

  corral_source_split_9:
    assume c_s40 >= 0;
    __ret_0_ := c_s40;
    return;
}



procedure sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s65: int, b_s65: int) returns (__ret_0_: int);



var _primary_Secondary: [Ref]Ref;

procedure Secondary_Secondary_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary;



implementation {:ForceInline} Secondary_Secondary_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s91: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _primary_Secondary[this] := null;
    call {:si_unique_call 24} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 25} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 26} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 27} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 28} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_11;

  corral_source_split_11:
    goto corral_source_split_12;

  corral_source_split_12:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == RefundEscrow;
    call {:si_unique_call 29} msgSender_s91 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon7_Else:
    assume {:partition} DType[this] != RefundEscrow;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == ConditionalEscrow;
    call {:si_unique_call 30} msgSender_s91 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon8_Else:
    assume {:partition} DType[this] != ConditionalEscrow;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[this] == Escrow;
    call {:si_unique_call 31} msgSender_s91 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon9_Else:
    assume {:partition} DType[this] != Escrow;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} DType[this] == Secondary;
    call {:si_unique_call 32} msgSender_s91 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon10_Else:
    assume {:partition} DType[this] != Secondary;
    assume false;
    goto anon6;

  anon6:
    msgSender_s91 := msgSender_s91;
    call {:si_unique_call 33} {:cexpr "msgSender"} boogie_si_record_sol2Bpl_ref(msgSender_s91);
    goto corral_source_split_14;

  corral_source_split_14:
    _primary_Secondary[this] := msgSender_s91;
    call {:si_unique_call 34} {:cexpr "_primary"} boogie_si_record_sol2Bpl_ref(_primary_Secondary[this]);
    goto corral_source_split_15;

  corral_source_split_15:
    assert {:EventEmitted "PrimaryTransferred_Secondary"} true;
    return;
}



procedure {:constructor} {:public} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary;



implementation {:ForceInline} Secondary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var msgSender_s91: Ref;

  anon0:
    call {:si_unique_call 35} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 36} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 37} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 38} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 39} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 40} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 41} Secondary_Secondary_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} primary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



procedure {:public} transferPrimary_Secondary(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s136: Ref);



procedure Escrow_Escrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, Alloc, _deposits_Escrow;



implementation {:ForceInline} Escrow_Escrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    call {:si_unique_call 42} __var_3 := FreshRefGenerator();
    _deposits_Escrow[this] := __var_3;
    assume (forall __i__0_0: Ref :: M_Ref_int[_deposits_Escrow[this]][__i__0_0] == 0);
    return;
}



procedure Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, Alloc, _deposits_Escrow;



implementation {:ForceInline} Escrow_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_17;

  corral_source_split_17:
    call {:si_unique_call 48} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 49} Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 50} Escrow_Escrow_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



var _deposits_Escrow: [Ref]Ref;

procedure {:public} depositsOf_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s170: Ref) returns (__ret_0_: int);



procedure {:public} deposit_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s199: Ref);



procedure {:public} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref);
  modifies M_Ref_int, _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} withdraw_Escrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s230: Ref)
{
  var payment_s230: int;
  var __var_5: bool;

  anon0:
    call {:si_unique_call 51} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 52} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 53} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 54} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 55} {:cexpr "payee"} boogie_si_record_sol2Bpl_ref(payee_s230);
    call {:si_unique_call 56} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 57} onlyPrimary_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_19;

  corral_source_split_19:
    goto corral_source_split_20;

  corral_source_split_20:
    assume payment_s230 >= 0;
    assume M_Ref_int[_deposits_Escrow[this]][payee_s230] >= 0;
    payment_s230 := M_Ref_int[_deposits_Escrow[this]][payee_s230];
    call {:si_unique_call 58} {:cexpr "payment"} boogie_si_record_sol2Bpl_int(payment_s230);
    goto corral_source_split_21;

  corral_source_split_21:
    assume M_Ref_int[_deposits_Escrow[this]][payee_s230] >= 0;
    M_Ref_int[_deposits_Escrow[this]][payee_s230] := 0;
    call {:si_unique_call 59} {:cexpr "_deposits[payee]"} boogie_si_record_sol2Bpl_int(M_Ref_int[_deposits_Escrow[this]][payee_s230]);
    goto corral_source_split_22;

  corral_source_split_22:
    assume payment_s230 >= 0;
    call {:si_unique_call 60} __var_5 := send(this, payee_s230, payment_s230);
    assume __var_5;
    goto corral_source_split_23;

  corral_source_split_23:
    assert {:EventEmitted "Withdrawn_Escrow"} true;
    return;
}



procedure ConditionalEscrow_ConditionalEscrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} ConditionalEscrow_ConditionalEscrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    return;
}



procedure ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _primary_Secondary, Alloc, _deposits_Escrow;



implementation {:ForceInline} ConditionalEscrow_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 61} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 62} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 63} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 64} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 65} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_25;

  corral_source_split_25:
    call {:si_unique_call 66} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 67} Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 68} Escrow_Escrow(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 69} ConditionalEscrow_ConditionalEscrow_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} withdrawalAllowed_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s240: Ref) returns (__ret_0_: bool);



procedure {:public} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s253: Ref);



implementation {:ForceInline} withdraw_ConditionalEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, payee_s253: Ref)
{
  var __var_6: bool;

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "payee"} boogie_si_record_sol2Bpl_ref(payee_s253);
    call {:si_unique_call 75} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_27;

  corral_source_split_27:
    goto corral_source_split_28;

  corral_source_split_28:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} DType[this] == RefundEscrow;
    call {:si_unique_call 76} __var_6 := withdrawalAllowed_RefundEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s253);
    goto anon4;

  anon5_Else:
    assume {:partition} DType[this] != RefundEscrow;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == ConditionalEscrow;
    call {:si_unique_call 77} __var_6 := withdrawalAllowed_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG, payee_s253);
    goto anon4;

  anon6_Else:
    assume {:partition} DType[this] != ConditionalEscrow;
    assume false;
    goto anon4;

  anon4:
    assume __var_6;
    return;
}



var _state_RefundEscrow: [Ref]int;

var _beneficiary_RefundEscrow: [Ref]Ref;

procedure RefundEscrow_RefundEscrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s296: Ref);
  modifies Balance, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation {:ForceInline} RefundEscrow_RefundEscrow_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s296: Ref)
{
  var __var_7: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _beneficiary_RefundEscrow[this] := null;
    call {:si_unique_call 78} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 79} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 80} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 81} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 82} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s296);
    call {:si_unique_call 83} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    assert false;
    goto corral_source_split_32;

  corral_source_split_32:
    __var_7 := null;
    assume beneficiary_s296 != null;
    goto corral_source_split_33;

  corral_source_split_33:
    _beneficiary_RefundEscrow[this] := beneficiary_s296;
    call {:si_unique_call 84} {:cexpr "_beneficiary"} boogie_si_record_sol2Bpl_ref(_beneficiary_RefundEscrow[this]);
    goto corral_source_split_34;

  corral_source_split_34:
    _state_RefundEscrow[this] := 0;
    return;
}



procedure {:constructor} {:public} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s296: Ref);
  modifies Balance, _primary_Secondary, Alloc, _deposits_Escrow, _beneficiary_RefundEscrow, _state_RefundEscrow;



implementation {:ForceInline} RefundEscrow_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s296: Ref)
{
  var __var_7: Ref;

  anon0:
    call {:si_unique_call 85} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 86} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 87} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 88} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 89} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s296);
    call {:si_unique_call 90} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 91} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 92} Secondary_Secondary(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 93} Escrow_Escrow(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 94} ConditionalEscrow_ConditionalEscrow(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 95} RefundEscrow_RefundEscrow_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, beneficiary_s296);
    return;
}



procedure {:public} state_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} beneficiary_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



procedure {:public} deposit_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s326: Ref);



procedure {:public} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _state_RefundEscrow;



implementation {:ForceInline} close_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 96} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 97} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 98} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 99} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 100} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 101} onlyPrimary_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_36;

  corral_source_split_36:
    goto corral_source_split_37;

  corral_source_split_37:
    assume _state_RefundEscrow[this] == 0;
    goto corral_source_split_38;

  corral_source_split_38:
    _state_RefundEscrow[this] := 2;
    goto corral_source_split_39;

  corral_source_split_39:
    assert {:EventEmitted "RefundsClosed_RefundEscrow"} true;
    return;
}



procedure {:public} enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _state_RefundEscrow;



implementation {:ForceInline} enableRefunds_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 102} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 103} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 104} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 105} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 106} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 107} onlyPrimary_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_41;

  corral_source_split_41:
    goto corral_source_split_42;

  corral_source_split_42:
    assume _state_RefundEscrow[this] == 0;
    goto corral_source_split_43;

  corral_source_split_43:
    _state_RefundEscrow[this] := 1;
    goto corral_source_split_44;

  corral_source_split_44:
    assert {:EventEmitted "RefundsEnabled_RefundEscrow"} true;
    return;
}



procedure {:public} beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} beneficiaryWithdraw_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_8: Ref;
  var __var_9: bool;

  anon0:
    call {:si_unique_call 108} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 109} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 110} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 111} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 112} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_46;

  corral_source_split_46:
    goto corral_source_split_47;

  corral_source_split_47:
    assume _state_RefundEscrow[this] == 2;
    goto corral_source_split_48;

  corral_source_split_48:
    __var_8 := this;
    assume Balance[this] >= 0;
    call {:si_unique_call 113} __var_9 := send(this, _beneficiary_RefundEscrow[this], Balance[this]);
    assume __var_9;
    return;
}



procedure {:public} withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool);



implementation {:ForceInline} withdrawalAllowed_RefundEscrow(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, __param_0_: Ref) returns (__ret_0_: bool)
{

  anon0:
    call {:si_unique_call 114} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 115} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 116} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 117} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 118} {:cexpr ""} boogie_si_record_sol2Bpl_ref(__param_0_);
    call {:si_unique_call 119} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_50;

  corral_source_split_50:
    goto corral_source_split_51;

  corral_source_split_51:
    __ret_0_ := _state_RefundEscrow[this] == 1;
    return;
}



procedure IERC20_IERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure IERC20_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} totalSupply_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



procedure {:public} balanceOf_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, account_s417: Ref) returns (__ret_0_: int);



procedure {:public} transfer_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, recipient_s426: Ref, amount_s426: int) returns (__ret_0_: bool);



procedure {:public} allowance_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, owner_s435: Ref, spender_s435: Ref) returns (__ret_0_: int);



procedure {:public} approve_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, spender_s444: Ref, amount_s444: int) returns (__ret_0_: bool);



procedure {:public} transferFrom_IERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, sender_s455: Ref, recipient_s455: Ref, amount_s455: int) returns (__ret_0_: bool);



procedure SafeERC20_SafeERC20_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure SafeERC20_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure safeTransfer_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s493: Ref, to_s493: Ref, value_s493: int);



implementation {:ForceInline} safeTransfer_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s493: Ref, to_s493: Ref, value_s493: int)
{
  var __var_10: bool;
  var __var_11: int;

  anon0:
    call {:si_unique_call 120} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 121} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 122} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 123} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 124} {:cexpr "token"} boogie_si_record_sol2Bpl_ref(token_s493);
    call {:si_unique_call 125} {:cexpr "to"} boogie_si_record_sol2Bpl_ref(to_s493);
    call {:si_unique_call 126} {:cexpr "value"} boogie_si_record_sol2Bpl_int(value_s493);
    call {:si_unique_call 127} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_53;

  corral_source_split_53:
    goto corral_source_split_54;

  corral_source_split_54:
    assume value_s493 >= 0;
    call {:si_unique_call 128} __var_10 := transfer_IERC20(token_s493, this, __var_11, to_s493, value_s493);
    assume __var_10;
    return;
}



procedure safeTransferFrom_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s514: Ref, from_s514: Ref, to_s514: Ref, value_s514: int);



procedure safeApprove_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s551: Ref, spender_s551: Ref, value_s551: int);



procedure safeIncreaseAllowance_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s582: Ref, spender_s582: Ref, value_s582: int);



procedure safeDecreaseAllowance_SafeERC20(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, token_s613: Ref, spender_s613: Ref, value_s613: int);



var _notEntered_ReentrancyGuard: [Ref]bool;

procedure ReentrancyGuard_ReentrancyGuard_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} ReentrancyGuard_ReentrancyGuard_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _notEntered_ReentrancyGuard[this] := false;
    call {:si_unique_call 129} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 130} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 131} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 132} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 133} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_56;

  corral_source_split_56:
    goto corral_source_split_57;

  corral_source_split_57:
    _notEntered_ReentrancyGuard[this] := true;
    call {:si_unique_call 134} {:cexpr "_notEntered"} boogie_si_record_sol2Bpl_bool(_notEntered_ReentrancyGuard[this]);
    return;
}



procedure {:constructor} {:public} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} ReentrancyGuard_ReentrancyGuard(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 135} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 136} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 137} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 138} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 139} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 140} ReentrancyGuard_ReentrancyGuard_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



var _token_Crowdsale: [Ref]Ref;

var _wallet_Crowdsale: [Ref]Ref;

var _rate_Crowdsale: [Ref]int;

var _weiRaised_Crowdsale: [Ref]int;

procedure Crowdsale_Crowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s716: int, wallet_s716: Ref, token_s716: Ref);



procedure {:constructor} {:public} Crowdsale_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, rate_s716: int, wallet_s716: Ref, token_s716: Ref);



procedure FallbackMethod_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, Balance;



implementation {:ForceInline} FallbackMethod_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_32: Ref;

  anon0:
    call {:si_unique_call 141} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 142} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 143} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 144} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 145} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_59;

  corral_source_split_59:
    goto corral_source_split_60;

  corral_source_split_60:
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 146} __var_32 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon12_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 147} __var_32 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon13_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 148} __var_32 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon14_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 149} __var_32 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon15_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon6;

  anon6:
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 150} buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, __var_32);
    return;

  anon16_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 151} buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, __var_32);
    return;

  anon17_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 152} buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, __var_32);
    return;

  anon18_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 153} buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, __var_32);
    return;

  anon19_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    return;
}



procedure {:public} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



implementation {:ForceInline} token_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{

  anon0:
    call {:si_unique_call 154} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 155} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 156} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 157} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 158} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_62;

  corral_source_split_62:
    goto corral_source_split_63;

  corral_source_split_63:
    __ret_0_ := _token_Crowdsale[this];
    return;
}



procedure {:public} wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref);



implementation {:ForceInline} wallet_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: Ref)
{

  anon0:
    call {:si_unique_call 159} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 160} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 161} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 162} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 163} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_65;

  corral_source_split_65:
    goto corral_source_split_66;

  corral_source_split_66:
    __ret_0_ := _wallet_Crowdsale[this];
    return;
}



procedure {:public} rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} rate_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 164} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 165} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 166} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 167} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 168} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_68;

  corral_source_split_68:
    goto corral_source_split_69;

  corral_source_split_69:
    assume _rate_Crowdsale[this] >= 0;
    __ret_0_ := _rate_Crowdsale[this];
    return;
}



procedure {:public} weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} weiRaised_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 169} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 170} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 171} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 172} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 173} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_71;

  corral_source_split_71:
    goto corral_source_split_72;

  corral_source_split_72:
    assume _weiRaised_Crowdsale[this] >= 0;
    __ret_0_ := _weiRaised_Crowdsale[this];
    return;
}



procedure {:public} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s814: Ref);
  modifies _weiRaised_Crowdsale, _notEntered_ReentrancyGuard, Balance;



implementation {:ForceInline} buyTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s814: Ref)
{
  var weiAmount_s814: int;
  var tokens_s814: int;
  var __var_33: int;

  anon0:
    call {:si_unique_call 174} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 175} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 176} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 177} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 178} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s814);
    call {:si_unique_call 179} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 180} nonReentrant_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_74;

  corral_source_split_74:
    goto corral_source_split_75;

  corral_source_split_75:
    assume weiAmount_s814 >= 0;
    assume msgvalue_MSG >= 0;
    weiAmount_s814 := msgvalue_MSG;
    call {:si_unique_call 181} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s814);
    goto corral_source_split_76;

  corral_source_split_76:
    assume weiAmount_s814 >= 0;
    goto anon37_Then, anon37_Else;

  anon37_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 182} _preValidatePurchase_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon6;

  anon37_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon38_Then, anon38_Else;

  anon38_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 183} _preValidatePurchase_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon6;

  anon38_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon39_Then, anon39_Else;

  anon39_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 184} _preValidatePurchase_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon6;

  anon39_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 185} _preValidatePurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon6;

  anon40_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon6;

  anon6:
    assume tokens_s814 >= 0;
    assume weiAmount_s814 >= 0;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 186} tokens_s814 := _getTokenAmount_Crowdsale(this, msgsender_MSG, msgvalue_MSG, weiAmount_s814);
    goto anon12;

  anon41_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon42_Then, anon42_Else;

  anon42_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 187} tokens_s814 := _getTokenAmount_Crowdsale(this, msgsender_MSG, msgvalue_MSG, weiAmount_s814);
    goto anon12;

  anon42_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon43_Then, anon43_Else;

  anon43_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 188} tokens_s814 := _getTokenAmount_Crowdsale(this, msgsender_MSG, msgvalue_MSG, weiAmount_s814);
    goto anon12;

  anon43_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 189} tokens_s814 := _getTokenAmount_Crowdsale(this, msgsender_MSG, msgvalue_MSG, weiAmount_s814);
    goto anon12;

  anon44_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon12;

  anon12:
    tokens_s814 := tokens_s814;
    call {:si_unique_call 190} {:cexpr "tokens"} boogie_si_record_sol2Bpl_int(tokens_s814);
    goto corral_source_split_78;

  corral_source_split_78:
    assume _weiRaised_Crowdsale[this] >= 0;
    assume _weiRaised_Crowdsale[this] >= 0;
    assume weiAmount_s814 >= 0;
    call {:si_unique_call 191} __var_33 := add_SafeMath(this, this, 0, _weiRaised_Crowdsale[this], weiAmount_s814);
    _weiRaised_Crowdsale[this] := __var_33;
    assume __var_33 >= 0;
    call {:si_unique_call 192} {:cexpr "_weiRaised"} boogie_si_record_sol2Bpl_int(_weiRaised_Crowdsale[this]);
    goto corral_source_split_79;

  corral_source_split_79:
    assume tokens_s814 >= 0;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 193} _processPurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, tokens_s814);
    goto anon18;

  anon45_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 194} _processPurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, tokens_s814);
    goto anon18;

  anon46_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 195} _processPurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, tokens_s814);
    goto anon18;

  anon47_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 196} _processPurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, tokens_s814);
    goto anon18;

  anon48_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon18;

  anon18:
    assert {:EventEmitted "TokensPurchased_Crowdsale"} true;
    goto corral_source_split_81;

  corral_source_split_81:
    assume weiAmount_s814 >= 0;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 197} _updatePurchasingState_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon24;

  anon49_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 198} _updatePurchasingState_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon24;

  anon50_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 199} _updatePurchasingState_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon24;

  anon51_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 200} _updatePurchasingState_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon24;

  anon52_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon24;

  anon24:
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 201} _forwardFunds_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon30;

  anon53_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 202} _forwardFunds_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon30;

  anon54_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 203} _forwardFunds_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon30;

  anon55_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 204} _forwardFunds_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon30;

  anon56_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon30;

  anon30:
    assume weiAmount_s814 >= 0;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 205} _postValidatePurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon36;

  anon57_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 206} _postValidatePurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon36;

  anon58_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 207} _postValidatePurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon36;

  anon59_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 208} _postValidatePurchase_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814, weiAmount_s814);
    goto anon36;

  anon60_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    goto anon36;

  anon36:
    call {:si_unique_call 209} nonReentrant_post(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure _preValidatePurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s840: Ref, weiAmount_s840: int);



implementation {:ForceInline} _preValidatePurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s840: Ref, weiAmount_s840: int)
{
  var __var_34: Ref;

  anon0:
    call {:si_unique_call 210} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 211} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 212} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 213} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 214} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s840);
    call {:si_unique_call 215} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s840);
    call {:si_unique_call 216} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_83;

  corral_source_split_83:
    goto corral_source_split_84;

  corral_source_split_84:
    __var_34 := null;
    assume beneficiary_s840 != null;
    goto corral_source_split_85;

  corral_source_split_85:
    assume weiAmount_s840 >= 0;
    assume weiAmount_s840 != 0;
    goto corral_source_split_86;

  corral_source_split_86:
    return;
}



procedure _postValidatePurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s848: Ref, weiAmount_s848: int);



implementation {:ForceInline} _postValidatePurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s848: Ref, weiAmount_s848: int)
{

  anon0:
    call {:si_unique_call 217} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 218} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 219} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 220} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 221} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s848);
    call {:si_unique_call 222} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s848);
    call {:si_unique_call 223} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_88;

  corral_source_split_88:
    return;
}



procedure _deliverTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s864: Ref, tokenAmount_s864: int);



implementation {:ForceInline} _deliverTokens_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s864: Ref, tokenAmount_s864: int)
{

  anon0:
    call {:si_unique_call 224} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 225} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 226} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 227} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 228} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s864);
    call {:si_unique_call 229} {:cexpr "tokenAmount"} boogie_si_record_sol2Bpl_int(tokenAmount_s864);
    call {:si_unique_call 230} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_90;

  corral_source_split_90:
    goto corral_source_split_91;

  corral_source_split_91:
    assume tokenAmount_s864 >= 0;
    call {:si_unique_call 231} safeTransfer_SafeERC20(this, this, msgvalue_MSG, _token_Crowdsale[this], beneficiary_s864, tokenAmount_s864);
    return;
}



procedure _processPurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, tokenAmount_s877: int);



implementation {:ForceInline} _processPurchase_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s877: Ref, tokenAmount_s877: int)
{

  anon0:
    call {:si_unique_call 232} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 233} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 234} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 235} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 236} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s877);
    call {:si_unique_call 237} {:cexpr "tokenAmount"} boogie_si_record_sol2Bpl_int(tokenAmount_s877);
    call {:si_unique_call 238} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_93;

  corral_source_split_93:
    goto corral_source_split_94;

  corral_source_split_94:
    assume tokenAmount_s877 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 239} _deliverTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s877, tokenAmount_s877);
    return;

  anon6_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 240} _deliverTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s877, tokenAmount_s877);
    return;

  anon7_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 241} _deliverTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s877, tokenAmount_s877);
    return;

  anon8_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[this] == Crowdsale;
    call {:si_unique_call 242} _deliverTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s877, tokenAmount_s877);
    return;

  anon9_Else:
    assume {:partition} DType[this] != Crowdsale;
    assume false;
    return;
}



procedure _updatePurchasingState_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int);



implementation {:ForceInline} _updatePurchasingState_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s885: Ref, weiAmount_s885: int)
{

  anon0:
    call {:si_unique_call 243} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 244} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 245} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 246} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 247} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s885);
    call {:si_unique_call 248} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s885);
    call {:si_unique_call 249} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_96;

  corral_source_split_96:
    return;
}



procedure _getTokenAmount_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s895: int) returns (__ret_0_: int);



implementation {:ForceInline} _getTokenAmount_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, weiAmount_s895: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 250} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 251} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 252} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 253} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 254} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s895);
    call {:si_unique_call 255} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_98;

  corral_source_split_98:
    goto corral_source_split_99;

  corral_source_split_99:
    assume weiAmount_s895 >= 0;
    __ret_0_ := weiAmount_s895;
    return;
}



procedure _forwardFunds_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} _forwardFunds_Crowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_35: bool;

  anon0:
    call {:si_unique_call 256} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 257} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 258} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 259} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 260} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_101;

  corral_source_split_101:
    goto corral_source_split_102;

  corral_source_split_102:
    assume msgvalue_MSG >= 0;
    call {:si_unique_call 261} __var_35 := send(this, _wallet_Crowdsale[this], msgvalue_MSG);
    assume __var_35;
    return;
}



var _openingTime_TimedCrowdsale: [Ref]int;

var _closingTime_TimedCrowdsale: [Ref]int;

procedure TimedCrowdsale_TimedCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s963: int, closingTime_s963: int);



procedure {:constructor} {:public} TimedCrowdsale_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, openingTime_s963: int, closingTime_s963: int);



procedure {:public} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} openingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 262} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 263} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 264} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 265} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 266} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_104;

  corral_source_split_104:
    goto corral_source_split_105;

  corral_source_split_105:
    assume _openingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _openingTime_TimedCrowdsale[this];
    return;
}



procedure {:public} closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} closingTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 267} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 268} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 269} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 270} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 271} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_107;

  corral_source_split_107:
    goto corral_source_split_108;

  corral_source_split_108:
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := _closingTime_TimedCrowdsale[this];
    return;
}



procedure {:public} isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



implementation {:ForceInline} isOpen_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{

  anon0:
    call {:si_unique_call 272} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 273} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 274} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 275} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 276} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_110;

  corral_source_split_110:
    goto corral_source_split_111;

  corral_source_split_111:
    assume now >= 0;
    assume _openingTime_TimedCrowdsale[this] >= 0;
    assume now >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now >= _openingTime_TimedCrowdsale[this] && now <= _closingTime_TimedCrowdsale[this];
    return;
}



procedure {:public} hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



implementation {:ForceInline} hasClosed_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{

  anon0:
    call {:si_unique_call 277} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 278} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 279} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 280} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 281} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_113;

  corral_source_split_113:
    goto corral_source_split_114;

  corral_source_split_114:
    assume now >= 0;
    assume _closingTime_TimedCrowdsale[this] >= 0;
    __ret_0_ := now > _closingTime_TimedCrowdsale[this];
    return;
}



procedure _preValidatePurchase_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1016: Ref, weiAmount_s1016: int);



implementation {:ForceInline} _preValidatePurchase_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, beneficiary_s1016: Ref, weiAmount_s1016: int)
{

  anon0:
    call {:si_unique_call 282} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 283} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 284} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 285} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 286} {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_s1016);
    call {:si_unique_call 287} {:cexpr "weiAmount"} boogie_si_record_sol2Bpl_int(weiAmount_s1016);
    call {:si_unique_call 288} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 289} onlyWhileOpen_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_116;

  corral_source_split_116:
    return;
}



procedure _extendTime_TimedCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newClosingTime_s1045: int);



var _finalized_FinalizableCrowdsale: [Ref]bool;

procedure FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _finalized_FinalizableCrowdsale;



implementation {:ForceInline} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _finalized_FinalizableCrowdsale[this] := false;
    call {:si_unique_call 290} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 291} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 292} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 293} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 294} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_118;

  corral_source_split_118:
    goto corral_source_split_119;

  corral_source_split_119:
    _finalized_FinalizableCrowdsale[this] := false;
    call {:si_unique_call 295} {:cexpr "_finalized"} boogie_si_record_sol2Bpl_bool(_finalized_FinalizableCrowdsale[this]);
    return;
}



procedure {:constructor} {:public} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale;



implementation {:ForceInline} FinalizableCrowdsale_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 296} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 297} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 298} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 299} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 300} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 301} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 302} ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 303} FinalizableCrowdsale_FinalizableCrowdsale_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



implementation {:ForceInline} finalized_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{

  anon0:
    call {:si_unique_call 304} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 305} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 306} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 307} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 308} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_121;

  corral_source_split_121:
    goto corral_source_split_122;

  corral_source_split_122:
    __ret_0_ := _finalized_FinalizableCrowdsale[this];
    return;
}



procedure {:public} finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _finalized_FinalizableCrowdsale, _state_RefundEscrow, _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} finalize_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_38: bool;

  anon0:
    call {:si_unique_call 309} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 310} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 311} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 312} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 313} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_124;

  corral_source_split_124:
    goto corral_source_split_125;

  corral_source_split_125:
    assume !_finalized_FinalizableCrowdsale[this];
    goto corral_source_split_126;

  corral_source_split_126:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 314} __var_38 := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon4;

  anon9_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 315} __var_38 := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon4;

  anon10_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    assume false;
    goto anon4;

  anon4:
    assume __var_38;
    goto corral_source_split_128;

  corral_source_split_128:
    _finalized_FinalizableCrowdsale[this] := true;
    call {:si_unique_call 316} {:cexpr "_finalized"} boogie_si_record_sol2Bpl_bool(_finalized_FinalizableCrowdsale[this]);
    goto corral_source_split_129;

  corral_source_split_129:
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 317} _finalization_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon8;

  anon11_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 318} _finalization_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon8;

  anon12_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    assume false;
    goto anon8;

  anon8:
    assert {:EventEmitted "CrowdsaleFinalized_FinalizableCrowdsale"} true;
    return;
}



procedure _finalization_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} _finalization_FinalizableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 319} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 320} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 321} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 322} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 323} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_131;

  corral_source_split_131:
    return;
}



var _goal_RefundableCrowdsale: [Ref]int;

var _escrow_RefundableCrowdsale: [Ref]Ref;

procedure RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1138: int);
  modifies Balance, _goal_RefundableCrowdsale, Alloc, _primary_Secondary, _deposits_Escrow, _beneficiary_RefundEscrow, _state_RefundEscrow, _escrow_RefundableCrowdsale;



implementation {:ForceInline} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1138: int)
{
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    _goal_RefundableCrowdsale[this] := 0;
    call {:si_unique_call 324} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 325} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 326} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 327} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 328} {:cexpr "goal"} boogie_si_record_sol2Bpl_int(goal_s1138);
    call {:si_unique_call 329} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_133;

  corral_source_split_133:
    goto corral_source_split_134;

  corral_source_split_134:
    assume goal_s1138 >= 0;
    assume goal_s1138 > 0;
    goto corral_source_split_135;

  corral_source_split_135:
    call {:si_unique_call 330} __var_40 := FreshRefGenerator();
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 331} __var_41 := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon3;

  anon4_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    assume false;
    goto anon3;

  anon3:
    assume DType[__var_40] == RefundEscrow;
    call {:si_unique_call 332} RefundEscrow_RefundEscrow(__var_40, this, 0, __var_41);
    __var_39 := __var_40;
    _escrow_RefundableCrowdsale[this] := __var_39;
    call {:si_unique_call 333} {:cexpr "_escrow"} boogie_si_record_sol2Bpl_ref(_escrow_RefundableCrowdsale[this]);
    goto corral_source_split_137;

  corral_source_split_137:
    assume _goal_RefundableCrowdsale[this] >= 0;
    assume goal_s1138 >= 0;
    _goal_RefundableCrowdsale[this] := goal_s1138;
    call {:si_unique_call 334} {:cexpr "_goal"} boogie_si_record_sol2Bpl_int(_goal_RefundableCrowdsale[this]);
    return;
}



procedure {:constructor} {:public} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1138: int);
  modifies Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, Alloc, _primary_Secondary, _deposits_Escrow, _beneficiary_RefundEscrow, _state_RefundEscrow, _escrow_RefundableCrowdsale;



implementation {:ForceInline} RefundableCrowdsale_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, goal_s1138: int)
{
  var __var_39: Ref;
  var __var_40: Ref;
  var __var_41: Ref;

  anon0:
    call {:si_unique_call 335} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 336} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 337} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 338} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 339} {:cexpr "goal"} boogie_si_record_sol2Bpl_int(goal_s1138);
    call {:si_unique_call 340} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 341} Context_Context(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 342} ReentrancyGuard_ReentrancyGuard(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 343} FinalizableCrowdsale_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 344} RefundableCrowdsale_RefundableCrowdsale_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, goal_s1138);
    return;
}



procedure {:public} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} goal_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 345} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 346} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 347} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 348} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 349} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_139;

  corral_source_split_139:
    goto corral_source_split_140;

  corral_source_split_140:
    assume _goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := _goal_RefundableCrowdsale[this];
    return;
}



procedure {:public} claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1171: Ref);
  modifies M_Ref_int, _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} claimRefund_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, refundee_s1171: Ref)
{
  var __var_42: bool;
  var __var_43: bool;
  var __var_44: int;

  anon0:
    call {:si_unique_call 350} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 351} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 352} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 353} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 354} {:cexpr "refundee"} boogie_si_record_sol2Bpl_ref(refundee_s1171);
    call {:si_unique_call 355} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_142;

  corral_source_split_142:
    goto corral_source_split_143;

  corral_source_split_143:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 356} __var_42 := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon3;

  anon8_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    assume false;
    goto anon3;

  anon3:
    assume __var_42;
    goto corral_source_split_145;

  corral_source_split_145:
    call {:si_unique_call 357} __var_43 := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume !__var_43;
    goto corral_source_split_146;

  corral_source_split_146:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] == RefundEscrow;
    call {:si_unique_call 358} withdraw_ConditionalEscrow(_escrow_RefundableCrowdsale[this], this, __var_44, refundee_s1171);
    return;

  anon9_Else:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] != RefundEscrow;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] == ConditionalEscrow;
    call {:si_unique_call 359} withdraw_ConditionalEscrow(_escrow_RefundableCrowdsale[this], this, __var_44, refundee_s1171);
    return;

  anon10_Else:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] != ConditionalEscrow;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] == Escrow;
    call {:si_unique_call 360} withdraw_Escrow(_escrow_RefundableCrowdsale[this], this, __var_44, refundee_s1171);
    return;

  anon11_Else:
    assume {:partition} DType[_escrow_RefundableCrowdsale[this]] != Escrow;
    assume false;
    return;
}



procedure {:public} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool);



implementation {:ForceInline} goalReached_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: bool)
{
  var __var_45: int;

  anon0:
    call {:si_unique_call 361} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 362} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 363} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 364} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 365} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_148;

  corral_source_split_148:
    goto corral_source_split_149;

  corral_source_split_149:
    assume __var_45 >= 0;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 366} __var_45 := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon3;

  anon4_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    assume false;
    goto anon3;

  anon3:
    assume __var_45 >= 0;
    assume _goal_RefundableCrowdsale[this] >= 0;
    __ret_0_ := __var_45 >= _goal_RefundableCrowdsale[this];
    return;
}



procedure _finalization_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _state_RefundEscrow, _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} _finalization_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_46: bool;
  var __var_47: int;
  var __var_48: int;
  var __var_49: int;

  anon0:
    call {:si_unique_call 367} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 368} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 369} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 370} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 371} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_151;

  corral_source_split_151:
    goto corral_source_split_152;

  corral_source_split_152:
    call {:si_unique_call 372} __var_46 := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} __var_46;
    goto corral_source_split_154;

  corral_source_split_154:
    goto corral_source_split_155;

  corral_source_split_155:
    call {:si_unique_call 373} close_RefundEscrow(_escrow_RefundableCrowdsale[this], this, __var_47);
    goto corral_source_split_156;

  corral_source_split_156:
    call {:si_unique_call 374} beneficiaryWithdraw_RefundEscrow(_escrow_RefundableCrowdsale[this], this, __var_48);
    return;

  anon3_Else:
    assume {:partition} !__var_46;
    goto corral_source_split_158;

  corral_source_split_158:
    goto corral_source_split_159;

  corral_source_split_159:
    call {:si_unique_call 375} enableRefunds_RefundEscrow(_escrow_RefundableCrowdsale[this], this, __var_49);
    return;
}



procedure _forwardFunds_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} _forwardFunds_RefundableCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 376} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 377} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 378} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 379} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 380} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_161;

  corral_source_split_161:
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);
  modifies _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} FallbackDispatch(from: Ref, to: Ref, amount: int)
{

  anon0:
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} DType[to] == RefundableCrowdsale;
    assume amount == 0;
    return;

  anon13_Else:
    assume {:partition} DType[to] != RefundableCrowdsale;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} DType[to] == FinalizableCrowdsale;
    assume amount == 0;
    return;

  anon14_Else:
    assume {:partition} DType[to] != FinalizableCrowdsale;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} DType[to] == TimedCrowdsale;
    assume amount == 0;
    return;

  anon15_Else:
    assume {:partition} DType[to] != TimedCrowdsale;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} DType[to] == Crowdsale;
    call {:si_unique_call 381} FallbackMethod_Crowdsale(to, from, amount);
    return;

  anon16_Else:
    assume {:partition} DType[to] != Crowdsale;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} DType[to] == ReentrancyGuard;
    assume amount == 0;
    return;

  anon17_Else:
    assume {:partition} DType[to] != ReentrancyGuard;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} DType[to] == IERC20;
    assume amount == 0;
    return;

  anon18_Else:
    assume {:partition} DType[to] != IERC20;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} DType[to] == RefundEscrow;
    assume amount == 0;
    return;

  anon19_Else:
    assume {:partition} DType[to] != RefundEscrow;
    goto anon20_Then, anon20_Else;

  anon20_Then:
    assume {:partition} DType[to] == ConditionalEscrow;
    assume amount == 0;
    return;

  anon20_Else:
    assume {:partition} DType[to] != ConditionalEscrow;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} DType[to] == Escrow;
    assume amount == 0;
    return;

  anon21_Else:
    assume {:partition} DType[to] != Escrow;
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} DType[to] == Secondary;
    assume amount == 0;
    return;

  anon22_Else:
    assume {:partition} DType[to] != Secondary;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} DType[to] == Context;
    assume amount == 0;
    return;

  anon23_Else:
    assume {:partition} DType[to] != Context;
    call {:si_unique_call 382} Fallback_UnknownType(from, to, amount);
    return;
}



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);
  modifies Balance;



implementation {:ForceInline} Fallback_UnknownType(from: Ref, to: Ref, amount: int)
{

  anon0:
    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    return;
}



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies _weiRaised_Crowdsale, Balance, _notEntered_ReentrancyGuard;



implementation {:ForceInline} send(from: Ref, to: Ref, amount: int) returns (success: bool)
{

  anon0:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} Balance[from] >= amount;
    call {:si_unique_call 383} FallbackDispatch(from, to, amount);
    success := true;
    return;

  anon3_Else:
    assume {:partition} amount > Balance[from];
    success := false;
    return;
}



procedure BoogieEntry_Context();



procedure BoogieEntry_SafeMath();



const {:existential true} HoudiniB1_Secondary: bool;

const {:existential true} HoudiniB2_Secondary: bool;

procedure BoogieEntry_Secondary();



procedure BoogieEntry_Escrow();



procedure BoogieEntry_ConditionalEscrow();



const {:existential true} HoudiniB1_RefundEscrow: bool;

const {:existential true} HoudiniB2_RefundEscrow: bool;

procedure BoogieEntry_RefundEscrow();



procedure BoogieEntry_IERC20();



procedure BoogieEntry_SafeERC20();



procedure BoogieEntry_ReentrancyGuard();



const {:existential true} HoudiniB1_Crowdsale: bool;

const {:existential true} HoudiniB2_Crowdsale: bool;

procedure BoogieEntry_Crowdsale();



procedure BoogieEntry_TimedCrowdsale();



procedure BoogieEntry_FinalizableCrowdsale();



procedure BoogieEntry_RefundableCrowdsale();



procedure onlyPrimary_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} onlyPrimary_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

  anon0:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == RefundEscrow;
    call {:si_unique_call 384} __var_1 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon7_Else:
    assume {:partition} DType[this] != RefundEscrow;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == ConditionalEscrow;
    call {:si_unique_call 385} __var_1 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon8_Else:
    assume {:partition} DType[this] != ConditionalEscrow;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[this] == Escrow;
    call {:si_unique_call 386} __var_1 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon9_Else:
    assume {:partition} DType[this] != Escrow;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} DType[this] == Secondary;
    call {:si_unique_call 387} __var_1 := _msgSender_Context(this, msgsender_MSG, msgvalue_MSG);
    goto anon6;

  anon10_Else:
    assume {:partition} DType[this] != Secondary;
    assume false;
    goto anon6;

  anon6:
    assume __var_1 == _primary_Secondary[this];
    return;
}



procedure nonReentrant_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _notEntered_ReentrancyGuard;



implementation {:ForceInline} nonReentrant_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume _notEntered_ReentrancyGuard[this];
    goto corral_source_split_163;

  corral_source_split_163:
    _notEntered_ReentrancyGuard[this] := false;
    call {:si_unique_call 388} {:cexpr "_notEntered"} boogie_si_record_sol2Bpl_bool(_notEntered_ReentrancyGuard[this]);
    return;
}



procedure onlyWhileOpen_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} onlyWhileOpen_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_36: bool;

  anon0:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == RefundableCrowdsale;
    call {:si_unique_call 389} __var_36 := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon5;

  anon6_Else:
    assume {:partition} DType[this] != RefundableCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == FinalizableCrowdsale;
    call {:si_unique_call 390} __var_36 := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon5;

  anon7_Else:
    assume {:partition} DType[this] != FinalizableCrowdsale;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == TimedCrowdsale;
    call {:si_unique_call 391} __var_36 := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon5;

  anon8_Else:
    assume {:partition} DType[this] != TimedCrowdsale;
    assume false;
    goto anon5;

  anon5:
    assume __var_36;
    return;
}



procedure nonReentrant_post(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies _notEntered_ReentrancyGuard;



implementation {:ForceInline} nonReentrant_post(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    _notEntered_ReentrancyGuard[this] := true;
    call {:si_unique_call 392} {:cexpr "_notEntered"} boogie_si_record_sol2Bpl_bool(_notEntered_ReentrancyGuard[this]);
    return;
}



procedure CorralChoice_Context(this: Ref);



procedure CorralEntry_Context();



procedure CorralChoice_SafeMath(this: Ref);



procedure CorralEntry_SafeMath();



procedure CorralChoice_Secondary(this: Ref);



procedure CorralEntry_Secondary();



procedure CorralChoice_Escrow(this: Ref);



procedure CorralEntry_Escrow();



procedure CorralChoice_ConditionalEscrow(this: Ref);



procedure CorralEntry_ConditionalEscrow();



procedure CorralChoice_RefundEscrow(this: Ref);



procedure CorralEntry_RefundEscrow();



procedure CorralChoice_IERC20(this: Ref);



procedure CorralEntry_IERC20();



procedure CorralChoice_SafeERC20(this: Ref);



procedure CorralEntry_SafeERC20();



procedure CorralChoice_ReentrancyGuard(this: Ref);



procedure CorralEntry_ReentrancyGuard();



procedure CorralChoice_Crowdsale(this: Ref);



procedure CorralEntry_Crowdsale();



procedure CorralChoice_TimedCrowdsale(this: Ref);



procedure CorralEntry_TimedCrowdsale();



procedure CorralChoice_FinalizableCrowdsale(this: Ref);



procedure CorralEntry_FinalizableCrowdsale();



procedure CorralChoice_RefundableCrowdsale(this: Ref);
  modifies now, Alloc, _weiRaised_Crowdsale, _finalized_FinalizableCrowdsale, M_Ref_int, _notEntered_ReentrancyGuard, _state_RefundEscrow, Balance;



implementation CorralChoice_RefundableCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var rate_s716: int;
  var wallet_s716: Ref;
  var token_s716: Ref;
  var __ret_0_token: Ref;
  var __ret_0_wallet: Ref;
  var __ret_0_rate: int;
  var __ret_0_weiRaised: int;
  var beneficiary_s814: Ref;
  var openingTime_s963: int;
  var closingTime_s963: int;
  var __ret_0_openingTime: int;
  var __ret_0_closingTime: int;
  var __ret_0_isOpen: bool;
  var __ret_0_hasClosed: bool;
  var __ret_0_finalized: bool;
  var goal_s1138: int;
  var __ret_0_goal: int;
  var refundee_s1171: Ref;
  var __ret_0_goalReached: bool;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc rate_s716;
    havoc wallet_s716;
    havoc token_s716;
    havoc __ret_0_token;
    havoc __ret_0_wallet;
    havoc __ret_0_rate;
    havoc __ret_0_weiRaised;
    havoc beneficiary_s814;
    havoc openingTime_s963;
    havoc closingTime_s963;
    havoc __ret_0_openingTime;
    havoc __ret_0_closingTime;
    havoc __ret_0_isOpen;
    havoc __ret_0_hasClosed;
    havoc __ret_0_finalized;
    havoc goal_s1138;
    havoc __ret_0_goal;
    havoc refundee_s1171;
    havoc __ret_0_goalReached;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Context;
    assume DType[msgsender_MSG] != SafeMath;
    assume DType[msgsender_MSG] != Secondary;
    assume DType[msgsender_MSG] != Escrow;
    assume DType[msgsender_MSG] != ConditionalEscrow;
    assume DType[msgsender_MSG] != RefundEscrow;
    assume DType[msgsender_MSG] != IERC20;
    assume DType[msgsender_MSG] != SafeERC20;
    assume DType[msgsender_MSG] != ReentrancyGuard;
    assume DType[msgsender_MSG] != Crowdsale;
    assume DType[msgsender_MSG] != TimedCrowdsale;
    assume DType[msgsender_MSG] != FinalizableCrowdsale;
    assume DType[msgsender_MSG] != RefundableCrowdsale;
    Alloc[msgsender_MSG] := true;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 393} __ret_0_token := token_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon15_Else:
    assume {:partition} choice != 14;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 394} __ret_0_wallet := wallet_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon16_Else:
    assume {:partition} choice != 13;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 395} __ret_0_rate := rate_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon17_Else:
    assume {:partition} choice != 12;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 396} __ret_0_weiRaised := weiRaised_Crowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon18_Else:
    assume {:partition} choice != 11;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 397} buyTokens_Crowdsale(this, msgsender_MSG, msgvalue_MSG, beneficiary_s814);
    return;

  anon19_Else:
    assume {:partition} choice != 10;
    goto anon20_Then, anon20_Else;

  anon20_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 398} __ret_0_openingTime := openingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon20_Else:
    assume {:partition} choice != 9;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 399} __ret_0_closingTime := closingTime_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon21_Else:
    assume {:partition} choice != 8;
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 400} __ret_0_isOpen := isOpen_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon22_Else:
    assume {:partition} choice != 7;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 401} __ret_0_hasClosed := hasClosed_TimedCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon23_Else:
    assume {:partition} choice != 6;
    goto anon24_Then, anon24_Else;

  anon24_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 402} __ret_0_finalized := finalized_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon24_Else:
    assume {:partition} choice != 5;
    goto anon25_Then, anon25_Else;

  anon25_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 403} finalize_FinalizableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon25_Else:
    assume {:partition} choice != 4;
    goto anon26_Then, anon26_Else;

  anon26_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 404} __ret_0_goal := goal_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon26_Else:
    assume {:partition} choice != 3;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 405} claimRefund_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, refundee_s1171);
    return;

  anon27_Else:
    assume {:partition} choice != 2;
    goto anon28_Then, anon28_Else;

  anon28_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 406} __ret_0_goalReached := goalReached_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon28_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_RefundableCrowdsale();
  modifies Alloc, Balance, _notEntered_ReentrancyGuard, _finalized_FinalizableCrowdsale, _goal_RefundableCrowdsale, _primary_Secondary, _deposits_Escrow, _beneficiary_RefundEscrow, _state_RefundEscrow, _escrow_RefundableCrowdsale, now, _weiRaised_Crowdsale, M_Ref_int;



implementation CorralEntry_RefundableCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var goal_s1138: int;

  anon0:
    call {:si_unique_call 407} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == RefundableCrowdsale;
    call {:si_unique_call 408} RefundableCrowdsale_RefundableCrowdsale(this, msgsender_MSG, msgvalue_MSG, goal_s1138);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 409} CorralChoice_RefundableCrowdsale(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


