type Ref;

type ContractName;

const unique null: Ref;

const unique Ownable: ContractName;

const unique DepositLockerInterface: ContractName;

const unique DepositLocker: ContractName;

const unique ValidatorAuction: ContractName;

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

var M_Ref_bool: [Ref][Ref]bool;

var M_Ref_int: [Ref][Ref]int;

var M_int_Ref: [Ref][int]Ref;

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

var owner_Ownable: [Ref]Ref;

procedure Ownable_Ownable_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



implementation {:ForceInline} Ownable_Ownable_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    owner_Ownable[this] := null;
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    owner_Ownable[this] := msgsender_MSG;
    call {:si_unique_call 5} {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
    return;
}



procedure {:constructor} {:public} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_Ownable;



implementation {:ForceInline} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 6} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 7} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 8} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 9} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 10} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 11} Ownable_Ownable_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref);
  modifies owner_Ownable;



implementation {:ForceInline} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 12} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 13} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 14} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 15} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 16} {:cexpr "newOwner"} boogie_si_record_sol2Bpl_ref(newOwner_s43);
    call {:si_unique_call 17} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 18} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_4;

  corral_source_split_4:
    goto corral_source_split_5;

  corral_source_split_5:
    __var_1 := null;
    goto anon2_Then, anon2_Else;

  anon2_Then:
    assume {:partition} newOwner_s43 != null;
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    owner_Ownable[this] := newOwner_s43;
    call {:si_unique_call 19} {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
    return;

  anon2_Else:
    assume {:partition} newOwner_s43 == null;
    return;
}



procedure DepositLockerInterface_DepositLockerInterface_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure DepositLockerInterface_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} slash_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s49: Ref);



procedure DepositLocker_DepositLocker_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure DepositLocker_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



var initialized_DepositLocker: [Ref]bool;

var deposited_DepositLocker: [Ref]bool;

var slasher_DepositLocker: [Ref]Ref;

var depositorsProxy_DepositLocker: [Ref]Ref;

var releaseTimestamp_DepositLocker: [Ref]int;

var canWithdraw_DepositLocker: [Ref]Ref;

var numberOfDepositors_DepositLocker: [Ref]int;

var valuePerDepositor_DepositLocker: [Ref]int;

procedure FallbackMethod_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} init_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _releaseTimestamp_s192: int, _slasher_s192: Ref, _depositorsProxy_s192: Ref);



procedure {:public} registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref);
  modifies M_Ref_bool, numberOfDepositors_DepositLocker;



implementation {:ForceInline} registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s228: Ref)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "_depositor"} boogie_si_record_sol2Bpl_ref(_depositor_s228);
    call {:si_unique_call 25} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 26} isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 27} isNotDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 28} onlyDepositorsProxy_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_10;

  corral_source_split_10:
    goto corral_source_split_11;

  corral_source_split_11:
    assume M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s228] <==> false;
    goto corral_source_split_12;

  corral_source_split_12:
    M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s228] := true;
    call {:si_unique_call 29} {:cexpr "canWithdraw[_depositor]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s228]);
    goto corral_source_split_13;

  corral_source_split_13:
    assume numberOfDepositors_DepositLocker[this] >= 0;
    numberOfDepositors_DepositLocker[this] := numberOfDepositors_DepositLocker[this] + 1;
    call {:si_unique_call 30} {:cexpr "numberOfDepositors"} boogie_si_record_sol2Bpl_int(numberOfDepositors_DepositLocker[this]);
    goto corral_source_split_14;

  corral_source_split_14:
    assert {:EventEmitted "DepositorRegistered_DepositLocker"} true;
    return;
}



procedure {:public} deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int);
  modifies Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker;



implementation {:ForceInline} deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s292: int)
{
  var depositAmount_s291: int;

  anon0:
    call {:si_unique_call 31} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 32} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 33} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 34} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 35} {:cexpr "_valuePerDepositor"} boogie_si_record_sol2Bpl_int(_valuePerDepositor_s292);
    call {:si_unique_call 36} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call {:si_unique_call 37} isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 38} isNotDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 39} onlyDepositorsProxy_pre(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_16;

  corral_source_split_16:
    goto corral_source_split_17;

  corral_source_split_17:
    assume numberOfDepositors_DepositLocker[this] >= 0;
    assume numberOfDepositors_DepositLocker[this] > 0;
    goto corral_source_split_18;

  corral_source_split_18:
    assume _valuePerDepositor_s292 >= 0;
    assume _valuePerDepositor_s292 > 0;
    goto corral_source_split_19;

  corral_source_split_19:
    assume depositAmount_s291 >= 0;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    assume numberOfDepositors_DepositLocker[this] * _valuePerDepositor_s292 >= 0;
    depositAmount_s291 := numberOfDepositors_DepositLocker[this] * _valuePerDepositor_s292;
    call {:si_unique_call 40} {:cexpr "depositAmount"} boogie_si_record_sol2Bpl_int(depositAmount_s291);
    goto corral_source_split_20;

  corral_source_split_20:
    assume _valuePerDepositor_s292 >= 0;
    assume depositAmount_s291 >= 0;
    assume numberOfDepositors_DepositLocker[this] >= 0;
    assume depositAmount_s291 div numberOfDepositors_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 == depositAmount_s291 div numberOfDepositors_DepositLocker[this];
    goto corral_source_split_21;

  corral_source_split_21:
    assume msgvalue_MSG >= 0;
    assume depositAmount_s291 >= 0;
    assume msgvalue_MSG == depositAmount_s291;
    goto corral_source_split_22;

  corral_source_split_22:
    assume valuePerDepositor_DepositLocker[this] >= 0;
    assume _valuePerDepositor_s292 >= 0;
    valuePerDepositor_DepositLocker[this] := _valuePerDepositor_s292;
    call {:si_unique_call 41} {:cexpr "valuePerDepositor"} boogie_si_record_sol2Bpl_int(valuePerDepositor_DepositLocker[this]);
    goto corral_source_split_23;

  corral_source_split_23:
    deposited_DepositLocker[this] := true;
    call {:si_unique_call 42} {:cexpr "deposited"} boogie_si_record_sol2Bpl_bool(deposited_DepositLocker[this]);
    goto corral_source_split_24;

  corral_source_split_24:
    assert {:EventEmitted "Deposit_DepositLocker"} true;
    return;
}



procedure {:public} withdraw_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} slash_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s364: Ref);



procedure {:public} vc0x0x0_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s510: Ref);



procedure {:public} vc0x0x2_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s624: Ref);



procedure {:public} vc0x0x3_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s745: Ref);



procedure {:public} vc0x0x4_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s860: Ref);
  modifies Balance, M_Ref_bool;



implementation {:ForceInline} vc0x0x4_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s860: Ref)
{
  var __var_4: bool;
  var __var_5: int;
  var __var_6: bool;
  var __var_7: int;

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    goto corral_source_split_26;

  corral_source_split_26:
    goto corral_source_split_27;

  corral_source_split_27:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume DType[depositLocker_ValidatorAuction[this]] == DepositLocker;
    __var_4 := initialized_DepositLocker[depositLocker_ValidatorAuction[this]];
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this] && !__var_4 && true && Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this] && true && !(auctionState_ValidatorAuction[this] == 3 || auctionState_ValidatorAuction[this] == 4) && true && true && true && true;
    goto corral_source_split_28;

  corral_source_split_28:
    assume true;
    goto corral_source_split_29;

  corral_source_split_29:
    assume true;
    goto corral_source_split_30;

  corral_source_split_30:
    call {:si_unique_call 48} addToWhitelist_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s860);
    goto corral_source_split_31;

  corral_source_split_31:
    assume true;
    goto corral_source_split_32;

  corral_source_split_32:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume DType[depositLocker_ValidatorAuction[this]] == DepositLocker;
    __var_6 := initialized_DepositLocker[depositLocker_ValidatorAuction[this]];
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assert !(Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this] && !__var_6 && true && Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this] && true && !(auctionState_ValidatorAuction[this] == 3 || auctionState_ValidatorAuction[this] == 4) && true && true && true && true);
    return;
}



procedure {:public} vc0x0x6_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s980: Ref);



procedure {:public} vc0x0x7_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1100: Ref);



procedure {:public} vc0x0x8_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1214: Ref);



procedure {:public} vc0x0x9_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1328: Ref);



procedure {:public} vc0x1x0_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1469: Ref);



procedure {:public} vc0x1x2_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1581: Ref);



procedure {:public} vc0x1x3_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1700: Ref);



procedure {:public} vc0x1x4_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1813: Ref);



procedure {:public} vc0x1x6_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s1931: Ref);



procedure {:public} vc0x1x7_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2049: Ref);



procedure {:public} vc0x1x8_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2161: Ref);



procedure {:public} vc0x1x9_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2273: Ref);



procedure {:public} vc0x2x0_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2412: Ref);



procedure {:public} vc0x2x2_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2522: Ref);



procedure {:public} vc0x2x3_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2639: Ref);



procedure {:public} vc0x2x4_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2750: Ref);



procedure {:public} vc0x2x6_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2866: Ref);



procedure {:public} vc0x2x7_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s2982: Ref);



procedure {:public} vc0x2x8_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s3092: Ref);



procedure {:public} vc0x2x9_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s3202: Ref);



var auctionDurationInDays_ValidatorAuction: [Ref]int;

var startPrice_ValidatorAuction: [Ref]int;

var minimalNumberOfParticipants_ValidatorAuction: [Ref]int;

var maximalNumberOfParticipants_ValidatorAuction: [Ref]int;

var auctionState_ValidatorAuction: [Ref]int;

var depositLocker_ValidatorAuction: [Ref]Ref;

var whitelist_ValidatorAuction: [Ref]Ref;

var bids_ValidatorAuction: [Ref]Ref;

var bidders_ValidatorAuction: [Ref]Ref;

var startTime_ValidatorAuction: [Ref]int;

var closeTime_ValidatorAuction: [Ref]int;

var lowestSlotPrice_ValidatorAuction: [Ref]int;

procedure ValidatorAuction_ValidatorAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s3396: int, _auctionDurationInDays_s3396: int, _minimalNumberOfParticipants_s3396: int, _maximalNumberOfParticipants_s3396: int, _depositLocker_s3396: Ref);
  modifies Balance, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, Alloc, whitelist_ValidatorAuction, bids_ValidatorAuction, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, depositLocker_ValidatorAuction, auctionState_ValidatorAuction;



implementation {:ForceInline} ValidatorAuction_ValidatorAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s3396: int, _auctionDurationInDays_s3396: int, _minimalNumberOfParticipants_s3396: int, _maximalNumberOfParticipants_s3396: int, _depositLocker_s3396: Ref)
{
  var __var_8: int;
  var __var_9: Ref;
  var __var_10: Ref;
  var __var_11: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    auctionDurationInDays_ValidatorAuction[this] := 0;
    startPrice_ValidatorAuction[this] := 0;
    minimalNumberOfParticipants_ValidatorAuction[this] := 0;
    maximalNumberOfParticipants_ValidatorAuction[this] := 0;
    call {:si_unique_call 49} __var_9 := FreshRefGenerator();
    whitelist_ValidatorAuction[this] := __var_9;
    assume (forall __i__0_0: Ref :: !M_Ref_bool[whitelist_ValidatorAuction[this]][__i__0_0]);
    call {:si_unique_call 50} __var_10 := FreshRefGenerator();
    bids_ValidatorAuction[this] := __var_10;
    assume (forall __i__0_0: Ref :: M_Ref_int[bids_ValidatorAuction[this]][__i__0_0] == 0);
    call {:si_unique_call 51} __var_11 := FreshRefGenerator();
    bidders_ValidatorAuction[this] := __var_11;
    assume Length[bidders_ValidatorAuction[this]] == 0;
    startTime_ValidatorAuction[this] := 0;
    closeTime_ValidatorAuction[this] := 0;
    lowestSlotPrice_ValidatorAuction[this] := 0;
    call {:si_unique_call 52} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 53} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 54} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 55} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 56} {:cexpr "_startPriceInWei"} boogie_si_record_sol2Bpl_int(_startPriceInWei_s3396);
    call {:si_unique_call 57} {:cexpr "_auctionDurationInDays"} boogie_si_record_sol2Bpl_int(_auctionDurationInDays_s3396);
    call {:si_unique_call 58} {:cexpr "_minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_minimalNumberOfParticipants_s3396);
    call {:si_unique_call 59} {:cexpr "_maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_maximalNumberOfParticipants_s3396);
    call {:si_unique_call 60} {:cexpr "_depositLocker"} boogie_si_record_sol2Bpl_ref(_depositLocker_s3396);
    call {:si_unique_call 61} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_34;

  corral_source_split_34:
    goto corral_source_split_35;

  corral_source_split_35:
    assume _auctionDurationInDays_s3396 >= 0;
    assume _auctionDurationInDays_s3396 > 0;
    goto corral_source_split_36;

  corral_source_split_36:
    assume _auctionDurationInDays_s3396 >= 0;
    assume _auctionDurationInDays_s3396 < 100 * 365;
    goto corral_source_split_37;

  corral_source_split_37:
    assume _minimalNumberOfParticipants_s3396 >= 0;
    assume _minimalNumberOfParticipants_s3396 > 0;
    goto corral_source_split_38;

  corral_source_split_38:
    assume _maximalNumberOfParticipants_s3396 >= 0;
    assume _maximalNumberOfParticipants_s3396 > 0;
    goto corral_source_split_39;

  corral_source_split_39:
    assume _minimalNumberOfParticipants_s3396 >= 0;
    assume _maximalNumberOfParticipants_s3396 >= 0;
    assume _minimalNumberOfParticipants_s3396 <= _maximalNumberOfParticipants_s3396;
    goto corral_source_split_40;

  corral_source_split_40:
    assume _startPriceInWei_s3396 >= 0;
    assume _startPriceInWei_s3396 < 10000000000000000000000000000000;
    goto corral_source_split_41;

  corral_source_split_41:
    assume startPrice_ValidatorAuction[this] >= 0;
    assume _startPriceInWei_s3396 >= 0;
    startPrice_ValidatorAuction[this] := _startPriceInWei_s3396;
    call {:si_unique_call 62} {:cexpr "startPrice"} boogie_si_record_sol2Bpl_int(startPrice_ValidatorAuction[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume _auctionDurationInDays_s3396 >= 0;
    auctionDurationInDays_ValidatorAuction[this] := _auctionDurationInDays_s3396;
    call {:si_unique_call 63} {:cexpr "auctionDurationInDays"} boogie_si_record_sol2Bpl_int(auctionDurationInDays_ValidatorAuction[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _maximalNumberOfParticipants_s3396 >= 0;
    maximalNumberOfParticipants_ValidatorAuction[this] := _maximalNumberOfParticipants_s3396;
    call {:si_unique_call 64} {:cexpr "maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(maximalNumberOfParticipants_ValidatorAuction[this]);
    goto corral_source_split_44;

  corral_source_split_44:
    assume minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume _minimalNumberOfParticipants_s3396 >= 0;
    minimalNumberOfParticipants_ValidatorAuction[this] := _minimalNumberOfParticipants_s3396;
    call {:si_unique_call 65} {:cexpr "minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(minimalNumberOfParticipants_ValidatorAuction[this]);
    goto corral_source_split_45;

  corral_source_split_45:
    depositLocker_ValidatorAuction[this] := _depositLocker_s3396;
    call {:si_unique_call 66} {:cexpr "depositLocker"} boogie_si_record_sol2Bpl_ref(depositLocker_ValidatorAuction[this]);
    goto corral_source_split_46;

  corral_source_split_46:
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    __var_8 := 115792089237316195423570985008687907853269984665640564039457584007913129639935;
    lowestSlotPrice_ValidatorAuction[this] := __var_8;
    assume __var_8 >= 0;
    call {:si_unique_call 67} {:cexpr "lowestSlotPrice"} boogie_si_record_sol2Bpl_int(lowestSlotPrice_ValidatorAuction[this]);
    goto corral_source_split_47;

  corral_source_split_47:
    assert {:EventEmitted "AuctionDeployed_ValidatorAuction"} true;
    goto corral_source_split_48;

  corral_source_split_48:
    auctionState_ValidatorAuction[this] := 0;
    return;
}



procedure {:constructor} {:public} ValidatorAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s3396: int, _auctionDurationInDays_s3396: int, _minimalNumberOfParticipants_s3396: int, _maximalNumberOfParticipants_s3396: int, _depositLocker_s3396: Ref);
  modifies Balance, owner_Ownable, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, Alloc, whitelist_ValidatorAuction, bids_ValidatorAuction, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, depositLocker_ValidatorAuction, auctionState_ValidatorAuction;



implementation {:ForceInline} ValidatorAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s3396: int, _auctionDurationInDays_s3396: int, _minimalNumberOfParticipants_s3396: int, _maximalNumberOfParticipants_s3396: int, _depositLocker_s3396: Ref)
{
  var __var_8: int;
  var __var_9: Ref;
  var __var_10: Ref;
  var __var_11: Ref;

  anon0:
    call {:si_unique_call 68} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 69} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 70} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 71} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 72} {:cexpr "_startPriceInWei"} boogie_si_record_sol2Bpl_int(_startPriceInWei_s3396);
    call {:si_unique_call 73} {:cexpr "_auctionDurationInDays"} boogie_si_record_sol2Bpl_int(_auctionDurationInDays_s3396);
    call {:si_unique_call 74} {:cexpr "_minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_minimalNumberOfParticipants_s3396);
    call {:si_unique_call 75} {:cexpr "_maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_maximalNumberOfParticipants_s3396);
    call {:si_unique_call 76} {:cexpr "_depositLocker"} boogie_si_record_sol2Bpl_ref(_depositLocker_s3396);
    call {:si_unique_call 77} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 78} Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 79} ValidatorAuction_ValidatorAuction_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s3396, _auctionDurationInDays_s3396, _minimalNumberOfParticipants_s3396, _maximalNumberOfParticipants_s3396, _depositLocker_s3396);
    return;
}



procedure FallbackMethod_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, M_Ref_int, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation {:ForceInline} bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var slotPrice_s3527: int;
  var __var_12: bool;
  var __var_13: int;
  var __var_14: int;

  anon0:
    call {:si_unique_call 80} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 81} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 82} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 83} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 84} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    call {:si_unique_call 85} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
    goto corral_source_split_50;

  corral_source_split_50:
    goto corral_source_split_51;

  corral_source_split_51:
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume now > startTime_ValidatorAuction[this];
    goto corral_source_split_52;

  corral_source_split_52:
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume startTime_ValidatorAuction[this] + auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume now <= startTime_ValidatorAuction[this] + auctionDurationInDays_ValidatorAuction[this] * 1;
    goto corral_source_split_53;

  corral_source_split_53:
    assume slotPrice_s3527 >= 0;
    call {:si_unique_call 86} slotPrice_s3527 := currentPrice_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    slotPrice_s3527 := slotPrice_s3527;
    call {:si_unique_call 87} {:cexpr "slotPrice"} boogie_si_record_sol2Bpl_int(slotPrice_s3527);
    goto corral_source_split_54;

  corral_source_split_54:
    assume msgvalue_MSG >= 0;
    assume slotPrice_s3527 >= 0;
    assume msgvalue_MSG >= slotPrice_s3527;
    goto corral_source_split_55;

  corral_source_split_55:
    assume M_Ref_bool[whitelist_ValidatorAuction[this]][msgsender_MSG];
    goto corral_source_split_56;

  corral_source_split_56:
    call {:si_unique_call 88} __var_12 := isSenderContract_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    assume !__var_12;
    goto corral_source_split_57;

  corral_source_split_57:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this];
    goto corral_source_split_58;

  corral_source_split_58:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] == 0;
    goto corral_source_split_59;

  corral_source_split_59:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := msgvalue_MSG;
    call {:si_unique_call 89} {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
    goto corral_source_split_60;

  corral_source_split_60:
    __var_13 := Length[bidders_ValidatorAuction[this]];
    M_int_Ref[bidders_ValidatorAuction[this]][__var_13] := msgsender_MSG;
    Length[bidders_ValidatorAuction[this]] := __var_13 + 1;
    goto corral_source_split_61;

  corral_source_split_61:
    assume slotPrice_s3527 >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} slotPrice_s3527 < lowestSlotPrice_ValidatorAuction[this];
    goto corral_source_split_63;

  corral_source_split_63:
    goto corral_source_split_64;

  corral_source_split_64:
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume slotPrice_s3527 >= 0;
    lowestSlotPrice_ValidatorAuction[this] := slotPrice_s3527;
    call {:si_unique_call 90} {:cexpr "lowestSlotPrice"} boogie_si_record_sol2Bpl_int(lowestSlotPrice_ValidatorAuction[this]);
    goto anon2;

  anon4_Else:
    assume {:partition} lowestSlotPrice_ValidatorAuction[this] <= slotPrice_s3527;
    goto anon2;

  anon2:
    call {:si_unique_call 91} registerDepositor_DepositLocker(depositLocker_ValidatorAuction[this], this, __var_14, msgsender_MSG);
    goto corral_source_split_66;

  corral_source_split_66:
    assert {:EventEmitted "BidSubmitted_ValidatorAuction"} true;
    goto corral_source_split_67;

  corral_source_split_67:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} Length[bidders_ValidatorAuction[this]] == maximalNumberOfParticipants_ValidatorAuction[this];
    goto corral_source_split_69;

  corral_source_split_69:
    goto corral_source_split_70;

  corral_source_split_70:
    call {:si_unique_call 92} transitionToDepositPending_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon5_Else:
    assume {:partition} Length[bidders_ValidatorAuction[this]] != maximalNumberOfParticipants_ValidatorAuction[this];
    return;
}



procedure {:public} startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies auctionState_ValidatorAuction, startTime_ValidatorAuction;



implementation {:ForceInline} startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_15: bool;
  var __var_16: int;

  anon0:
    call {:si_unique_call 93} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 94} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 95} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 96} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 97} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 98} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 99} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 0);
    goto corral_source_split_72;

  corral_source_split_72:
    goto corral_source_split_73;

  corral_source_split_73:
    assume DType[depositLocker_ValidatorAuction[this]] == DepositLocker;
    __var_15 := initialized_DepositLocker[depositLocker_ValidatorAuction[this]];
    assume __var_15;
    goto corral_source_split_74;

  corral_source_split_74:
    auctionState_ValidatorAuction[this] := 1;
    goto corral_source_split_75;

  corral_source_split_75:
    assume startTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    startTime_ValidatorAuction[this] := now;
    call {:si_unique_call 100} {:cexpr "startTime"} boogie_si_record_sol2Bpl_int(startTime_ValidatorAuction[this]);
    goto corral_source_split_76;

  corral_source_split_76:
    assert {:EventEmitted "AuctionStarted_ValidatorAuction"} true;
    return;
}



procedure {:public} depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies auctionState_ValidatorAuction, Balance, valuePerDepositor_DepositLocker, deposited_DepositLocker;



implementation {:ForceInline} depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 101} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 102} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 103} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 104} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 105} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 106} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 2);
    goto corral_source_split_78;

  corral_source_split_78:
    goto corral_source_split_79;

  corral_source_split_79:
    auctionState_ValidatorAuction[this] := 3;
    goto corral_source_split_80;

  corral_source_split_80:
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] * Length[bidders_ValidatorAuction[this]] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    call {:si_unique_call 107} deposit_DepositLocker(depositLocker_ValidatorAuction[this], this, lowestSlotPrice_ValidatorAuction[this] * Length[bidders_ValidatorAuction[this]], lowestSlotPrice_ValidatorAuction[this]);
    goto corral_source_split_81;

  corral_source_split_81:
    assert {:EventEmitted "AuctionEnded_ValidatorAuction"} true;
    return;
}



procedure {:public} closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation {:ForceInline} closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 108} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 109} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 110} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 111} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 112} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 113} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
    goto corral_source_split_83;

  corral_source_split_83:
    goto corral_source_split_84;

  corral_source_split_84:
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume startTime_ValidatorAuction[this] + auctionDurationInDays_ValidatorAuction[this] * 1 >= 0;
    assume now > startTime_ValidatorAuction[this] + auctionDurationInDays_ValidatorAuction[this] * 1;
    goto corral_source_split_85;

  corral_source_split_85:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume maximalNumberOfParticipants_ValidatorAuction[this] >= 0;
    assume Length[bidders_ValidatorAuction[this]] < maximalNumberOfParticipants_ValidatorAuction[this];
    goto corral_source_split_86;

  corral_source_split_86:
    assume Length[bidders_ValidatorAuction[this]] >= 0;
    assume minimalNumberOfParticipants_ValidatorAuction[this] >= 0;
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} Length[bidders_ValidatorAuction[this]] >= minimalNumberOfParticipants_ValidatorAuction[this];
    goto corral_source_split_88;

  corral_source_split_88:
    goto corral_source_split_89;

  corral_source_split_89:
    call {:si_unique_call 114} transitionToDepositPending_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon3_Else:
    assume {:partition} minimalNumberOfParticipants_ValidatorAuction[this] > Length[bidders_ValidatorAuction[this]];
    goto corral_source_split_91;

  corral_source_split_91:
    goto corral_source_split_92;

  corral_source_split_92:
    call {:si_unique_call 115} transitionToAuctionFailed_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s3670: Ref);
  modifies M_Ref_bool;



implementation {:ForceInline} addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s3670: Ref)
{
  var i_s3668: int;

  anon0:
    call {:si_unique_call 116} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 117} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 118} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 119} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 120} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 121} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 122} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 0);
    goto corral_source_split_94;

  corral_source_split_94:
    goto corral_source_split_95;

  corral_source_split_95:
    assume i_s3668 >= 0;
    assume Length[addressesToWhitelist_s3670] >= 0;
    goto corral_source_split_96;

  corral_source_split_96:
    assume i_s3668 >= 0;
    i_s3668 := 0;
    call {:si_unique_call 123} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s3668);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} i_s3668 < Length[addressesToWhitelist_s3670];
    goto corral_source_split_98;

  corral_source_split_98:
    goto corral_source_split_99;

  corral_source_split_99:
    assume i_s3668 >= 0;
    M_Ref_bool[whitelist_ValidatorAuction[this]][M_int_Ref[addressesToWhitelist_s3670][i_s3668]] := true;
    call {:si_unique_call 124} {:cexpr "whitelist[addressesToWhitelist[i]]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[whitelist_ValidatorAuction[this]][M_int_Ref[addressesToWhitelist_s3670][i_s3668]]);
    goto corral_source_split_100;

  corral_source_split_100:
    assert {:EventEmitted "AddressWhitelisted_ValidatorAuction"} true;
    goto corral_source_split_101;

  corral_source_split_101:
    assume i_s3668 >= 0;
    i_s3668 := i_s3668 + 1;
    call {:si_unique_call 125} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s3668);
    assume i_s3668 >= 0;
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} Length[addressesToWhitelist_s3670] <= i_s3668;
    return;
}



procedure {:public} withdraw_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies M_Ref_int;



implementation {:ForceInline} withdraw_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 126} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 127} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 128} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 129} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 130} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_103;

  corral_source_split_103:
    goto corral_source_split_104;

  corral_source_split_104:
    assume auctionState_ValidatorAuction[this] == 3 || auctionState_ValidatorAuction[this] == 4;
    goto corral_source_split_105;

  corral_source_split_105:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} auctionState_ValidatorAuction[this] == 3;
    goto corral_source_split_107;

  corral_source_split_107:
    goto corral_source_split_108;

  corral_source_split_108:
    call {:si_unique_call 131} withdrawAfterAuctionEnded_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon5_Else:
    assume {:partition} auctionState_ValidatorAuction[this] != 3;
    goto corral_source_split_110;

  corral_source_split_110:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} auctionState_ValidatorAuction[this] == 4;
    goto corral_source_split_112;

  corral_source_split_112:
    goto corral_source_split_113;

  corral_source_split_113:
    call {:si_unique_call 132} withdrawAfterAuctionFailed_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon6_Else:
    assume {:partition} auctionState_ValidatorAuction[this] != 4;
    goto corral_source_split_115;

  corral_source_split_115:
    goto corral_source_split_116;

  corral_source_split_116:
    assume false;
    return;
}



procedure {:public} currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);



implementation {:ForceInline} currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
  var secondsSinceStart_s3736: int;
  var __var_17: int;

  anon0:
    call {:si_unique_call 133} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 134} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 135} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 136} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 137} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 138} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
    goto corral_source_split_118;

  corral_source_split_118:
    goto corral_source_split_119;

  corral_source_split_119:
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume now >= startTime_ValidatorAuction[this];
    goto corral_source_split_120;

  corral_source_split_120:
    assume secondsSinceStart_s3736 >= 0;
    assume now >= 0;
    assume startTime_ValidatorAuction[this] >= 0;
    assume now - startTime_ValidatorAuction[this] >= 0;
    secondsSinceStart_s3736 := now - startTime_ValidatorAuction[this];
    call {:si_unique_call 139} {:cexpr "secondsSinceStart"} boogie_si_record_sol2Bpl_int(secondsSinceStart_s3736);
    goto corral_source_split_121;

  corral_source_split_121:
    assume __var_17 >= 0;
    assume secondsSinceStart_s3736 >= 0;
    call {:si_unique_call 140} __var_17 := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s3736);
    assume __var_17 >= 0;
    __ret_0_ := __var_17;
    return;
}



procedure {:public} priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s3798: int) returns (__ret_0_: int);



implementation {:ForceInline} priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s3798: int) returns (__ret_0_: int)
{
  var msSinceStart_s3797: int;
  var relativeAuctionTime_s3797: int;
  var decayDivisor_s3797: int;
  var decay_s3797: int;
  var price_s3797: int;

  anon0:
    call {:si_unique_call 141} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 142} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 143} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 144} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 145} {:cexpr "secondsSinceStart"} boogie_si_record_sol2Bpl_int(secondsSinceStart_s3798);
    call {:si_unique_call 146} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_123;

  corral_source_split_123:
    goto corral_source_split_124;

  corral_source_split_124:
    assume secondsSinceStart_s3798 >= 0;
    assume secondsSinceStart_s3798 < 100 * 365;
    goto corral_source_split_125;

  corral_source_split_125:
    assume msSinceStart_s3797 >= 0;
    assume secondsSinceStart_s3798 >= 0;
    assume 1000 * secondsSinceStart_s3798 >= 0;
    msSinceStart_s3797 := 1000 * secondsSinceStart_s3798;
    call {:si_unique_call 147} {:cexpr "msSinceStart"} boogie_si_record_sol2Bpl_int(msSinceStart_s3797);
    goto corral_source_split_126;

  corral_source_split_126:
    assume relativeAuctionTime_s3797 >= 0;
    assume msSinceStart_s3797 >= 0;
    assume auctionDurationInDays_ValidatorAuction[this] >= 0;
    assume msSinceStart_s3797 div auctionDurationInDays_ValidatorAuction[this] >= 0;
    relativeAuctionTime_s3797 := msSinceStart_s3797 div auctionDurationInDays_ValidatorAuction[this];
    call {:si_unique_call 148} {:cexpr "relativeAuctionTime"} boogie_si_record_sol2Bpl_int(relativeAuctionTime_s3797);
    goto corral_source_split_127;

  corral_source_split_127:
    assume decayDivisor_s3797 >= 0;
    decayDivisor_s3797 := 746571428571;
    call {:si_unique_call 149} {:cexpr "decayDivisor"} boogie_si_record_sol2Bpl_int(decayDivisor_s3797);
    goto corral_source_split_128;

  corral_source_split_128:
    assume decay_s3797 >= 0;
    assume relativeAuctionTime_s3797 >= 0;
    assume relativeAuctionTime_s3797 >= 0;
    assume relativeAuctionTime_s3797 * relativeAuctionTime_s3797 >= 0;
    assume relativeAuctionTime_s3797 >= 0;
    assume relativeAuctionTime_s3797 * relativeAuctionTime_s3797 * relativeAuctionTime_s3797 >= 0;
    assume decayDivisor_s3797 >= 0;
    assume relativeAuctionTime_s3797 * relativeAuctionTime_s3797 * relativeAuctionTime_s3797 div decayDivisor_s3797 >= 0;
    decay_s3797 := relativeAuctionTime_s3797 * relativeAuctionTime_s3797 * relativeAuctionTime_s3797 div decayDivisor_s3797;
    call {:si_unique_call 150} {:cexpr "decay"} boogie_si_record_sol2Bpl_int(decay_s3797);
    goto corral_source_split_129;

  corral_source_split_129:
    assume price_s3797 >= 0;
    assume startPrice_ValidatorAuction[this] >= 0;
    assume relativeAuctionTime_s3797 >= 0;
    assume 1 + relativeAuctionTime_s3797 >= 0;
    assume startPrice_ValidatorAuction[this] * (1 + relativeAuctionTime_s3797) >= 0;
    assume relativeAuctionTime_s3797 >= 0;
    assume 1 + relativeAuctionTime_s3797 >= 0;
    assume decay_s3797 >= 0;
    assume 1 + relativeAuctionTime_s3797 + decay_s3797 >= 0;
    assume startPrice_ValidatorAuction[this] * (1 + relativeAuctionTime_s3797) div (1 + relativeAuctionTime_s3797 + decay_s3797) >= 0;
    price_s3797 := startPrice_ValidatorAuction[this] * (1 + relativeAuctionTime_s3797) div (1 + relativeAuctionTime_s3797 + decay_s3797);
    call {:si_unique_call 151} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3797);
    goto corral_source_split_130;

  corral_source_split_130:
    assume price_s3797 >= 0;
    __ret_0_ := price_s3797;
    return;
}



procedure withdrawAfterAuctionEnded_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies M_Ref_int;



implementation {:ForceInline} withdrawAfterAuctionEnded_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s3840: int;

  anon0:
    call {:si_unique_call 152} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 153} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 154} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 155} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 156} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 157} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 3);
    goto corral_source_split_132;

  corral_source_split_132:
    goto corral_source_split_133;

  corral_source_split_133:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] > lowestSlotPrice_ValidatorAuction[this];
    goto corral_source_split_134;

  corral_source_split_134:
    assume valueToWithdraw_s3840 >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] - lowestSlotPrice_ValidatorAuction[this] >= 0;
    valueToWithdraw_s3840 := M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] - lowestSlotPrice_ValidatorAuction[this];
    call {:si_unique_call 158} {:cexpr "valueToWithdraw"} boogie_si_record_sol2Bpl_int(valueToWithdraw_s3840);
    goto corral_source_split_135;

  corral_source_split_135:
    assume valueToWithdraw_s3840 >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume valueToWithdraw_s3840 <= M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG];
    goto corral_source_split_136;

  corral_source_split_136:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume lowestSlotPrice_ValidatorAuction[this] >= 0;
    M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := lowestSlotPrice_ValidatorAuction[this];
    call {:si_unique_call 159} {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
    return;
}



procedure withdrawAfterAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies M_Ref_int;



implementation {:ForceInline} withdrawAfterAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var valueToWithdraw_s3872: int;

  anon0:
    call {:si_unique_call 160} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 161} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 162} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 163} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 164} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 165} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 4);
    goto corral_source_split_138;

  corral_source_split_138:
    goto corral_source_split_139;

  corral_source_split_139:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] > 0;
    goto corral_source_split_140;

  corral_source_split_140:
    assume valueToWithdraw_s3872 >= 0;
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    valueToWithdraw_s3872 := M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG];
    call {:si_unique_call 166} {:cexpr "valueToWithdraw"} boogie_si_record_sol2Bpl_int(valueToWithdraw_s3872);
    goto corral_source_split_141;

  corral_source_split_141:
    assume M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] >= 0;
    M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := 0;
    call {:si_unique_call 167} {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
    return;
}



procedure transitionToDepositPending_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation {:ForceInline} transitionToDepositPending_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 168} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 169} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 170} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 171} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 172} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 173} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
    goto corral_source_split_143;

  corral_source_split_143:
    goto corral_source_split_144;

  corral_source_split_144:
    auctionState_ValidatorAuction[this] := 2;
    goto corral_source_split_145;

  corral_source_split_145:
    assume closeTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    closeTime_ValidatorAuction[this] := now;
    call {:si_unique_call 174} {:cexpr "closeTime"} boogie_si_record_sol2Bpl_int(closeTime_ValidatorAuction[this]);
    goto corral_source_split_146;

  corral_source_split_146:
    assert {:EventEmitted "AuctionDepositPending_ValidatorAuction"} true;
    return;
}



procedure transitionToAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies auctionState_ValidatorAuction, closeTime_ValidatorAuction;



implementation {:ForceInline} transitionToAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 175} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 176} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 177} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 178} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 179} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 180} stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
    goto corral_source_split_148;

  corral_source_split_148:
    goto corral_source_split_149;

  corral_source_split_149:
    auctionState_ValidatorAuction[this] := 4;
    goto corral_source_split_150;

  corral_source_split_150:
    assume closeTime_ValidatorAuction[this] >= 0;
    assume now >= 0;
    closeTime_ValidatorAuction[this] := now;
    call {:si_unique_call 181} {:cexpr "closeTime"} boogie_si_record_sol2Bpl_int(closeTime_ValidatorAuction[this]);
    goto corral_source_split_151;

  corral_source_split_151:
    assert {:EventEmitted "AuctionFailed_ValidatorAuction"} true;
    return;
}



procedure isSenderContract_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (isContract_s3940: bool);



implementation {:ForceInline} isSenderContract_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (isContract_s3940: bool)
{
  var size_s3939: int;
  var sender_s3939: Ref;

  anon0:
    call {:si_unique_call 182} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 183} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 184} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 185} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 186} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_153;

  corral_source_split_153:
    goto corral_source_split_154;

  corral_source_split_154:
    assume size_s3939 >= 0;
    size_s3939 := 1;
    call {:si_unique_call 187} {:cexpr "size"} boogie_si_record_sol2Bpl_int(size_s3939);
    goto corral_source_split_155;

  corral_source_split_155:
    sender_s3939 := msgsender_MSG;
    call {:si_unique_call 188} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s3939);
    goto corral_source_split_156;

  corral_source_split_156:
    assume size_s3939 >= 0;
    isContract_s3940 := size_s3939 > 0;
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



const {:existential true} HoudiniB1_Ownable: bool;

const {:existential true} HoudiniB2_Ownable: bool;

procedure BoogieEntry_Ownable();



procedure BoogieEntry_DepositLockerInterface();



const {:existential true} HoudiniB1_DepositLocker: bool;

const {:existential true} HoudiniB2_DepositLocker: bool;

const {:existential true} HoudiniB3_DepositLocker: bool;

const {:existential true} HoudiniB4_DepositLocker: bool;

const {:existential true} HoudiniB5_DepositLocker: bool;

const {:existential true} HoudiniB6_DepositLocker: bool;

const {:existential true} HoudiniB7_DepositLocker: bool;

const {:existential true} HoudiniB8_DepositLocker: bool;

const {:existential true} HoudiniB9_DepositLocker: bool;

const {:existential true} HoudiniB10_DepositLocker: bool;

const {:existential true} HoudiniB11_DepositLocker: bool;

const {:existential true} HoudiniB12_DepositLocker: bool;

procedure BoogieEntry_DepositLocker();



const {:existential true} HoudiniB1_ValidatorAuction: bool;

const {:existential true} HoudiniB2_ValidatorAuction: bool;

procedure BoogieEntry_ValidatorAuction();



procedure onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG == owner_Ownable[this];
    return;
}



procedure isInitialised_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} isInitialised_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume initialized_DepositLocker[this];
    return;
}



procedure isDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure isNotDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} isNotDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume !deposited_DepositLocker[this];
    return;
}



procedure onlyDepositorsProxy_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} onlyDepositorsProxy_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG == depositorsProxy_DepositLocker[this];
    return;
}



procedure stateIs_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s3300: int);



implementation {:ForceInline} stateIs_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s3300: int)
{

  anon0:
    assume auctionState_ValidatorAuction[this] == state_s3300;
    return;
}



procedure CorralChoice_Ownable(this: Ref);



procedure CorralEntry_Ownable();



procedure CorralChoice_DepositLockerInterface(this: Ref);



procedure CorralEntry_DepositLockerInterface();



procedure CorralChoice_DepositLocker(this: Ref);



procedure CorralEntry_DepositLocker();



procedure CorralChoice_ValidatorAuction(this: Ref);
  modifies now, Alloc, owner_Ownable, Balance, M_Ref_int, M_int_Ref, Length, lowestSlotPrice_ValidatorAuction, M_Ref_bool, numberOfDepositors_DepositLocker, auctionState_ValidatorAuction, startTime_ValidatorAuction, valuePerDepositor_DepositLocker, deposited_DepositLocker, closeTime_ValidatorAuction;



implementation CorralChoice_ValidatorAuction(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newOwner_s43: Ref;
  var addressesToWhitelist_s510: Ref;
  var addressesToWhitelist_s624: Ref;
  var addressesToWhitelist_s745: Ref;
  var addressesToWhitelist_s860: Ref;
  var addressesToWhitelist_s980: Ref;
  var addressesToWhitelist_s1100: Ref;
  var addressesToWhitelist_s1214: Ref;
  var addressesToWhitelist_s1328: Ref;
  var addressesToWhitelist_s1469: Ref;
  var addressesToWhitelist_s1581: Ref;
  var addressesToWhitelist_s1700: Ref;
  var addressesToWhitelist_s1813: Ref;
  var addressesToWhitelist_s1931: Ref;
  var addressesToWhitelist_s2049: Ref;
  var addressesToWhitelist_s2161: Ref;
  var addressesToWhitelist_s2273: Ref;
  var addressesToWhitelist_s2412: Ref;
  var addressesToWhitelist_s2522: Ref;
  var addressesToWhitelist_s2639: Ref;
  var addressesToWhitelist_s2750: Ref;
  var addressesToWhitelist_s2866: Ref;
  var addressesToWhitelist_s2982: Ref;
  var addressesToWhitelist_s3092: Ref;
  var addressesToWhitelist_s3202: Ref;
  var _startPriceInWei_s3396: int;
  var _auctionDurationInDays_s3396: int;
  var _minimalNumberOfParticipants_s3396: int;
  var _maximalNumberOfParticipants_s3396: int;
  var _depositLocker_s3396: Ref;
  var addressesToWhitelist_s3670: Ref;
  var __ret_0_currentPrice: int;
  var secondsSinceStart_s3798: int;
  var __ret_0_priceAtElapsedTime: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newOwner_s43;
    havoc addressesToWhitelist_s510;
    havoc addressesToWhitelist_s624;
    havoc addressesToWhitelist_s745;
    havoc addressesToWhitelist_s860;
    havoc addressesToWhitelist_s980;
    havoc addressesToWhitelist_s1100;
    havoc addressesToWhitelist_s1214;
    havoc addressesToWhitelist_s1328;
    havoc addressesToWhitelist_s1469;
    havoc addressesToWhitelist_s1581;
    havoc addressesToWhitelist_s1700;
    havoc addressesToWhitelist_s1813;
    havoc addressesToWhitelist_s1931;
    havoc addressesToWhitelist_s2049;
    havoc addressesToWhitelist_s2161;
    havoc addressesToWhitelist_s2273;
    havoc addressesToWhitelist_s2412;
    havoc addressesToWhitelist_s2522;
    havoc addressesToWhitelist_s2639;
    havoc addressesToWhitelist_s2750;
    havoc addressesToWhitelist_s2866;
    havoc addressesToWhitelist_s2982;
    havoc addressesToWhitelist_s3092;
    havoc addressesToWhitelist_s3202;
    havoc _startPriceInWei_s3396;
    havoc _auctionDurationInDays_s3396;
    havoc _minimalNumberOfParticipants_s3396;
    havoc _maximalNumberOfParticipants_s3396;
    havoc _depositLocker_s3396;
    havoc addressesToWhitelist_s3670;
    havoc __ret_0_currentPrice;
    havoc secondsSinceStart_s3798;
    havoc __ret_0_priceAtElapsedTime;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != Ownable;
    assume DType[msgsender_MSG] != DepositLockerInterface;
    assume DType[msgsender_MSG] != DepositLocker;
    assume DType[msgsender_MSG] != ValidatorAuction;
    Alloc[msgsender_MSG] := true;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 189} transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
    return;

  anon34_Else:
    assume {:partition} choice != 33;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 190} withdraw_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon35_Else:
    assume {:partition} choice != 32;
    goto anon36_Then, anon36_Else;

  anon36_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 191} addressesToWhitelist_s510 := FreshRefGenerator();
    call {:si_unique_call 192} vc0x0x0_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s510);
    return;

  anon36_Else:
    assume {:partition} choice != 31;
    goto anon37_Then, anon37_Else;

  anon37_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 193} addressesToWhitelist_s624 := FreshRefGenerator();
    call {:si_unique_call 194} vc0x0x2_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s624);
    return;

  anon37_Else:
    assume {:partition} choice != 30;
    goto anon38_Then, anon38_Else;

  anon38_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 195} addressesToWhitelist_s745 := FreshRefGenerator();
    call {:si_unique_call 196} vc0x0x3_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s745);
    return;

  anon38_Else:
    assume {:partition} choice != 29;
    goto anon39_Then, anon39_Else;

  anon39_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 197} addressesToWhitelist_s860 := FreshRefGenerator();
    call {:si_unique_call 198} vc0x0x4_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s860);
    return;

  anon39_Else:
    assume {:partition} choice != 28;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 199} addressesToWhitelist_s980 := FreshRefGenerator();
    call {:si_unique_call 200} vc0x0x6_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s980);
    return;

  anon40_Else:
    assume {:partition} choice != 27;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 201} addressesToWhitelist_s1100 := FreshRefGenerator();
    call {:si_unique_call 202} vc0x0x7_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1100);
    return;

  anon41_Else:
    assume {:partition} choice != 26;
    goto anon42_Then, anon42_Else;

  anon42_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 203} addressesToWhitelist_s1214 := FreshRefGenerator();
    call {:si_unique_call 204} vc0x0x8_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1214);
    return;

  anon42_Else:
    assume {:partition} choice != 25;
    goto anon43_Then, anon43_Else;

  anon43_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 205} addressesToWhitelist_s1328 := FreshRefGenerator();
    call {:si_unique_call 206} vc0x0x9_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1328);
    return;

  anon43_Else:
    assume {:partition} choice != 24;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 207} addressesToWhitelist_s1469 := FreshRefGenerator();
    call {:si_unique_call 208} vc0x1x0_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1469);
    return;

  anon44_Else:
    assume {:partition} choice != 23;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 209} addressesToWhitelist_s1581 := FreshRefGenerator();
    call {:si_unique_call 210} vc0x1x2_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1581);
    return;

  anon45_Else:
    assume {:partition} choice != 22;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 211} addressesToWhitelist_s1700 := FreshRefGenerator();
    call {:si_unique_call 212} vc0x1x3_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1700);
    return;

  anon46_Else:
    assume {:partition} choice != 21;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 213} addressesToWhitelist_s1813 := FreshRefGenerator();
    call {:si_unique_call 214} vc0x1x4_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1813);
    return;

  anon47_Else:
    assume {:partition} choice != 20;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 215} addressesToWhitelist_s1931 := FreshRefGenerator();
    call {:si_unique_call 216} vc0x1x6_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s1931);
    return;

  anon48_Else:
    assume {:partition} choice != 19;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 217} addressesToWhitelist_s2049 := FreshRefGenerator();
    call {:si_unique_call 218} vc0x1x7_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2049);
    return;

  anon49_Else:
    assume {:partition} choice != 18;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 219} addressesToWhitelist_s2161 := FreshRefGenerator();
    call {:si_unique_call 220} vc0x1x8_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2161);
    return;

  anon50_Else:
    assume {:partition} choice != 17;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 221} addressesToWhitelist_s2273 := FreshRefGenerator();
    call {:si_unique_call 222} vc0x1x9_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2273);
    return;

  anon51_Else:
    assume {:partition} choice != 16;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 223} addressesToWhitelist_s2412 := FreshRefGenerator();
    call {:si_unique_call 224} vc0x2x0_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2412);
    return;

  anon52_Else:
    assume {:partition} choice != 15;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 225} addressesToWhitelist_s2522 := FreshRefGenerator();
    call {:si_unique_call 226} vc0x2x2_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2522);
    return;

  anon53_Else:
    assume {:partition} choice != 14;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 227} addressesToWhitelist_s2639 := FreshRefGenerator();
    call {:si_unique_call 228} vc0x2x3_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2639);
    return;

  anon54_Else:
    assume {:partition} choice != 13;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 229} addressesToWhitelist_s2750 := FreshRefGenerator();
    call {:si_unique_call 230} vc0x2x4_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2750);
    return;

  anon55_Else:
    assume {:partition} choice != 12;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 231} addressesToWhitelist_s2866 := FreshRefGenerator();
    call {:si_unique_call 232} vc0x2x6_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2866);
    return;

  anon56_Else:
    assume {:partition} choice != 11;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 233} addressesToWhitelist_s2982 := FreshRefGenerator();
    call {:si_unique_call 234} vc0x2x7_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s2982);
    return;

  anon57_Else:
    assume {:partition} choice != 10;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 235} addressesToWhitelist_s3092 := FreshRefGenerator();
    call {:si_unique_call 236} vc0x2x8_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s3092);
    return;

  anon58_Else:
    assume {:partition} choice != 9;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 237} addressesToWhitelist_s3202 := FreshRefGenerator();
    call {:si_unique_call 238} vc0x2x9_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s3202);
    return;

  anon59_Else:
    assume {:partition} choice != 8;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 239} bid_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon60_Else:
    assume {:partition} choice != 7;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 240} startAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon61_Else:
    assume {:partition} choice != 6;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 241} depositBids_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon62_Else:
    assume {:partition} choice != 5;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 242} closeAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon63_Else:
    assume {:partition} choice != 4;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 243} addressesToWhitelist_s3670 := FreshRefGenerator();
    call {:si_unique_call 244} addToWhitelist_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s3670);
    return;

  anon64_Else:
    assume {:partition} choice != 3;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 245} __ret_0_currentPrice := currentPrice_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon65_Else:
    assume {:partition} choice != 2;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 246} __ret_0_priceAtElapsedTime := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s3798);
    return;

  anon66_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_ValidatorAuction();
  modifies Alloc, Balance, owner_Ownable, auctionDurationInDays_ValidatorAuction, startPrice_ValidatorAuction, minimalNumberOfParticipants_ValidatorAuction, maximalNumberOfParticipants_ValidatorAuction, whitelist_ValidatorAuction, bids_ValidatorAuction, bidders_ValidatorAuction, startTime_ValidatorAuction, closeTime_ValidatorAuction, lowestSlotPrice_ValidatorAuction, depositLocker_ValidatorAuction, auctionState_ValidatorAuction, now, M_Ref_int, M_int_Ref, Length, M_Ref_bool, numberOfDepositors_DepositLocker, valuePerDepositor_DepositLocker, deposited_DepositLocker;



implementation CorralEntry_ValidatorAuction()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var _startPriceInWei_s3396: int;
  var _auctionDurationInDays_s3396: int;
  var _minimalNumberOfParticipants_s3396: int;
  var _maximalNumberOfParticipants_s3396: int;
  var _depositLocker_s3396: Ref;

  anon0:
    call {:si_unique_call 247} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == ValidatorAuction;
    call {:si_unique_call 248} ValidatorAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s3396, _auctionDurationInDays_s3396, _minimalNumberOfParticipants_s3396, _maximalNumberOfParticipants_s3396, _depositLocker_s3396);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 249} CorralChoice_ValidatorAuction(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


