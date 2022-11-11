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

procedure {:public} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s146: int, inspector_s146: Ref, appraiser_s146: Ref, description_s146: int, price_s146: int);



procedure {:public} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s291: int, inspector_s291: Ref, appraiser_s291: Ref, description_s291: int, price_s291: int);



procedure {:public} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s436: int, inspector_s436: Ref, appraiser_s436: Ref, description_s436: int, price_s436: int);



procedure {:public} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s581: int, inspector_s581: Ref, appraiser_s581: Ref, description_s581: int, price_s581: int);



procedure {:public} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s726: int, inspector_s726: Ref, appraiser_s726: Ref, description_s726: int, price_s726: int);



procedure {:public} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s871: int, inspector_s871: Ref, appraiser_s871: Ref, description_s871: int, price_s871: int);



procedure {:public} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1016: int, inspector_s1016: Ref, appraiser_s1016: Ref, description_s1016: int, price_s1016: int);



procedure {:public} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1161: int, inspector_s1161: Ref, appraiser_s1161: Ref, description_s1161: int, price_s1161: int);



procedure {:public} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1306: int, inspector_s1306: Ref, appraiser_s1306: Ref, description_s1306: int, price_s1306: int);



procedure {:public} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1451: int, inspector_s1451: Ref, appraiser_s1451: Ref, description_s1451: int, price_s1451: int);



procedure {:public} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1596: int, inspector_s1596: Ref, appraiser_s1596: Ref, description_s1596: int, price_s1596: int);



procedure {:public} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1741: int, inspector_s1741: Ref, appraiser_s1741: Ref, description_s1741: int, price_s1741: int);



procedure {:public} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1886: int, inspector_s1886: Ref, appraiser_s1886: Ref, description_s1886: int, price_s1886: int);



procedure {:public} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2031: int, inspector_s2031: Ref, appraiser_s2031: Ref, description_s2031: int, price_s2031: int);



procedure {:public} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2176: int, inspector_s2176: Ref, appraiser_s2176: Ref, description_s2176: int, price_s2176: int);



procedure {:public} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2321: int, inspector_s2321: Ref, appraiser_s2321: Ref, description_s2321: int, price_s2321: int);



procedure {:public} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2466: int, inspector_s2466: Ref, appraiser_s2466: Ref, description_s2466: int, price_s2466: int);



procedure {:public} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2611: int, inspector_s2611: Ref, appraiser_s2611: Ref, description_s2611: int, price_s2611: int);



procedure {:public} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2756: int, inspector_s2756: Ref, appraiser_s2756: Ref, description_s2756: int, price_s2756: int);



procedure {:public} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2901: int, inspector_s2901: Ref, appraiser_s2901: Ref, description_s2901: int, price_s2901: int);



procedure {:public} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3046: int, inspector_s3046: Ref, appraiser_s3046: Ref, description_s3046: int, price_s3046: int);



procedure {:public} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3191: int, inspector_s3191: Ref, appraiser_s3191: Ref, description_s3191: int, price_s3191: int);



procedure {:public} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3336: int, inspector_s3336: Ref, appraiser_s3336: Ref, description_s3336: int, price_s3336: int);



procedure {:public} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3481: int, inspector_s3481: Ref, appraiser_s3481: Ref, description_s3481: int, price_s3481: int);



procedure {:public} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3626: int, inspector_s3626: Ref, appraiser_s3626: Ref, description_s3626: int, price_s3626: int);



procedure {:public} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3771: int, inspector_s3771: Ref, appraiser_s3771: Ref, description_s3771: int, price_s3771: int);



procedure {:public} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3916: int, inspector_s3916: Ref, appraiser_s3916: Ref, description_s3916: int, price_s3916: int);



procedure {:public} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4061: int, inspector_s4061: Ref, appraiser_s4061: Ref, description_s4061: int, price_s4061: int);



procedure {:public} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4206: int, inspector_s4206: Ref, appraiser_s4206: Ref, description_s4206: int, price_s4206: int);



procedure {:public} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4351: int, inspector_s4351: Ref, appraiser_s4351: Ref, description_s4351: int, price_s4351: int);



procedure {:public} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4496: int, inspector_s4496: Ref, appraiser_s4496: Ref, description_s4496: int, price_s4496: int);



procedure {:public} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4641: int, inspector_s4641: Ref, appraiser_s4641: Ref, description_s4641: int, price_s4641: int);



procedure {:public} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4784: int, inspector_s4784: Ref, appraiser_s4784: Ref, description_s4784: int, price_s4784: int);



procedure {:public} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4927: int, inspector_s4927: Ref, appraiser_s4927: Ref, description_s4927: int, price_s4927: int);



procedure {:public} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5070: int, inspector_s5070: Ref, appraiser_s5070: Ref, description_s5070: int, price_s5070: int);



procedure {:public} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5213: int, inspector_s5213: Ref, appraiser_s5213: Ref, description_s5213: int, price_s5213: int);



procedure {:public} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5356: int, inspector_s5356: Ref, appraiser_s5356: Ref, description_s5356: int, price_s5356: int);



procedure {:public} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5499: int, inspector_s5499: Ref, appraiser_s5499: Ref, description_s5499: int, price_s5499: int);



procedure {:public} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5642: int, inspector_s5642: Ref, appraiser_s5642: Ref, description_s5642: int, price_s5642: int);



procedure {:public} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5785: int, inspector_s5785: Ref, appraiser_s5785: Ref, description_s5785: int, price_s5785: int);



procedure {:public} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5928: int, inspector_s5928: Ref, appraiser_s5928: Ref, description_s5928: int, price_s5928: int);



procedure {:public} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6069: int, inspector_s6069: Ref, appraiser_s6069: Ref, description_s6069: int, price_s6069: int);



implementation {:ForceInline} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6069: int, inspector_s6069: Ref, appraiser_s6069: Ref, description_s6069: int, price_s6069: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6069);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6069);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6069);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6069);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6069);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume (true && State_AssetTransfer[this] == 0 && State_AssetTransfer[this] == 0 && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && State_AssetTransfer[this] == 7) || State_AssetTransfer[this] == 5 || (State_AssetTransfer[this] == 6 && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
    goto corral_source_split_3;

  corral_source_split_3:
    assert false;
    return;
}



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := -123569219;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6122);
    call {:si_unique_call 15} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6122);
    call {:si_unique_call 16} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_5;

  corral_source_split_5:
    goto corral_source_split_6;

  corral_source_split_6:
    InstanceOwner_AssetTransfer[this] := msgsender_MSG;
    call {:si_unique_call 17} {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
    goto corral_source_split_7;

  corral_source_split_7:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s6122 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6122;
    call {:si_unique_call 18} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    Description_AssetTransfer[this] := description_s6122;
    call {:si_unique_call 19} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6122);
    call {:si_unique_call 25} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6122);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6122, price_s6122);
    return;
}



procedure {:public} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 28} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 29} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 30} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 31} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 32} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_11;

  corral_source_split_11:
    goto corral_source_split_12;

  corral_source_split_12:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_14;

  corral_source_split_14:
    goto corral_source_split_15;

  corral_source_split_15:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    State_AssetTransfer[this] := 9;
    return;
}



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6174: int, price_s6174: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6174: int, price_s6174: int)
{

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6174);
    call {:si_unique_call 38} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6174);
    call {:si_unique_call 39} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_17;

  corral_source_split_17:
    goto corral_source_split_18;

  corral_source_split_18:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 0;
    goto corral_source_split_20;

  corral_source_split_20:
    goto corral_source_split_21;

  corral_source_split_21:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 0;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_23;

  corral_source_split_23:
    goto corral_source_split_24;

  corral_source_split_24:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    Description_AssetTransfer[this] := description_s6174;
    call {:si_unique_call 40} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s6174 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6174;
    call {:si_unique_call 41} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6244: Ref, appraiser_s6244: Ref, offerPrice_s6244: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6244: Ref, appraiser_s6244: Ref, offerPrice_s6244: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 42} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 43} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 44} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 45} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 46} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6244);
    call {:si_unique_call 47} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6244);
    call {:si_unique_call 48} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6244);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s6244 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s6244 == null || appraiser_s6244 == null || offerPrice_s6244 == 0;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s6244 == null || appraiser_s6244 == null || offerPrice_s6244 == 0);
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] != 0;
    goto corral_source_split_34;

  corral_source_split_34:
    goto corral_source_split_35;

  corral_source_split_35:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] == 0;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto corral_source_split_37;

  corral_source_split_37:
    goto corral_source_split_38;

  corral_source_split_38:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto anon6;

  anon6:
    InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
    call {:si_unique_call 50} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_40;

  corral_source_split_40:
    InstanceInspector_AssetTransfer[this] := inspector_s6244;
    call {:si_unique_call 51} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s6244;
    call {:si_unique_call 52} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6244 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6244;
    call {:si_unique_call 53} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    State_AssetTransfer[this] := 1;
    return;
}



procedure {:public} AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 54} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 55} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 56} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 57} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 58} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_45;

  corral_source_split_45:
    goto corral_source_split_46;

  corral_source_split_46:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1;
    goto corral_source_split_48;

  corral_source_split_48:
    goto corral_source_split_49;

  corral_source_split_49:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_51;

  corral_source_split_51:
    goto corral_source_split_52;

  corral_source_split_52:
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
    call {:si_unique_call 59} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 60} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 61} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 62} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 63} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_54;

  corral_source_split_54:
    goto corral_source_split_55;

  corral_source_split_55:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6;
    goto corral_source_split_57;

  corral_source_split_57:
    goto corral_source_split_58;

  corral_source_split_58:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_60;

  corral_source_split_60:
    goto corral_source_split_61;

  corral_source_split_61:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    __var_3 := null;
    InstanceBuyer_AssetTransfer[this] := __var_3;
    call {:si_unique_call 64} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_63;

  corral_source_split_63:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:public} Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 65} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 66} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 67} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 68} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 69} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_65;

  corral_source_split_65:
    goto corral_source_split_66;

  corral_source_split_66:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} msgsender_MSG != InstanceBuyer_AssetTransfer[this] && msgsender_MSG != InstanceOwner_AssetTransfer[this];
    goto corral_source_split_68;

  corral_source_split_68:
    goto corral_source_split_69;

  corral_source_split_69:
    assume false;
    goto anon2;

  anon15_Else:
    assume {:partition} !(msgsender_MSG != InstanceBuyer_AssetTransfer[this] && msgsender_MSG != InstanceOwner_AssetTransfer[this]);
    goto anon2;

  anon2:
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} msgsender_MSG == InstanceOwner_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6;
    goto corral_source_split_71;

  corral_source_split_71:
    goto corral_source_split_72;

  corral_source_split_72:
    assume false;
    goto anon4;

  anon16_Else:
    assume {:partition} !(msgsender_MSG == InstanceOwner_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 6);
    goto anon4;

  anon4:
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} msgsender_MSG == InstanceBuyer_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7;
    goto corral_source_split_74;

  corral_source_split_74:
    goto corral_source_split_75;

  corral_source_split_75:
    assume false;
    goto anon6;

  anon17_Else:
    assume {:partition} !(msgsender_MSG == InstanceBuyer_AssetTransfer[this] && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7);
    goto anon6;

  anon6:
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} msgsender_MSG == InstanceBuyer_AssetTransfer[this];
    goto corral_source_split_77;

  corral_source_split_77:
    goto corral_source_split_78;

  corral_source_split_78:
    goto anon19_Then, anon19_Else;

  anon19_Then:
    assume {:partition} State_AssetTransfer[this] == 5;
    goto corral_source_split_80;

  corral_source_split_80:
    goto corral_source_split_81;

  corral_source_split_81:
    State_AssetTransfer[this] := 6;
    return;

  anon19_Else:
    assume {:partition} State_AssetTransfer[this] != 5;
    goto corral_source_split_83;

  corral_source_split_83:
    goto anon20_Then, anon20_Else;

  anon20_Then:
    assume {:partition} State_AssetTransfer[this] == 7;
    goto corral_source_split_85;

  corral_source_split_85:
    goto corral_source_split_86;

  corral_source_split_86:
    State_AssetTransfer[this] := 8;
    return;

  anon20_Else:
    assume {:partition} State_AssetTransfer[this] != 7;
    return;

  anon18_Else:
    assume {:partition} msgsender_MSG != InstanceBuyer_AssetTransfer[this];
    goto corral_source_split_88;

  corral_source_split_88:
    goto corral_source_split_89;

  corral_source_split_89:
    goto anon21_Then, anon21_Else;

  anon21_Then:
    assume {:partition} State_AssetTransfer[this] == 5;
    goto corral_source_split_91;

  corral_source_split_91:
    goto corral_source_split_92;

  corral_source_split_92:
    State_AssetTransfer[this] := 7;
    return;

  anon21_Else:
    assume {:partition} State_AssetTransfer[this] != 5;
    goto corral_source_split_94;

  corral_source_split_94:
    goto anon22_Then, anon22_Else;

  anon22_Then:
    assume {:partition} State_AssetTransfer[this] == 6;
    goto corral_source_split_96;

  corral_source_split_96:
    goto corral_source_split_97;

  corral_source_split_97:
    State_AssetTransfer[this] := 8;
    return;

  anon22_Else:
    assume {:partition} State_AssetTransfer[this] != 6;
    return;
}



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6468: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6468: int)
{

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6468);
    call {:si_unique_call 75} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_99;

  corral_source_split_99:
    goto corral_source_split_100;

  corral_source_split_100:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1;
    goto corral_source_split_102;

  corral_source_split_102:
    goto corral_source_split_103;

  corral_source_split_103:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} State_AssetTransfer[this] == 1;
    goto anon2;

  anon2:
    assume offerPrice_s6468 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6468 == 0;
    goto corral_source_split_105;

  corral_source_split_105:
    goto corral_source_split_106;

  corral_source_split_106:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6468 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6468 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6468;
    call {:si_unique_call 76} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    return;
}



procedure {:public} RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_4: Ref;

  anon0:
    call {:si_unique_call 77} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 78} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 79} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 80} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 81} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_108;

  corral_source_split_108:
    goto corral_source_split_109;

  corral_source_split_109:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7;
    goto corral_source_split_111;

  corral_source_split_111:
    goto corral_source_split_112;

  corral_source_split_112:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} !(State_AssetTransfer[this] != 1 && State_AssetTransfer[this] != 2 && State_AssetTransfer[this] != 3 && State_AssetTransfer[this] != 4 && State_AssetTransfer[this] != 5 && State_AssetTransfer[this] != 7);
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_114;

  corral_source_split_114:
    goto corral_source_split_115;

  corral_source_split_115:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceBuyer_AssetTransfer[this] == msgsender_MSG;
    goto anon4;

  anon4:
    __var_4 := null;
    InstanceBuyer_AssetTransfer[this] := __var_4;
    call {:si_unique_call 82} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
    goto corral_source_split_117;

  corral_source_split_117:
    assume OfferPrice_AssetTransfer[this] >= 0;
    OfferPrice_AssetTransfer[this] := 0;
    call {:si_unique_call 83} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
    goto corral_source_split_118;

  corral_source_split_118:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:public} MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 84} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 85} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 86} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 87} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 88} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_120;

  corral_source_split_120:
    goto corral_source_split_121;

  corral_source_split_121:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} InstanceAppraiser_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_123;

  corral_source_split_123:
    goto corral_source_split_124;

  corral_source_split_124:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} InstanceAppraiser_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] == 2;
    goto corral_source_split_126;

  corral_source_split_126:
    goto corral_source_split_127;

  corral_source_split_127:
    State_AssetTransfer[this] := 4;
    return;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] != 2;
    goto corral_source_split_129;

  corral_source_split_129:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} State_AssetTransfer[this] == 3;
    goto corral_source_split_131;

  corral_source_split_131:
    goto corral_source_split_132;

  corral_source_split_132:
    State_AssetTransfer[this] := 5;
    return;

  anon9_Else:
    assume {:partition} State_AssetTransfer[this] != 3;
    goto corral_source_split_134;

  corral_source_split_134:
    goto corral_source_split_135;

  corral_source_split_135:
    assume false;
    return;
}



procedure {:public} MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 89} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 90} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 91} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 92} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 93} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_137;

  corral_source_split_137:
    goto corral_source_split_138;

  corral_source_split_138:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} InstanceInspector_AssetTransfer[this] != msgsender_MSG;
    goto corral_source_split_140;

  corral_source_split_140:
    goto corral_source_split_141;

  corral_source_split_141:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} InstanceInspector_AssetTransfer[this] == msgsender_MSG;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_AssetTransfer[this] == 2;
    goto corral_source_split_143;

  corral_source_split_143:
    goto corral_source_split_144;

  corral_source_split_144:
    State_AssetTransfer[this] := 3;
    return;

  anon8_Else:
    assume {:partition} State_AssetTransfer[this] != 2;
    goto corral_source_split_146;

  corral_source_split_146:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} State_AssetTransfer[this] == 4;
    goto corral_source_split_148;

  corral_source_split_148:
    goto corral_source_split_149;

  corral_source_split_149:
    State_AssetTransfer[this] := 5;
    return;

  anon9_Else:
    assume {:partition} State_AssetTransfer[this] != 4;
    goto corral_source_split_151;

  corral_source_split_151:
    goto corral_source_split_152;

  corral_source_split_152:
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
  var offerPrice_s146: int;
  var inspector_s146: Ref;
  var appraiser_s146: Ref;
  var description_s146: int;
  var price_s146: int;
  var offerPrice_s291: int;
  var inspector_s291: Ref;
  var appraiser_s291: Ref;
  var description_s291: int;
  var price_s291: int;
  var offerPrice_s436: int;
  var inspector_s436: Ref;
  var appraiser_s436: Ref;
  var description_s436: int;
  var price_s436: int;
  var offerPrice_s581: int;
  var inspector_s581: Ref;
  var appraiser_s581: Ref;
  var description_s581: int;
  var price_s581: int;
  var offerPrice_s726: int;
  var inspector_s726: Ref;
  var appraiser_s726: Ref;
  var description_s726: int;
  var price_s726: int;
  var offerPrice_s871: int;
  var inspector_s871: Ref;
  var appraiser_s871: Ref;
  var description_s871: int;
  var price_s871: int;
  var offerPrice_s1016: int;
  var inspector_s1016: Ref;
  var appraiser_s1016: Ref;
  var description_s1016: int;
  var price_s1016: int;
  var offerPrice_s1161: int;
  var inspector_s1161: Ref;
  var appraiser_s1161: Ref;
  var description_s1161: int;
  var price_s1161: int;
  var offerPrice_s1306: int;
  var inspector_s1306: Ref;
  var appraiser_s1306: Ref;
  var description_s1306: int;
  var price_s1306: int;
  var offerPrice_s1451: int;
  var inspector_s1451: Ref;
  var appraiser_s1451: Ref;
  var description_s1451: int;
  var price_s1451: int;
  var offerPrice_s1596: int;
  var inspector_s1596: Ref;
  var appraiser_s1596: Ref;
  var description_s1596: int;
  var price_s1596: int;
  var offerPrice_s1741: int;
  var inspector_s1741: Ref;
  var appraiser_s1741: Ref;
  var description_s1741: int;
  var price_s1741: int;
  var offerPrice_s1886: int;
  var inspector_s1886: Ref;
  var appraiser_s1886: Ref;
  var description_s1886: int;
  var price_s1886: int;
  var offerPrice_s2031: int;
  var inspector_s2031: Ref;
  var appraiser_s2031: Ref;
  var description_s2031: int;
  var price_s2031: int;
  var offerPrice_s2176: int;
  var inspector_s2176: Ref;
  var appraiser_s2176: Ref;
  var description_s2176: int;
  var price_s2176: int;
  var offerPrice_s2321: int;
  var inspector_s2321: Ref;
  var appraiser_s2321: Ref;
  var description_s2321: int;
  var price_s2321: int;
  var offerPrice_s2466: int;
  var inspector_s2466: Ref;
  var appraiser_s2466: Ref;
  var description_s2466: int;
  var price_s2466: int;
  var offerPrice_s2611: int;
  var inspector_s2611: Ref;
  var appraiser_s2611: Ref;
  var description_s2611: int;
  var price_s2611: int;
  var offerPrice_s2756: int;
  var inspector_s2756: Ref;
  var appraiser_s2756: Ref;
  var description_s2756: int;
  var price_s2756: int;
  var offerPrice_s2901: int;
  var inspector_s2901: Ref;
  var appraiser_s2901: Ref;
  var description_s2901: int;
  var price_s2901: int;
  var offerPrice_s3046: int;
  var inspector_s3046: Ref;
  var appraiser_s3046: Ref;
  var description_s3046: int;
  var price_s3046: int;
  var offerPrice_s3191: int;
  var inspector_s3191: Ref;
  var appraiser_s3191: Ref;
  var description_s3191: int;
  var price_s3191: int;
  var offerPrice_s3336: int;
  var inspector_s3336: Ref;
  var appraiser_s3336: Ref;
  var description_s3336: int;
  var price_s3336: int;
  var offerPrice_s3481: int;
  var inspector_s3481: Ref;
  var appraiser_s3481: Ref;
  var description_s3481: int;
  var price_s3481: int;
  var offerPrice_s3626: int;
  var inspector_s3626: Ref;
  var appraiser_s3626: Ref;
  var description_s3626: int;
  var price_s3626: int;
  var offerPrice_s3771: int;
  var inspector_s3771: Ref;
  var appraiser_s3771: Ref;
  var description_s3771: int;
  var price_s3771: int;
  var offerPrice_s3916: int;
  var inspector_s3916: Ref;
  var appraiser_s3916: Ref;
  var description_s3916: int;
  var price_s3916: int;
  var offerPrice_s4061: int;
  var inspector_s4061: Ref;
  var appraiser_s4061: Ref;
  var description_s4061: int;
  var price_s4061: int;
  var offerPrice_s4206: int;
  var inspector_s4206: Ref;
  var appraiser_s4206: Ref;
  var description_s4206: int;
  var price_s4206: int;
  var offerPrice_s4351: int;
  var inspector_s4351: Ref;
  var appraiser_s4351: Ref;
  var description_s4351: int;
  var price_s4351: int;
  var offerPrice_s4496: int;
  var inspector_s4496: Ref;
  var appraiser_s4496: Ref;
  var description_s4496: int;
  var price_s4496: int;
  var offerPrice_s4641: int;
  var inspector_s4641: Ref;
  var appraiser_s4641: Ref;
  var description_s4641: int;
  var price_s4641: int;
  var offerPrice_s4784: int;
  var inspector_s4784: Ref;
  var appraiser_s4784: Ref;
  var description_s4784: int;
  var price_s4784: int;
  var offerPrice_s4927: int;
  var inspector_s4927: Ref;
  var appraiser_s4927: Ref;
  var description_s4927: int;
  var price_s4927: int;
  var offerPrice_s5070: int;
  var inspector_s5070: Ref;
  var appraiser_s5070: Ref;
  var description_s5070: int;
  var price_s5070: int;
  var offerPrice_s5213: int;
  var inspector_s5213: Ref;
  var appraiser_s5213: Ref;
  var description_s5213: int;
  var price_s5213: int;
  var offerPrice_s5356: int;
  var inspector_s5356: Ref;
  var appraiser_s5356: Ref;
  var description_s5356: int;
  var price_s5356: int;
  var offerPrice_s5499: int;
  var inspector_s5499: Ref;
  var appraiser_s5499: Ref;
  var description_s5499: int;
  var price_s5499: int;
  var offerPrice_s5642: int;
  var inspector_s5642: Ref;
  var appraiser_s5642: Ref;
  var description_s5642: int;
  var price_s5642: int;
  var offerPrice_s5785: int;
  var inspector_s5785: Ref;
  var appraiser_s5785: Ref;
  var description_s5785: int;
  var price_s5785: int;
  var offerPrice_s5928: int;
  var inspector_s5928: Ref;
  var appraiser_s5928: Ref;
  var description_s5928: int;
  var price_s5928: int;
  var offerPrice_s6069: int;
  var inspector_s6069: Ref;
  var appraiser_s6069: Ref;
  var description_s6069: int;
  var price_s6069: int;
  var description_s6122: int;
  var price_s6122: int;
  var description_s6174: int;
  var price_s6174: int;
  var inspector_s6244: Ref;
  var appraiser_s6244: Ref;
  var offerPrice_s6244: int;
  var offerPrice_s6468: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s146;
    havoc inspector_s146;
    havoc appraiser_s146;
    havoc description_s146;
    havoc price_s146;
    havoc offerPrice_s291;
    havoc inspector_s291;
    havoc appraiser_s291;
    havoc description_s291;
    havoc price_s291;
    havoc offerPrice_s436;
    havoc inspector_s436;
    havoc appraiser_s436;
    havoc description_s436;
    havoc price_s436;
    havoc offerPrice_s581;
    havoc inspector_s581;
    havoc appraiser_s581;
    havoc description_s581;
    havoc price_s581;
    havoc offerPrice_s726;
    havoc inspector_s726;
    havoc appraiser_s726;
    havoc description_s726;
    havoc price_s726;
    havoc offerPrice_s871;
    havoc inspector_s871;
    havoc appraiser_s871;
    havoc description_s871;
    havoc price_s871;
    havoc offerPrice_s1016;
    havoc inspector_s1016;
    havoc appraiser_s1016;
    havoc description_s1016;
    havoc price_s1016;
    havoc offerPrice_s1161;
    havoc inspector_s1161;
    havoc appraiser_s1161;
    havoc description_s1161;
    havoc price_s1161;
    havoc offerPrice_s1306;
    havoc inspector_s1306;
    havoc appraiser_s1306;
    havoc description_s1306;
    havoc price_s1306;
    havoc offerPrice_s1451;
    havoc inspector_s1451;
    havoc appraiser_s1451;
    havoc description_s1451;
    havoc price_s1451;
    havoc offerPrice_s1596;
    havoc inspector_s1596;
    havoc appraiser_s1596;
    havoc description_s1596;
    havoc price_s1596;
    havoc offerPrice_s1741;
    havoc inspector_s1741;
    havoc appraiser_s1741;
    havoc description_s1741;
    havoc price_s1741;
    havoc offerPrice_s1886;
    havoc inspector_s1886;
    havoc appraiser_s1886;
    havoc description_s1886;
    havoc price_s1886;
    havoc offerPrice_s2031;
    havoc inspector_s2031;
    havoc appraiser_s2031;
    havoc description_s2031;
    havoc price_s2031;
    havoc offerPrice_s2176;
    havoc inspector_s2176;
    havoc appraiser_s2176;
    havoc description_s2176;
    havoc price_s2176;
    havoc offerPrice_s2321;
    havoc inspector_s2321;
    havoc appraiser_s2321;
    havoc description_s2321;
    havoc price_s2321;
    havoc offerPrice_s2466;
    havoc inspector_s2466;
    havoc appraiser_s2466;
    havoc description_s2466;
    havoc price_s2466;
    havoc offerPrice_s2611;
    havoc inspector_s2611;
    havoc appraiser_s2611;
    havoc description_s2611;
    havoc price_s2611;
    havoc offerPrice_s2756;
    havoc inspector_s2756;
    havoc appraiser_s2756;
    havoc description_s2756;
    havoc price_s2756;
    havoc offerPrice_s2901;
    havoc inspector_s2901;
    havoc appraiser_s2901;
    havoc description_s2901;
    havoc price_s2901;
    havoc offerPrice_s3046;
    havoc inspector_s3046;
    havoc appraiser_s3046;
    havoc description_s3046;
    havoc price_s3046;
    havoc offerPrice_s3191;
    havoc inspector_s3191;
    havoc appraiser_s3191;
    havoc description_s3191;
    havoc price_s3191;
    havoc offerPrice_s3336;
    havoc inspector_s3336;
    havoc appraiser_s3336;
    havoc description_s3336;
    havoc price_s3336;
    havoc offerPrice_s3481;
    havoc inspector_s3481;
    havoc appraiser_s3481;
    havoc description_s3481;
    havoc price_s3481;
    havoc offerPrice_s3626;
    havoc inspector_s3626;
    havoc appraiser_s3626;
    havoc description_s3626;
    havoc price_s3626;
    havoc offerPrice_s3771;
    havoc inspector_s3771;
    havoc appraiser_s3771;
    havoc description_s3771;
    havoc price_s3771;
    havoc offerPrice_s3916;
    havoc inspector_s3916;
    havoc appraiser_s3916;
    havoc description_s3916;
    havoc price_s3916;
    havoc offerPrice_s4061;
    havoc inspector_s4061;
    havoc appraiser_s4061;
    havoc description_s4061;
    havoc price_s4061;
    havoc offerPrice_s4206;
    havoc inspector_s4206;
    havoc appraiser_s4206;
    havoc description_s4206;
    havoc price_s4206;
    havoc offerPrice_s4351;
    havoc inspector_s4351;
    havoc appraiser_s4351;
    havoc description_s4351;
    havoc price_s4351;
    havoc offerPrice_s4496;
    havoc inspector_s4496;
    havoc appraiser_s4496;
    havoc description_s4496;
    havoc price_s4496;
    havoc offerPrice_s4641;
    havoc inspector_s4641;
    havoc appraiser_s4641;
    havoc description_s4641;
    havoc price_s4641;
    havoc offerPrice_s4784;
    havoc inspector_s4784;
    havoc appraiser_s4784;
    havoc description_s4784;
    havoc price_s4784;
    havoc offerPrice_s4927;
    havoc inspector_s4927;
    havoc appraiser_s4927;
    havoc description_s4927;
    havoc price_s4927;
    havoc offerPrice_s5070;
    havoc inspector_s5070;
    havoc appraiser_s5070;
    havoc description_s5070;
    havoc price_s5070;
    havoc offerPrice_s5213;
    havoc inspector_s5213;
    havoc appraiser_s5213;
    havoc description_s5213;
    havoc price_s5213;
    havoc offerPrice_s5356;
    havoc inspector_s5356;
    havoc appraiser_s5356;
    havoc description_s5356;
    havoc price_s5356;
    havoc offerPrice_s5499;
    havoc inspector_s5499;
    havoc appraiser_s5499;
    havoc description_s5499;
    havoc price_s5499;
    havoc offerPrice_s5642;
    havoc inspector_s5642;
    havoc appraiser_s5642;
    havoc description_s5642;
    havoc price_s5642;
    havoc offerPrice_s5785;
    havoc inspector_s5785;
    havoc appraiser_s5785;
    havoc description_s5785;
    havoc price_s5785;
    havoc offerPrice_s5928;
    havoc inspector_s5928;
    havoc appraiser_s5928;
    havoc description_s5928;
    havoc price_s5928;
    havoc offerPrice_s6069;
    havoc inspector_s6069;
    havoc appraiser_s6069;
    havoc description_s6069;
    havoc price_s6069;
    havoc description_s6122;
    havoc price_s6122;
    havoc description_s6174;
    havoc price_s6174;
    havoc inspector_s6244;
    havoc appraiser_s6244;
    havoc offerPrice_s6244;
    havoc offerPrice_s6468;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 52;
    call {:si_unique_call 94} validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s146, inspector_s146, appraiser_s146, description_s146, price_s146);
    return;

  anon53_Else:
    assume {:partition} choice != 52;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 51;
    call {:si_unique_call 95} validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s291, inspector_s291, appraiser_s291, description_s291, price_s291);
    return;

  anon54_Else:
    assume {:partition} choice != 51;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 50;
    call {:si_unique_call 96} validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s436, inspector_s436, appraiser_s436, description_s436, price_s436);
    return;

  anon55_Else:
    assume {:partition} choice != 50;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 49;
    call {:si_unique_call 97} validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s581, inspector_s581, appraiser_s581, description_s581, price_s581);
    return;

  anon56_Else:
    assume {:partition} choice != 49;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 48;
    call {:si_unique_call 98} validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s726, inspector_s726, appraiser_s726, description_s726, price_s726);
    return;

  anon57_Else:
    assume {:partition} choice != 48;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 47;
    call {:si_unique_call 99} validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s871, inspector_s871, appraiser_s871, description_s871, price_s871);
    return;

  anon58_Else:
    assume {:partition} choice != 47;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 46;
    call {:si_unique_call 100} validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1016, inspector_s1016, appraiser_s1016, description_s1016, price_s1016);
    return;

  anon59_Else:
    assume {:partition} choice != 46;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 45;
    call {:si_unique_call 101} validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1161, inspector_s1161, appraiser_s1161, description_s1161, price_s1161);
    return;

  anon60_Else:
    assume {:partition} choice != 45;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 44;
    call {:si_unique_call 102} validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1306, inspector_s1306, appraiser_s1306, description_s1306, price_s1306);
    return;

  anon61_Else:
    assume {:partition} choice != 44;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 43;
    call {:si_unique_call 103} validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1451, inspector_s1451, appraiser_s1451, description_s1451, price_s1451);
    return;

  anon62_Else:
    assume {:partition} choice != 43;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 42;
    call {:si_unique_call 104} validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1596, inspector_s1596, appraiser_s1596, description_s1596, price_s1596);
    return;

  anon63_Else:
    assume {:partition} choice != 42;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 105} validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1741, inspector_s1741, appraiser_s1741, description_s1741, price_s1741);
    return;

  anon64_Else:
    assume {:partition} choice != 41;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 106} validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1886, inspector_s1886, appraiser_s1886, description_s1886, price_s1886);
    return;

  anon65_Else:
    assume {:partition} choice != 40;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 107} validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2031, inspector_s2031, appraiser_s2031, description_s2031, price_s2031);
    return;

  anon66_Else:
    assume {:partition} choice != 39;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 108} validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2176, inspector_s2176, appraiser_s2176, description_s2176, price_s2176);
    return;

  anon67_Else:
    assume {:partition} choice != 38;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 109} validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2321, inspector_s2321, appraiser_s2321, description_s2321, price_s2321);
    return;

  anon68_Else:
    assume {:partition} choice != 37;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 110} validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2466, inspector_s2466, appraiser_s2466, description_s2466, price_s2466);
    return;

  anon69_Else:
    assume {:partition} choice != 36;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 111} validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2611, inspector_s2611, appraiser_s2611, description_s2611, price_s2611);
    return;

  anon70_Else:
    assume {:partition} choice != 35;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 112} validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2756, inspector_s2756, appraiser_s2756, description_s2756, price_s2756);
    return;

  anon71_Else:
    assume {:partition} choice != 34;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 113} validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2901, inspector_s2901, appraiser_s2901, description_s2901, price_s2901);
    return;

  anon72_Else:
    assume {:partition} choice != 33;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 114} validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3046, inspector_s3046, appraiser_s3046, description_s3046, price_s3046);
    return;

  anon73_Else:
    assume {:partition} choice != 32;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 115} validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3191, inspector_s3191, appraiser_s3191, description_s3191, price_s3191);
    return;

  anon74_Else:
    assume {:partition} choice != 31;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 116} validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3336, inspector_s3336, appraiser_s3336, description_s3336, price_s3336);
    return;

  anon75_Else:
    assume {:partition} choice != 30;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 117} validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3481, inspector_s3481, appraiser_s3481, description_s3481, price_s3481);
    return;

  anon76_Else:
    assume {:partition} choice != 29;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 118} validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3626, inspector_s3626, appraiser_s3626, description_s3626, price_s3626);
    return;

  anon77_Else:
    assume {:partition} choice != 28;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 119} validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3771, inspector_s3771, appraiser_s3771, description_s3771, price_s3771);
    return;

  anon78_Else:
    assume {:partition} choice != 27;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 120} validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3916, inspector_s3916, appraiser_s3916, description_s3916, price_s3916);
    return;

  anon79_Else:
    assume {:partition} choice != 26;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 121} validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4061, inspector_s4061, appraiser_s4061, description_s4061, price_s4061);
    return;

  anon80_Else:
    assume {:partition} choice != 25;
    goto anon81_Then, anon81_Else;

  anon81_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 122} validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4206, inspector_s4206, appraiser_s4206, description_s4206, price_s4206);
    return;

  anon81_Else:
    assume {:partition} choice != 24;
    goto anon82_Then, anon82_Else;

  anon82_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 123} validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4351, inspector_s4351, appraiser_s4351, description_s4351, price_s4351);
    return;

  anon82_Else:
    assume {:partition} choice != 23;
    goto anon83_Then, anon83_Else;

  anon83_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 124} validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4496, inspector_s4496, appraiser_s4496, description_s4496, price_s4496);
    return;

  anon83_Else:
    assume {:partition} choice != 22;
    goto anon84_Then, anon84_Else;

  anon84_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 125} validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4641, inspector_s4641, appraiser_s4641, description_s4641, price_s4641);
    return;

  anon84_Else:
    assume {:partition} choice != 21;
    goto anon85_Then, anon85_Else;

  anon85_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 126} validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4784, inspector_s4784, appraiser_s4784, description_s4784, price_s4784);
    return;

  anon85_Else:
    assume {:partition} choice != 20;
    goto anon86_Then, anon86_Else;

  anon86_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 127} validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4927, inspector_s4927, appraiser_s4927, description_s4927, price_s4927);
    return;

  anon86_Else:
    assume {:partition} choice != 19;
    goto anon87_Then, anon87_Else;

  anon87_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 128} validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5070, inspector_s5070, appraiser_s5070, description_s5070, price_s5070);
    return;

  anon87_Else:
    assume {:partition} choice != 18;
    goto anon88_Then, anon88_Else;

  anon88_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 129} validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5213, inspector_s5213, appraiser_s5213, description_s5213, price_s5213);
    return;

  anon88_Else:
    assume {:partition} choice != 17;
    goto anon89_Then, anon89_Else;

  anon89_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 130} validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5356, inspector_s5356, appraiser_s5356, description_s5356, price_s5356);
    return;

  anon89_Else:
    assume {:partition} choice != 16;
    goto anon90_Then, anon90_Else;

  anon90_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 131} validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5499, inspector_s5499, appraiser_s5499, description_s5499, price_s5499);
    return;

  anon90_Else:
    assume {:partition} choice != 15;
    goto anon91_Then, anon91_Else;

  anon91_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 132} validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5642, inspector_s5642, appraiser_s5642, description_s5642, price_s5642);
    return;

  anon91_Else:
    assume {:partition} choice != 14;
    goto anon92_Then, anon92_Else;

  anon92_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 133} validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5785, inspector_s5785, appraiser_s5785, description_s5785, price_s5785);
    return;

  anon92_Else:
    assume {:partition} choice != 13;
    goto anon93_Then, anon93_Else;

  anon93_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 134} validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5928, inspector_s5928, appraiser_s5928, description_s5928, price_s5928);
    return;

  anon93_Else:
    assume {:partition} choice != 12;
    goto anon94_Then, anon94_Else;

  anon94_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 135} validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6069, inspector_s6069, appraiser_s6069, description_s6069, price_s6069);
    return;

  anon94_Else:
    assume {:partition} choice != 11;
    goto anon95_Then, anon95_Else;

  anon95_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 136} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon95_Else:
    assume {:partition} choice != 10;
    goto anon96_Then, anon96_Else;

  anon96_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 137} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6174, price_s6174);
    return;

  anon96_Else:
    assume {:partition} choice != 9;
    goto anon97_Then, anon97_Else;

  anon97_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 138} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6244, appraiser_s6244, offerPrice_s6244);
    return;

  anon97_Else:
    assume {:partition} choice != 8;
    goto anon98_Then, anon98_Else;

  anon98_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 139} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon98_Else:
    assume {:partition} choice != 7;
    goto anon99_Then, anon99_Else;

  anon99_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 140} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon99_Else:
    assume {:partition} choice != 6;
    goto anon100_Then, anon100_Else;

  anon100_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 141} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon100_Else:
    assume {:partition} choice != 5;
    goto anon101_Then, anon101_Else;

  anon101_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 142} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6468);
    return;

  anon101_Else:
    assume {:partition} choice != 4;
    goto anon102_Then, anon102_Else;

  anon102_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 143} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon102_Else:
    assume {:partition} choice != 3;
    goto anon103_Then, anon103_Else;

  anon103_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 144} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon103_Else:
    assume {:partition} choice != 2;
    goto anon104_Then, anon104_Else;

  anon104_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 145} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon104_Else:
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
  var description_s6122: int;
  var price_s6122: int;

  anon0:
    call {:si_unique_call 146} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 147} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6122, price_s6122);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 148} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


