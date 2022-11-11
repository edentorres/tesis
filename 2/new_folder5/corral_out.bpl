type Ref;

type ContractName;

const unique null: Ref;

const unique BasicProvenance: ContractName;

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

procedure {:public} vc0x0x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s48: Ref);



procedure {:public} vc0x0x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s94: Ref);



procedure {:public} vc0x1x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s137: Ref);



procedure {:public} vc0x1x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s179: Ref);



procedure {:public} vc0x2x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s226: Ref);



procedure {:public} vc0x2x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s272: Ref);
  modifies State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation {:ForceInline} vc0x2x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s272: Ref)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s272);
    call {:si_unique_call 5} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume State_BasicProvenance[this] != 2 && State_BasicProvenance[this] != 2;
    goto corral_source_split_3;

  corral_source_split_3:
    assume SupplyChainOwner_BasicProvenance[this] == msgsender_MSG;
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 6} Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(!(State_BasicProvenance[this] != 2) && !(State_BasicProvenance[this] != 2));
    return;
}



procedure {:public} vc0x3x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s315: Ref);



procedure {:public} vc0x3x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s357: Ref);



procedure {:public} vc0x4x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s404: Ref);



procedure {:public} vc0x4x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s450: Ref);



procedure {:public} vc0x5x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s493: Ref);



procedure {:public} vc0x5x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s535: Ref);



var State_BasicProvenance: [Ref]int;

var InitiatingCounterparty_BasicProvenance: [Ref]Ref;

var Counterparty_BasicProvenance: [Ref]Ref;

var PreviousCounterparty_BasicProvenance: [Ref]Ref;

var SupplyChainOwner_BasicProvenance: [Ref]Ref;

var SupplyChainObserver_BasicProvenance: [Ref]Ref;

procedure BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref);
  modifies Balance, InitiatingCounterparty_BasicProvenance, Counterparty_BasicProvenance, PreviousCounterparty_BasicProvenance, SupplyChainOwner_BasicProvenance, SupplyChainObserver_BasicProvenance, State_BasicProvenance;



implementation {:ForceInline} BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InitiatingCounterparty_BasicProvenance[this] := null;
    Counterparty_BasicProvenance[this] := null;
    PreviousCounterparty_BasicProvenance[this] := null;
    SupplyChainOwner_BasicProvenance[this] := null;
    SupplyChainObserver_BasicProvenance[this] := null;
    call {:si_unique_call 7} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 8} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 9} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 10} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 11} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s581);
    call {:si_unique_call 12} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s581);
    call {:si_unique_call 13} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    InitiatingCounterparty_BasicProvenance[this] := msgsender_MSG;
    call {:si_unique_call 14} {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_BasicProvenance[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    Counterparty_BasicProvenance[this] := InitiatingCounterparty_BasicProvenance[this];
    call {:si_unique_call 15} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    SupplyChainOwner_BasicProvenance[this] := supplyChainOwner_s581;
    call {:si_unique_call 16} {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_BasicProvenance[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    SupplyChainObserver_BasicProvenance[this] := supplyChainObserver_s581;
    call {:si_unique_call 17} {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_BasicProvenance[this]);
    goto corral_source_split_12;

  corral_source_split_12:
    State_BasicProvenance[this] := 0;
    return;
}



procedure {:constructor} {:public} BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref);
  modifies Balance, InitiatingCounterparty_BasicProvenance, Counterparty_BasicProvenance, PreviousCounterparty_BasicProvenance, SupplyChainOwner_BasicProvenance, SupplyChainObserver_BasicProvenance, State_BasicProvenance;



implementation {:ForceInline} BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref)
{

  anon0:
    call {:si_unique_call 18} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 19} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 20} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 21} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 22} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s581);
    call {:si_unique_call 23} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s581);
    call {:si_unique_call 24} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 25} BasicProvenance_BasicProvenance_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s581, supplyChainObserver_s581);
    return;
}



procedure {:public} TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s620: Ref);
  modifies State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation {:ForceInline} TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s620: Ref)
{

  anon0:
    call {:si_unique_call 26} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 27} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 28} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 29} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 30} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s620);
    call {:si_unique_call 31} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_14;

  corral_source_split_14:
    goto corral_source_split_15;

  corral_source_split_15:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} Counterparty_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2;
    goto corral_source_split_17;

  corral_source_split_17:
    goto corral_source_split_18;

  corral_source_split_18:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(Counterparty_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} State_BasicProvenance[this] == 0;
    goto corral_source_split_20;

  corral_source_split_20:
    goto corral_source_split_21;

  corral_source_split_21:
    State_BasicProvenance[this] := 1;
    goto anon4;

  anon6_Else:
    assume {:partition} State_BasicProvenance[this] != 0;
    goto anon4;

  anon4:
    PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
    call {:si_unique_call 32} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
    goto corral_source_split_23;

  corral_source_split_23:
    Counterparty_BasicProvenance[this] := newCounterparty_s620;
    call {:si_unique_call 33} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
    return;
}



procedure {:public} Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation {:ForceInline} Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_25;

  corral_source_split_25:
    goto corral_source_split_26;

  corral_source_split_26:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} SupplyChainOwner_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2;
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} !(SupplyChainOwner_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2);
    goto anon2;

  anon2:
    State_BasicProvenance[this] := 2;
    goto corral_source_split_31;

  corral_source_split_31:
    PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
    call {:si_unique_call 39} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
    goto corral_source_split_32;

  corral_source_split_32:
    __var_1 := null;
    Counterparty_BasicProvenance[this] := __var_1;
    call {:si_unique_call 40} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



const {:existential true} HoudiniB1_BasicProvenance: bool;

const {:existential true} HoudiniB2_BasicProvenance: bool;

const {:existential true} HoudiniB3_BasicProvenance: bool;

const {:existential true} HoudiniB4_BasicProvenance: bool;

const {:existential true} HoudiniB5_BasicProvenance: bool;

const {:existential true} HoudiniB6_BasicProvenance: bool;

const {:existential true} HoudiniB7_BasicProvenance: bool;

const {:existential true} HoudiniB8_BasicProvenance: bool;

const {:existential true} HoudiniB9_BasicProvenance: bool;

const {:existential true} HoudiniB10_BasicProvenance: bool;

const {:existential true} HoudiniB11_BasicProvenance: bool;

const {:existential true} HoudiniB12_BasicProvenance: bool;

const {:existential true} HoudiniB13_BasicProvenance: bool;

const {:existential true} HoudiniB14_BasicProvenance: bool;

const {:existential true} HoudiniB15_BasicProvenance: bool;

const {:existential true} HoudiniB16_BasicProvenance: bool;

const {:existential true} HoudiniB17_BasicProvenance: bool;

const {:existential true} HoudiniB18_BasicProvenance: bool;

const {:existential true} HoudiniB19_BasicProvenance: bool;

const {:existential true} HoudiniB20_BasicProvenance: bool;

const {:existential true} HoudiniB21_BasicProvenance: bool;

const {:existential true} HoudiniB22_BasicProvenance: bool;

const {:existential true} HoudiniB23_BasicProvenance: bool;

const {:existential true} HoudiniB24_BasicProvenance: bool;

const {:existential true} HoudiniB25_BasicProvenance: bool;

const {:existential true} HoudiniB26_BasicProvenance: bool;

const {:existential true} HoudiniB27_BasicProvenance: bool;

const {:existential true} HoudiniB28_BasicProvenance: bool;

const {:existential true} HoudiniB29_BasicProvenance: bool;

const {:existential true} HoudiniB30_BasicProvenance: bool;

procedure BoogieEntry_BasicProvenance();



procedure CorralChoice_BasicProvenance(this: Ref);
  modifies now, Alloc, State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation CorralChoice_BasicProvenance(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var newCounterparty_s48: Ref;
  var newCounterparty_s94: Ref;
  var newCounterparty_s137: Ref;
  var newCounterparty_s179: Ref;
  var newCounterparty_s226: Ref;
  var newCounterparty_s272: Ref;
  var newCounterparty_s315: Ref;
  var newCounterparty_s357: Ref;
  var newCounterparty_s404: Ref;
  var newCounterparty_s450: Ref;
  var newCounterparty_s493: Ref;
  var newCounterparty_s535: Ref;
  var supplyChainOwner_s581: Ref;
  var supplyChainObserver_s581: Ref;
  var newCounterparty_s620: Ref;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newCounterparty_s48;
    havoc newCounterparty_s94;
    havoc newCounterparty_s137;
    havoc newCounterparty_s179;
    havoc newCounterparty_s226;
    havoc newCounterparty_s272;
    havoc newCounterparty_s315;
    havoc newCounterparty_s357;
    havoc newCounterparty_s404;
    havoc newCounterparty_s450;
    havoc newCounterparty_s493;
    havoc newCounterparty_s535;
    havoc supplyChainOwner_s581;
    havoc supplyChainObserver_s581;
    havoc newCounterparty_s620;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != BasicProvenance;
    Alloc[msgsender_MSG] := true;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 41} vc0x0x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s48);
    return;

  anon15_Else:
    assume {:partition} choice != 14;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 42} vc0x0x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s94);
    return;

  anon16_Else:
    assume {:partition} choice != 13;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 43} vc0x1x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s137);
    return;

  anon17_Else:
    assume {:partition} choice != 12;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 44} vc0x1x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s179);
    return;

  anon18_Else:
    assume {:partition} choice != 11;
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 45} vc0x2x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s226);
    return;

  anon19_Else:
    assume {:partition} choice != 10;
    goto anon20_Then, anon20_Else;

  anon20_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 46} vc0x2x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s272);
    return;

  anon20_Else:
    assume {:partition} choice != 9;
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 47} vc0x3x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s315);
    return;

  anon21_Else:
    assume {:partition} choice != 8;
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 48} vc0x3x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s357);
    return;

  anon22_Else:
    assume {:partition} choice != 7;
    goto anon23_Then, anon23_Else;

  anon23_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 49} vc0x4x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s404);
    return;

  anon23_Else:
    assume {:partition} choice != 6;
    goto anon24_Then, anon24_Else;

  anon24_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 50} vc0x4x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s450);
    return;

  anon24_Else:
    assume {:partition} choice != 5;
    goto anon25_Then, anon25_Else;

  anon25_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 51} vc0x5x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s493);
    return;

  anon25_Else:
    assume {:partition} choice != 4;
    goto anon26_Then, anon26_Else;

  anon26_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 52} vc0x5x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s535);
    return;

  anon26_Else:
    assume {:partition} choice != 3;
    goto anon27_Then, anon27_Else;

  anon27_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 53} TransferResponsibility_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s620);
    return;

  anon27_Else:
    assume {:partition} choice != 2;
    goto anon28_Then, anon28_Else;

  anon28_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 54} Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon28_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_BasicProvenance();
  modifies Alloc, Balance, InitiatingCounterparty_BasicProvenance, Counterparty_BasicProvenance, PreviousCounterparty_BasicProvenance, SupplyChainOwner_BasicProvenance, SupplyChainObserver_BasicProvenance, State_BasicProvenance, now;



implementation CorralEntry_BasicProvenance()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var supplyChainOwner_s581: Ref;
  var supplyChainObserver_s581: Ref;

  anon0:
    call {:si_unique_call 55} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == BasicProvenance;
    call {:si_unique_call 56} BasicProvenance_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s581, supplyChainObserver_s581);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 57} CorralChoice_BasicProvenance(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


