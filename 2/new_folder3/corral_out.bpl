type Ref;

type ContractName;

const unique null: Ref;

const unique AssetTransfer: ContractName;

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

procedure {:public} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s267: int, inspector_s267: Ref, appraiser_s267: Ref, description_s267: int, price_s267: int);



procedure {:public} validCombination0x0x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s533: int, inspector_s533: Ref, appraiser_s533: Ref, description_s533: int, price_s533: int);



procedure {:public} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s837: int, inspector_s837: Ref, appraiser_s837: Ref, description_s837: int, price_s837: int);



procedure {:public} validCombination0x0x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1103: int, inspector_s1103: Ref, appraiser_s1103: Ref, description_s1103: int, price_s1103: int);



procedure {:public} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1369: int, inspector_s1369: Ref, appraiser_s1369: Ref, description_s1369: int, price_s1369: int);



procedure {:public} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1635: int, inspector_s1635: Ref, appraiser_s1635: Ref, description_s1635: int, price_s1635: int);



procedure {:public} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1899: int, inspector_s1899: Ref, appraiser_s1899: Ref, description_s1899: int, price_s1899: int);



procedure {:public} validCombination0x1x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2163: int, inspector_s2163: Ref, appraiser_s2163: Ref, description_s2163: int, price_s2163: int);



procedure {:public} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2465: int, inspector_s2465: Ref, appraiser_s2465: Ref, description_s2465: int, price_s2465: int);



procedure {:public} validCombination0x1x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2729: int, inspector_s2729: Ref, appraiser_s2729: Ref, description_s2729: int, price_s2729: int);



procedure {:public} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2993: int, inspector_s2993: Ref, appraiser_s2993: Ref, description_s2993: int, price_s2993: int);



procedure {:public} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3257: int, inspector_s3257: Ref, appraiser_s3257: Ref, description_s3257: int, price_s3257: int);



procedure {:public} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3519: int, inspector_s3519: Ref, appraiser_s3519: Ref, description_s3519: int, price_s3519: int);



procedure {:public} validCombination0x2x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3781: int, inspector_s3781: Ref, appraiser_s3781: Ref, description_s3781: int, price_s3781: int);



procedure {:public} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4081: int, inspector_s4081: Ref, appraiser_s4081: Ref, description_s4081: int, price_s4081: int);



procedure {:public} validCombination0x2x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4343: int, inspector_s4343: Ref, appraiser_s4343: Ref, description_s4343: int, price_s4343: int);



procedure {:public} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4605: int, inspector_s4605: Ref, appraiser_s4605: Ref, description_s4605: int, price_s4605: int);



procedure {:public} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4867: int, inspector_s4867: Ref, appraiser_s4867: Ref, description_s4867: int, price_s4867: int);



procedure {:public} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5129: int, inspector_s5129: Ref, appraiser_s5129: Ref, description_s5129: int, price_s5129: int);



procedure {:public} validCombination0x3x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5391: int, inspector_s5391: Ref, appraiser_s5391: Ref, description_s5391: int, price_s5391: int);



procedure {:public} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5691: int, inspector_s5691: Ref, appraiser_s5691: Ref, description_s5691: int, price_s5691: int);



procedure {:public} validCombination0x3x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5953: int, inspector_s5953: Ref, appraiser_s5953: Ref, description_s5953: int, price_s5953: int);



procedure {:public} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6215: int, inspector_s6215: Ref, appraiser_s6215: Ref, description_s6215: int, price_s6215: int);



procedure {:public} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6477: int, inspector_s6477: Ref, appraiser_s6477: Ref, description_s6477: int, price_s6477: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6477: int, inspector_s6477: Ref, appraiser_s6477: Ref, description_s6477: int, price_s6477: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6477);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6477);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6477);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6477);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6477);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4);
    goto corral_source_split_3;

  corral_source_split_3:
    assume InstanceInspector_AssetTransfer[this] == msgsender_MSG;
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 10} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
    return;
}



procedure {:public} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6735: int, inspector_s6735: Ref, appraiser_s6735: Ref, description_s6735: int, price_s6735: int);



procedure {:public} validCombination0x4x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6993: int, inspector_s6993: Ref, appraiser_s6993: Ref, description_s6993: int, price_s6993: int);



procedure {:public} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7289: int, inspector_s7289: Ref, appraiser_s7289: Ref, description_s7289: int, price_s7289: int);



procedure {:public} validCombination0x4x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7547: int, inspector_s7547: Ref, appraiser_s7547: Ref, description_s7547: int, price_s7547: int);



procedure {:public} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7805: int, inspector_s7805: Ref, appraiser_s7805: Ref, description_s7805: int, price_s7805: int);



procedure {:public} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8063: int, inspector_s8063: Ref, appraiser_s8063: Ref, description_s8063: int, price_s8063: int);



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := 582059027;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 11} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 12} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 13} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 14} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 15} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8116);
    call {:si_unique_call 16} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8116);
    call {:si_unique_call 17} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    InstanceOwner_AssetTransfer[this] := msgsender_MSG;
    call {:si_unique_call 18} {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s8116 >= 0;
    AskingPrice_AssetTransfer[this] := price_s8116;
    call {:si_unique_call 19} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    Description_AssetTransfer[this] := description_s8116;
    call {:si_unique_call 20} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int)
{

  anon0:
    call {:si_unique_call 21} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 22} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 23} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 24} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 25} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8116);
    call {:si_unique_call 26} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8116);
    call {:si_unique_call 27} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 28} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s8116, price_s8116);
    return;
}



procedure {:public} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 29} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 30} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 31} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 32} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 33} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_13;

  corral_source_split_13:
    goto corral_source_split_14;

  corral_source_split_14:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_16;

  corral_source_split_16:
    goto corral_source_split_17;

  corral_source_split_17:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    State_AssetTransfer[this] := 9;
    return;
}



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8168: int, price_s8168: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8168: int, price_s8168: int)
{

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8168);
    call {:si_unique_call 39} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8168);
    call {:si_unique_call 40} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_19;

  corral_source_split_19:
    goto corral_source_split_20;

  corral_source_split_20:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 0;
    goto corral_source_split_22;

  corral_source_split_22:
    goto corral_source_split_23;

  corral_source_split_23:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 0;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_25;

  corral_source_split_25:
    goto corral_source_split_26;

  corral_source_split_26:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    Description_AssetTransfer[this] := description_s8168;
    call {:si_unique_call 41} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_28;

  corral_source_split_28:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s8168 >= 0;
    AskingPrice_AssetTransfer[this] := price_s8168;
    call {:si_unique_call 42} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8238: Ref, appraiser_s8238: Ref, offerPrice_s8238: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8238: Ref, appraiser_s8238: Ref, offerPrice_s8238: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s8238);
    call {:si_unique_call 48} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s8238);
    call {:si_unique_call 49} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8238);
    call {:si_unique_call 50} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s8238 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s8238 == null || appraiser_s8238 == null || offerPrice_s8238 == 0;
    goto corral_source_split_33;

  corral_source_split_33:
    goto corral_source_split_34;

  corral_source_split_34:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s8238 == null || appraiser_s8238 == null || offerPrice_s8238 == 0);
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] != 0;
    goto corral_source_split_36;

  corral_source_split_36:
    goto corral_source_split_37;

  corral_source_split_37:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] == 0;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto corral_source_split_39;

  corral_source_split_39:
    goto corral_source_split_40;

  corral_source_split_40:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto anon6;

  anon6:
    InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
    call {:si_unique_call 51} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    InstanceInspector_AssetTransfer[this] := inspector_s8238;
    call {:si_unique_call 52} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s8238;
    call {:si_unique_call 53} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_44;

  corral_source_split_44:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s8238 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s8238;
    call {:si_unique_call 54} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    goto corral_source_split_45;

  corral_source_split_45:
    State_AssetTransfer[this] := 1;
    return;
}



procedure {:public} AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 55} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 56} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 57} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 58} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 59} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_47;

  corral_source_split_47:
    goto corral_source_split_48;

  corral_source_split_48:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1;
    goto corral_source_split_50;

  corral_source_split_50:
    goto corral_source_split_51;

  corral_source_split_51:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_53;

  corral_source_split_53:
    goto corral_source_split_54;

  corral_source_split_54:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    State_AssetTransfer[this] := 2;
    return;
}



procedure {:public} Reject_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies InstanceBuyer_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} Reject_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_3: Ref;

  anon0:
    call {:si_unique_call 60} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 61} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 62} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 63} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 64} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_56;

  corral_source_split_56:
    goto corral_source_split_57;

  corral_source_split_57:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6;
    goto corral_source_split_59;

  corral_source_split_59:
    goto corral_source_split_60;

  corral_source_split_60:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_62;

  corral_source_split_62:
    goto corral_source_split_63;

  corral_source_split_63:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    __var_3 := null;
    InstanceBuyer_AssetTransfer[this] := __var_3;
    call {:si_unique_call 65} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_65;

  corral_source_split_65:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:public} Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 66} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 67} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 68} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 69} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 70} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_67;

  corral_source_split_67:
    goto corral_source_split_68;

  corral_source_split_68:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} msgsender_MSG != InstanceBuyer_AssetTransfer[this] && msgsender_MSG != InstanceOwner_AssetTransfer[this];
    goto corral_source_split_70;

  corral_source_split_70:
    goto corral_source_split_71;

  corral_source_split_71:
    assume false;
    goto anon2;

  anon15_Else:
    assume {:partition} !(msgsender_MSG != InstanceBuyer_AssetTransfer[this] && msgsender_MSG != InstanceOwner_AssetTransfer[this]);
    goto anon2;

  anon2:
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} msgsender_MSG == InstanceOwner_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6;
    goto corral_source_split_73;

  corral_source_split_73:
    goto corral_source_split_74;

  corral_source_split_74:
    assume false;
    goto anon4;

  anon16_Else:
    assume {:partition} !(msgsender_MSG == InstanceOwner_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6);
    goto anon4;

  anon4:
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} msgsender_MSG == InstanceBuyer_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7;
    goto corral_source_split_76;

  corral_source_split_76:
    goto corral_source_split_77;

  corral_source_split_77:
    assume false;
    goto anon6;

  anon17_Else:
    assume {:partition} !(msgsender_MSG == InstanceBuyer_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7);
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} msgsender_MSG == InstanceBuyer_AssetTransfer[this];
    goto corral_source_split_79;

  corral_source_split_79:
    goto corral_source_split_80;

  corral_source_split_80:
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} State_AssetTransfer[this] == 5;
    goto corral_source_split_82;

  corral_source_split_82:
    goto corral_source_split_83;

  corral_source_split_83:
    State_AssetTransfer[this] := 6;
    return;

  anon19_Else:
    assume {:partition} State_AssetTransfer[this] != 5;
    goto corral_source_split_85;

  corral_source_split_85:
    goto anon20_Then, anon20_Else;

  anon20_Then:
    assume {:partition} State_AssetTransfer[this] == 7;
    goto corral_source_split_87;

  corral_source_split_87:
    goto corral_source_split_88;

  corral_source_split_88:
    State_AssetTransfer[this] := 8;
    return;

  anon20_Else:
    assume {:partition} State_AssetTransfer[this] != 7;
    return;

  anon18_Else:
    assume {:partition} msgsender_MSG != InstanceBuyer_AssetTransfer[this];
    goto corral_source_split_90;

  corral_source_split_90:
    goto corral_source_split_91;

  corral_source_split_91:
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} State_AssetTransfer[this] == 5;
    goto corral_source_split_93;

  corral_source_split_93:
    goto corral_source_split_94;

  corral_source_split_94:
    State_AssetTransfer[this] := 7;
    return;

  anon21_Else:
    assume {:partition} State_AssetTransfer[this] != 5;
    goto corral_source_split_96;

  corral_source_split_96:
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} State_AssetTransfer[this] == 6;
    goto corral_source_split_98;

  corral_source_split_98:
    goto corral_source_split_99;

  corral_source_split_99:
    State_AssetTransfer[this] := 8;
    return;

  anon22_Else:
    assume {:partition} State_AssetTransfer[this] != 6;
    return;
}



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8462: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8462: int)
{

  anon0:
    call {:si_unique_call 71} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 72} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 73} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 74} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 75} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8462);
    call {:si_unique_call 76} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_101;

  corral_source_split_101:
    goto corral_source_split_102;

  corral_source_split_102:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1;
    goto corral_source_split_104;

  corral_source_split_104:
    goto corral_source_split_105;

  corral_source_split_105:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 1;
    goto anon2;

  anon2:
    assume offerPrice_s8462 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s8462 == 0;
    goto corral_source_split_107;

  corral_source_split_107:
    goto corral_source_split_108;

  corral_source_split_108:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s8462 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s8462 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s8462;
    call {:si_unique_call 77} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    return;
}



procedure {:public} RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: Ref;

  anon0:
    call {:si_unique_call 78} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 79} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 80} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 81} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 82} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_110;

  corral_source_split_110:
    goto corral_source_split_111;

  corral_source_split_111:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7;
    goto corral_source_split_113;

  corral_source_split_113:
    goto corral_source_split_114;

  corral_source_split_114:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_116;

  corral_source_split_116:
    goto corral_source_split_117;

  corral_source_split_117:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceBuyer_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    __var_4 := null;
    InstanceBuyer_AssetTransfer[this] := __var_4;
    call {:si_unique_call 83} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_119;

  corral_source_split_119:
    assume OfferPrice_AssetTransfer[this] >= 0;
    OfferPrice_AssetTransfer[this] := 0;
    call {:si_unique_call 84} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    goto corral_source_split_120;

  corral_source_split_120:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:public} MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 85} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 86} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 87} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 88} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 89} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_122;

  corral_source_split_122:
    goto corral_source_split_123;

  corral_source_split_123:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} InstanceAppraiser_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_125;

  corral_source_split_125:
    goto corral_source_split_126;

  corral_source_split_126:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} InstanceAppraiser_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] == 2;
    goto corral_source_split_128;

  corral_source_split_128:
    goto corral_source_split_129;

  corral_source_split_129:
    State_AssetTransfer[this] := 4;
    return;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] != 2;
    goto corral_source_split_131;

  corral_source_split_131:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} State_AssetTransfer[this] == 3;
    goto corral_source_split_133;

  corral_source_split_133:
    goto corral_source_split_134;

  corral_source_split_134:
    State_AssetTransfer[this] := 5;
    return;

  anon9_Else:
    assume {:partition} State_AssetTransfer[this] != 3;
    goto corral_source_split_136;

  corral_source_split_136:
    goto corral_source_split_137;

  corral_source_split_137:
    assume false;
    return;
}



procedure {:public} MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 90} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 91} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 92} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 93} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 94} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_139;

  corral_source_split_139:
    goto corral_source_split_140;

  corral_source_split_140:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} InstanceInspector_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_142;

  corral_source_split_142:
    goto corral_source_split_143;

  corral_source_split_143:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} InstanceInspector_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] == 2;
    goto corral_source_split_145;

  corral_source_split_145:
    goto corral_source_split_146;

  corral_source_split_146:
    State_AssetTransfer[this] := 3;
    return;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] != 2;
    goto corral_source_split_148;

  corral_source_split_148:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} State_AssetTransfer[this] == 4;
    goto corral_source_split_150;

  corral_source_split_150:
    goto corral_source_split_151;

  corral_source_split_151:
    State_AssetTransfer[this] := 5;
    return;

  anon9_Else:
    assume {:partition} State_AssetTransfer[this] != 4;
    goto corral_source_split_153;

  corral_source_split_153:
    goto corral_source_split_154;

  corral_source_split_154:
    assume false;
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



const {:existential true} HoudiniB1_AssetTransfer: bool;

const {:existential true} HoudiniB2_AssetTransfer: bool;

const {:existential true} HoudiniB3_AssetTransfer: bool;

const {:existential true} HoudiniB4_AssetTransfer: bool;

const {:existential true} HoudiniB5_AssetTransfer: bool;

const {:existential true} HoudiniB6_AssetTransfer: bool;

const {:existential true} HoudiniB7_AssetTransfer: bool;

const {:existential true} HoudiniB8_AssetTransfer: bool;

const {:existential true} HoudiniB9_AssetTransfer: bool;

const {:existential true} HoudiniB10_AssetTransfer: bool;

const {:existential true} HoudiniB11_AssetTransfer: bool;

const {:existential true} HoudiniB12_AssetTransfer: bool;

const {:existential true} HoudiniB13_AssetTransfer: bool;

const {:existential true} HoudiniB14_AssetTransfer: bool;

const {:existential true} HoudiniB15_AssetTransfer: bool;

const {:existential true} HoudiniB16_AssetTransfer: bool;

const {:existential true} HoudiniB17_AssetTransfer: bool;

const {:existential true} HoudiniB18_AssetTransfer: bool;

const {:existential true} HoudiniB19_AssetTransfer: bool;

const {:existential true} HoudiniB20_AssetTransfer: bool;

procedure BoogieEntry_AssetTransfer();



procedure CorralChoice_AssetTransfer(this: Ref);
  modifies now, Alloc, State_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer;



implementation CorralChoice_AssetTransfer(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var offerPrice_s267: int;
  var inspector_s267: Ref;
  var appraiser_s267: Ref;
  var description_s267: int;
  var price_s267: int;
  var offerPrice_s533: int;
  var inspector_s533: Ref;
  var appraiser_s533: Ref;
  var description_s533: int;
  var price_s533: int;
  var offerPrice_s837: int;
  var inspector_s837: Ref;
  var appraiser_s837: Ref;
  var description_s837: int;
  var price_s837: int;
  var offerPrice_s1103: int;
  var inspector_s1103: Ref;
  var appraiser_s1103: Ref;
  var description_s1103: int;
  var price_s1103: int;
  var offerPrice_s1369: int;
  var inspector_s1369: Ref;
  var appraiser_s1369: Ref;
  var description_s1369: int;
  var price_s1369: int;
  var offerPrice_s1635: int;
  var inspector_s1635: Ref;
  var appraiser_s1635: Ref;
  var description_s1635: int;
  var price_s1635: int;
  var offerPrice_s1899: int;
  var inspector_s1899: Ref;
  var appraiser_s1899: Ref;
  var description_s1899: int;
  var price_s1899: int;
  var offerPrice_s2163: int;
  var inspector_s2163: Ref;
  var appraiser_s2163: Ref;
  var description_s2163: int;
  var price_s2163: int;
  var offerPrice_s2465: int;
  var inspector_s2465: Ref;
  var appraiser_s2465: Ref;
  var description_s2465: int;
  var price_s2465: int;
  var offerPrice_s2729: int;
  var inspector_s2729: Ref;
  var appraiser_s2729: Ref;
  var description_s2729: int;
  var price_s2729: int;
  var offerPrice_s2993: int;
  var inspector_s2993: Ref;
  var appraiser_s2993: Ref;
  var description_s2993: int;
  var price_s2993: int;
  var offerPrice_s3257: int;
  var inspector_s3257: Ref;
  var appraiser_s3257: Ref;
  var description_s3257: int;
  var price_s3257: int;
  var offerPrice_s3519: int;
  var inspector_s3519: Ref;
  var appraiser_s3519: Ref;
  var description_s3519: int;
  var price_s3519: int;
  var offerPrice_s3781: int;
  var inspector_s3781: Ref;
  var appraiser_s3781: Ref;
  var description_s3781: int;
  var price_s3781: int;
  var offerPrice_s4081: int;
  var inspector_s4081: Ref;
  var appraiser_s4081: Ref;
  var description_s4081: int;
  var price_s4081: int;
  var offerPrice_s4343: int;
  var inspector_s4343: Ref;
  var appraiser_s4343: Ref;
  var description_s4343: int;
  var price_s4343: int;
  var offerPrice_s4605: int;
  var inspector_s4605: Ref;
  var appraiser_s4605: Ref;
  var description_s4605: int;
  var price_s4605: int;
  var offerPrice_s4867: int;
  var inspector_s4867: Ref;
  var appraiser_s4867: Ref;
  var description_s4867: int;
  var price_s4867: int;
  var offerPrice_s5129: int;
  var inspector_s5129: Ref;
  var appraiser_s5129: Ref;
  var description_s5129: int;
  var price_s5129: int;
  var offerPrice_s5391: int;
  var inspector_s5391: Ref;
  var appraiser_s5391: Ref;
  var description_s5391: int;
  var price_s5391: int;
  var offerPrice_s5691: int;
  var inspector_s5691: Ref;
  var appraiser_s5691: Ref;
  var description_s5691: int;
  var price_s5691: int;
  var offerPrice_s5953: int;
  var inspector_s5953: Ref;
  var appraiser_s5953: Ref;
  var description_s5953: int;
  var price_s5953: int;
  var offerPrice_s6215: int;
  var inspector_s6215: Ref;
  var appraiser_s6215: Ref;
  var description_s6215: int;
  var price_s6215: int;
  var offerPrice_s6477: int;
  var inspector_s6477: Ref;
  var appraiser_s6477: Ref;
  var description_s6477: int;
  var price_s6477: int;
  var offerPrice_s6735: int;
  var inspector_s6735: Ref;
  var appraiser_s6735: Ref;
  var description_s6735: int;
  var price_s6735: int;
  var offerPrice_s6993: int;
  var inspector_s6993: Ref;
  var appraiser_s6993: Ref;
  var description_s6993: int;
  var price_s6993: int;
  var offerPrice_s7289: int;
  var inspector_s7289: Ref;
  var appraiser_s7289: Ref;
  var description_s7289: int;
  var price_s7289: int;
  var offerPrice_s7547: int;
  var inspector_s7547: Ref;
  var appraiser_s7547: Ref;
  var description_s7547: int;
  var price_s7547: int;
  var offerPrice_s7805: int;
  var inspector_s7805: Ref;
  var appraiser_s7805: Ref;
  var description_s7805: int;
  var price_s7805: int;
  var offerPrice_s8063: int;
  var inspector_s8063: Ref;
  var appraiser_s8063: Ref;
  var description_s8063: int;
  var price_s8063: int;
  var description_s8116: int;
  var price_s8116: int;
  var description_s8168: int;
  var price_s8168: int;
  var inspector_s8238: Ref;
  var appraiser_s8238: Ref;
  var offerPrice_s8238: int;
  var offerPrice_s8462: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s267;
    havoc inspector_s267;
    havoc appraiser_s267;
    havoc description_s267;
    havoc price_s267;
    havoc offerPrice_s533;
    havoc inspector_s533;
    havoc appraiser_s533;
    havoc description_s533;
    havoc price_s533;
    havoc offerPrice_s837;
    havoc inspector_s837;
    havoc appraiser_s837;
    havoc description_s837;
    havoc price_s837;
    havoc offerPrice_s1103;
    havoc inspector_s1103;
    havoc appraiser_s1103;
    havoc description_s1103;
    havoc price_s1103;
    havoc offerPrice_s1369;
    havoc inspector_s1369;
    havoc appraiser_s1369;
    havoc description_s1369;
    havoc price_s1369;
    havoc offerPrice_s1635;
    havoc inspector_s1635;
    havoc appraiser_s1635;
    havoc description_s1635;
    havoc price_s1635;
    havoc offerPrice_s1899;
    havoc inspector_s1899;
    havoc appraiser_s1899;
    havoc description_s1899;
    havoc price_s1899;
    havoc offerPrice_s2163;
    havoc inspector_s2163;
    havoc appraiser_s2163;
    havoc description_s2163;
    havoc price_s2163;
    havoc offerPrice_s2465;
    havoc inspector_s2465;
    havoc appraiser_s2465;
    havoc description_s2465;
    havoc price_s2465;
    havoc offerPrice_s2729;
    havoc inspector_s2729;
    havoc appraiser_s2729;
    havoc description_s2729;
    havoc price_s2729;
    havoc offerPrice_s2993;
    havoc inspector_s2993;
    havoc appraiser_s2993;
    havoc description_s2993;
    havoc price_s2993;
    havoc offerPrice_s3257;
    havoc inspector_s3257;
    havoc appraiser_s3257;
    havoc description_s3257;
    havoc price_s3257;
    havoc offerPrice_s3519;
    havoc inspector_s3519;
    havoc appraiser_s3519;
    havoc description_s3519;
    havoc price_s3519;
    havoc offerPrice_s3781;
    havoc inspector_s3781;
    havoc appraiser_s3781;
    havoc description_s3781;
    havoc price_s3781;
    havoc offerPrice_s4081;
    havoc inspector_s4081;
    havoc appraiser_s4081;
    havoc description_s4081;
    havoc price_s4081;
    havoc offerPrice_s4343;
    havoc inspector_s4343;
    havoc appraiser_s4343;
    havoc description_s4343;
    havoc price_s4343;
    havoc offerPrice_s4605;
    havoc inspector_s4605;
    havoc appraiser_s4605;
    havoc description_s4605;
    havoc price_s4605;
    havoc offerPrice_s4867;
    havoc inspector_s4867;
    havoc appraiser_s4867;
    havoc description_s4867;
    havoc price_s4867;
    havoc offerPrice_s5129;
    havoc inspector_s5129;
    havoc appraiser_s5129;
    havoc description_s5129;
    havoc price_s5129;
    havoc offerPrice_s5391;
    havoc inspector_s5391;
    havoc appraiser_s5391;
    havoc description_s5391;
    havoc price_s5391;
    havoc offerPrice_s5691;
    havoc inspector_s5691;
    havoc appraiser_s5691;
    havoc description_s5691;
    havoc price_s5691;
    havoc offerPrice_s5953;
    havoc inspector_s5953;
    havoc appraiser_s5953;
    havoc description_s5953;
    havoc price_s5953;
    havoc offerPrice_s6215;
    havoc inspector_s6215;
    havoc appraiser_s6215;
    havoc description_s6215;
    havoc price_s6215;
    havoc offerPrice_s6477;
    havoc inspector_s6477;
    havoc appraiser_s6477;
    havoc description_s6477;
    havoc price_s6477;
    havoc offerPrice_s6735;
    havoc inspector_s6735;
    havoc appraiser_s6735;
    havoc description_s6735;
    havoc price_s6735;
    havoc offerPrice_s6993;
    havoc inspector_s6993;
    havoc appraiser_s6993;
    havoc description_s6993;
    havoc price_s6993;
    havoc offerPrice_s7289;
    havoc inspector_s7289;
    havoc appraiser_s7289;
    havoc description_s7289;
    havoc price_s7289;
    havoc offerPrice_s7547;
    havoc inspector_s7547;
    havoc appraiser_s7547;
    havoc description_s7547;
    havoc price_s7547;
    havoc offerPrice_s7805;
    havoc inspector_s7805;
    havoc appraiser_s7805;
    havoc description_s7805;
    havoc price_s7805;
    havoc offerPrice_s8063;
    havoc inspector_s8063;
    havoc appraiser_s8063;
    havoc description_s8063;
    havoc price_s8063;
    havoc description_s8116;
    havoc price_s8116;
    havoc description_s8168;
    havoc price_s8168;
    havoc inspector_s8238;
    havoc appraiser_s8238;
    havoc offerPrice_s8238;
    havoc offerPrice_s8462;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 95} validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s267, inspector_s267, appraiser_s267, description_s267, price_s267);
    return;

  anon41_Else:
    assume {:partition} choice != 40;
    goto anon42_Then, anon42_Else;

  anon42_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 96} validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s533, inspector_s533, appraiser_s533, description_s533, price_s533);
    return;

  anon42_Else:
    assume {:partition} choice != 39;
    goto anon43_Then, anon43_Else;

  anon43_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 97} validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s837, inspector_s837, appraiser_s837, description_s837, price_s837);
    return;

  anon43_Else:
    assume {:partition} choice != 38;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 98} validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1103, inspector_s1103, appraiser_s1103, description_s1103, price_s1103);
    return;

  anon44_Else:
    assume {:partition} choice != 37;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 99} validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1369, inspector_s1369, appraiser_s1369, description_s1369, price_s1369);
    return;

  anon45_Else:
    assume {:partition} choice != 36;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 100} validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1635, inspector_s1635, appraiser_s1635, description_s1635, price_s1635);
    return;

  anon46_Else:
    assume {:partition} choice != 35;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 101} validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1899, inspector_s1899, appraiser_s1899, description_s1899, price_s1899);
    return;

  anon47_Else:
    assume {:partition} choice != 34;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 102} validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2163, inspector_s2163, appraiser_s2163, description_s2163, price_s2163);
    return;

  anon48_Else:
    assume {:partition} choice != 33;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 103} validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2465, inspector_s2465, appraiser_s2465, description_s2465, price_s2465);
    return;

  anon49_Else:
    assume {:partition} choice != 32;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 104} validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2729, inspector_s2729, appraiser_s2729, description_s2729, price_s2729);
    return;

  anon50_Else:
    assume {:partition} choice != 31;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 105} validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2993, inspector_s2993, appraiser_s2993, description_s2993, price_s2993);
    return;

  anon51_Else:
    assume {:partition} choice != 30;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 106} validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3257, inspector_s3257, appraiser_s3257, description_s3257, price_s3257);
    return;

  anon52_Else:
    assume {:partition} choice != 29;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 107} validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3519, inspector_s3519, appraiser_s3519, description_s3519, price_s3519);
    return;

  anon53_Else:
    assume {:partition} choice != 28;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 108} validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3781, inspector_s3781, appraiser_s3781, description_s3781, price_s3781);
    return;

  anon54_Else:
    assume {:partition} choice != 27;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 109} validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4081, inspector_s4081, appraiser_s4081, description_s4081, price_s4081);
    return;

  anon55_Else:
    assume {:partition} choice != 26;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 110} validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4343, inspector_s4343, appraiser_s4343, description_s4343, price_s4343);
    return;

  anon56_Else:
    assume {:partition} choice != 25;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 111} validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4605, inspector_s4605, appraiser_s4605, description_s4605, price_s4605);
    return;

  anon57_Else:
    assume {:partition} choice != 24;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 112} validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4867, inspector_s4867, appraiser_s4867, description_s4867, price_s4867);
    return;

  anon58_Else:
    assume {:partition} choice != 23;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 113} validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5129, inspector_s5129, appraiser_s5129, description_s5129, price_s5129);
    return;

  anon59_Else:
    assume {:partition} choice != 22;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 114} validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5391, inspector_s5391, appraiser_s5391, description_s5391, price_s5391);
    return;

  anon60_Else:
    assume {:partition} choice != 21;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 115} validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5691, inspector_s5691, appraiser_s5691, description_s5691, price_s5691);
    return;

  anon61_Else:
    assume {:partition} choice != 20;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 116} validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5953, inspector_s5953, appraiser_s5953, description_s5953, price_s5953);
    return;

  anon62_Else:
    assume {:partition} choice != 19;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 117} validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6215, inspector_s6215, appraiser_s6215, description_s6215, price_s6215);
    return;

  anon63_Else:
    assume {:partition} choice != 18;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 118} validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6477, inspector_s6477, appraiser_s6477, description_s6477, price_s6477);
    return;

  anon64_Else:
    assume {:partition} choice != 17;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 119} validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6735, inspector_s6735, appraiser_s6735, description_s6735, price_s6735);
    return;

  anon65_Else:
    assume {:partition} choice != 16;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 120} validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6993, inspector_s6993, appraiser_s6993, description_s6993, price_s6993);
    return;

  anon66_Else:
    assume {:partition} choice != 15;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 121} validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7289, inspector_s7289, appraiser_s7289, description_s7289, price_s7289);
    return;

  anon67_Else:
    assume {:partition} choice != 14;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 122} validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7547, inspector_s7547, appraiser_s7547, description_s7547, price_s7547);
    return;

  anon68_Else:
    assume {:partition} choice != 13;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 123} validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7805, inspector_s7805, appraiser_s7805, description_s7805, price_s7805);
    return;

  anon69_Else:
    assume {:partition} choice != 12;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 124} validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8063, inspector_s8063, appraiser_s8063, description_s8063, price_s8063);
    return;

  anon70_Else:
    assume {:partition} choice != 11;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 125} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon71_Else:
    assume {:partition} choice != 10;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 126} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8168, price_s8168);
    return;

  anon72_Else:
    assume {:partition} choice != 9;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 127} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s8238, appraiser_s8238, offerPrice_s8238);
    return;

  anon73_Else:
    assume {:partition} choice != 8;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 128} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon74_Else:
    assume {:partition} choice != 7;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 129} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon75_Else:
    assume {:partition} choice != 6;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 130} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon76_Else:
    assume {:partition} choice != 5;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 131} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8462);
    return;

  anon77_Else:
    assume {:partition} choice != 4;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 132} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon78_Else:
    assume {:partition} choice != 3;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 133} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon79_Else:
    assume {:partition} choice != 2;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 134} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon80_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_AssetTransfer();
  modifies Alloc, Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer, now;



implementation CorralEntry_AssetTransfer()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var description_s8116: int;
  var price_s8116: int;

  anon0:
    call {:si_unique_call 135} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 136} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8116, price_s8116);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 137} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


