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

procedure {:public} vc0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s23: Ref);



implementation {:ForceInline} vc0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s23: Ref)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s23);
    call {:si_unique_call 5} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume State_BasicProvenance[this] != 2 && State_BasicProvenance[this] != 2;
    goto corral_source_split_3;

  corral_source_split_3:
    assert false;
    return;
}



var State_BasicProvenance: [Ref]int;

var InitiatingCounterparty_BasicProvenance: [Ref]Ref;

var Counterparty_BasicProvenance: [Ref]Ref;

var PreviousCounterparty_BasicProvenance: [Ref]Ref;

var SupplyChainOwner_BasicProvenance: [Ref]Ref;

var SupplyChainObserver_BasicProvenance: [Ref]Ref;

procedure BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s69: Ref, supplyChainObserver_s69: Ref);
  modifies Balance, InitiatingCounterparty_BasicProvenance, Counterparty_BasicProvenance, PreviousCounterparty_BasicProvenance, SupplyChainOwner_BasicProvenance, SupplyChainObserver_BasicProvenance, State_BasicProvenance;



implementation {:ForceInline} BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s69: Ref, supplyChainObserver_s69: Ref)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InitiatingCounterparty_BasicProvenance[this] := null;
    Counterparty_BasicProvenance[this] := null;
    PreviousCounterparty_BasicProvenance[this] := null;
    SupplyChainOwner_BasicProvenance[this] := null;
    SupplyChainObserver_BasicProvenance[this] := null;
    call {:si_unique_call 6} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 7} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 8} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 9} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 10} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s69);
    call {:si_unique_call 11} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s69);
    call {:si_unique_call 12} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_5;

  corral_source_split_5:
    goto corral_source_split_6;

  corral_source_split_6:
    InitiatingCounterparty_BasicProvenance[this] := msgsender_MSG;
    call {:si_unique_call 13} {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_BasicProvenance[this]);
    goto corral_source_split_7;

  corral_source_split_7:
    Counterparty_BasicProvenance[this] := InitiatingCounterparty_BasicProvenance[this];
    call {:si_unique_call 14} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    SupplyChainOwner_BasicProvenance[this] := supplyChainOwner_s69;
    call {:si_unique_call 15} {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_BasicProvenance[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    SupplyChainObserver_BasicProvenance[this] := supplyChainObserver_s69;
    call {:si_unique_call 16} {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_BasicProvenance[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    State_BasicProvenance[this] := 0;
    return;
}



procedure {:constructor} {:public} BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s69: Ref, supplyChainObserver_s69: Ref);
  modifies Balance, InitiatingCounterparty_BasicProvenance, Counterparty_BasicProvenance, PreviousCounterparty_BasicProvenance, SupplyChainOwner_BasicProvenance, SupplyChainObserver_BasicProvenance, State_BasicProvenance;



implementation {:ForceInline} BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s69: Ref, supplyChainObserver_s69: Ref)
{

  anon0:
    call {:si_unique_call 17} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 18} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 19} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 20} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 21} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s69);
    call {:si_unique_call 22} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s69);
    call {:si_unique_call 23} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 24} BasicProvenance_BasicProvenance_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s69, supplyChainObserver_s69);
    return;
}



procedure {:public} TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s108: Ref);
  modifies State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation {:ForceInline} TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s108: Ref)
{

  anon0:
    call {:si_unique_call 25} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 26} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 27} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 28} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 29} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s108);
    call {:si_unique_call 30} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_12;

  corral_source_split_12:
    goto corral_source_split_13;

  corral_source_split_13:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} Counterparty_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2;
    goto corral_source_split_15;

  corral_source_split_15:
    goto corral_source_split_16;

  corral_source_split_16:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(Counterparty_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} State_BasicProvenance[this] == 0;
    goto corral_source_split_18;

  corral_source_split_18:
    goto corral_source_split_19;

  corral_source_split_19:
    State_BasicProvenance[this] := 1;
    goto anon4;

  anon6_Else:
    assume {:partition} State_BasicProvenance[this] != 0;
    goto anon4;

  anon4:
    PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
    call {:si_unique_call 31} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
    goto corral_source_split_21;

  corral_source_split_21:
    Counterparty_BasicProvenance[this] := newCounterparty_s108;
    call {:si_unique_call 32} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
    return;
}



procedure {:public} Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_BasicProvenance, PreviousCounterparty_BasicProvenance, Counterparty_BasicProvenance;



implementation {:ForceInline} Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_23;

  corral_source_split_23:
    goto corral_source_split_24;

  corral_source_split_24:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} SupplyChainOwner_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2;
    goto corral_source_split_26;

  corral_source_split_26:
    goto corral_source_split_27;

  corral_source_split_27:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} !(SupplyChainOwner_BasicProvenance[this] != msgsender_MSG || State_BasicProvenance[this] == 2);
    goto anon2;

  anon2:
    State_BasicProvenance[this] := 2;
    goto corral_source_split_29;

  corral_source_split_29:
    PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
    call {:si_unique_call 38} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
    goto corral_source_split_30;

  corral_source_split_30:
    __var_1 := null;
    Counterparty_BasicProvenance[this] := __var_1;
    call {:si_unique_call 39} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
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
  var newCounterparty_s23: Ref;
  var supplyChainOwner_s69: Ref;
  var supplyChainObserver_s69: Ref;
  var newCounterparty_s108: Ref;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc newCounterparty_s23;
    havoc supplyChainOwner_s69;
    havoc supplyChainObserver_s69;
    havoc newCounterparty_s108;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != BasicProvenance;
    Alloc[msgsender_MSG] := true;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 40} vc0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s23);
    return;

  anon4_Else:
    assume {:partition} choice != 3;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 41} TransferResponsibility_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s108);
    return;

  anon5_Else:
    assume {:partition} choice != 2;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 42} Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon6_Else:
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
  var supplyChainOwner_s69: Ref;
  var supplyChainObserver_s69: Ref;

  anon0:
    call {:si_unique_call 43} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == BasicProvenance;
    call {:si_unique_call 44} BasicProvenance_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s69, supplyChainObserver_s69);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 45} CorralChoice_BasicProvenance(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


