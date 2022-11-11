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

procedure {:public} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s152: int, inspector_s152: Ref, appraiser_s152: Ref, description_s152: int, price_s152: int);



procedure {:public} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s303: int, inspector_s303: Ref, appraiser_s303: Ref, description_s303: int, price_s303: int);



procedure {:public} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s454: int, inspector_s454: Ref, appraiser_s454: Ref, description_s454: int, price_s454: int);



procedure {:public} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s605: int, inspector_s605: Ref, appraiser_s605: Ref, description_s605: int, price_s605: int);



procedure {:public} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s756: int, inspector_s756: Ref, appraiser_s756: Ref, description_s756: int, price_s756: int);



procedure {:public} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s907: int, inspector_s907: Ref, appraiser_s907: Ref, description_s907: int, price_s907: int);



procedure {:public} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1058: int, inspector_s1058: Ref, appraiser_s1058: Ref, description_s1058: int, price_s1058: int);



procedure {:public} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1209: int, inspector_s1209: Ref, appraiser_s1209: Ref, description_s1209: int, price_s1209: int);



procedure {:public} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1360: int, inspector_s1360: Ref, appraiser_s1360: Ref, description_s1360: int, price_s1360: int);



procedure {:public} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1511: int, inspector_s1511: Ref, appraiser_s1511: Ref, description_s1511: int, price_s1511: int);



procedure {:public} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1662: int, inspector_s1662: Ref, appraiser_s1662: Ref, description_s1662: int, price_s1662: int);



procedure {:public} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1813: int, inspector_s1813: Ref, appraiser_s1813: Ref, description_s1813: int, price_s1813: int);



procedure {:public} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1964: int, inspector_s1964: Ref, appraiser_s1964: Ref, description_s1964: int, price_s1964: int);



procedure {:public} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2115: int, inspector_s2115: Ref, appraiser_s2115: Ref, description_s2115: int, price_s2115: int);



procedure {:public} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2266: int, inspector_s2266: Ref, appraiser_s2266: Ref, description_s2266: int, price_s2266: int);



procedure {:public} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2417: int, inspector_s2417: Ref, appraiser_s2417: Ref, description_s2417: int, price_s2417: int);



procedure {:public} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2568: int, inspector_s2568: Ref, appraiser_s2568: Ref, description_s2568: int, price_s2568: int);



procedure {:public} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2719: int, inspector_s2719: Ref, appraiser_s2719: Ref, description_s2719: int, price_s2719: int);



procedure {:public} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2870: int, inspector_s2870: Ref, appraiser_s2870: Ref, description_s2870: int, price_s2870: int);



procedure {:public} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3021: int, inspector_s3021: Ref, appraiser_s3021: Ref, description_s3021: int, price_s3021: int);



procedure {:public} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3172: int, inspector_s3172: Ref, appraiser_s3172: Ref, description_s3172: int, price_s3172: int);



procedure {:public} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3323: int, inspector_s3323: Ref, appraiser_s3323: Ref, description_s3323: int, price_s3323: int);



procedure {:public} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3474: int, inspector_s3474: Ref, appraiser_s3474: Ref, description_s3474: int, price_s3474: int);



procedure {:public} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3625: int, inspector_s3625: Ref, appraiser_s3625: Ref, description_s3625: int, price_s3625: int);



procedure {:public} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3776: int, inspector_s3776: Ref, appraiser_s3776: Ref, description_s3776: int, price_s3776: int);



procedure {:public} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3927: int, inspector_s3927: Ref, appraiser_s3927: Ref, description_s3927: int, price_s3927: int);



procedure {:public} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4078: int, inspector_s4078: Ref, appraiser_s4078: Ref, description_s4078: int, price_s4078: int);



procedure {:public} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4229: int, inspector_s4229: Ref, appraiser_s4229: Ref, description_s4229: int, price_s4229: int);



procedure {:public} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4380: int, inspector_s4380: Ref, appraiser_s4380: Ref, description_s4380: int, price_s4380: int);



procedure {:public} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4531: int, inspector_s4531: Ref, appraiser_s4531: Ref, description_s4531: int, price_s4531: int);



procedure {:public} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4682: int, inspector_s4682: Ref, appraiser_s4682: Ref, description_s4682: int, price_s4682: int);



procedure {:public} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4833: int, inspector_s4833: Ref, appraiser_s4833: Ref, description_s4833: int, price_s4833: int);



procedure {:public} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4984: int, inspector_s4984: Ref, appraiser_s4984: Ref, description_s4984: int, price_s4984: int);



procedure {:public} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5135: int, inspector_s5135: Ref, appraiser_s5135: Ref, description_s5135: int, price_s5135: int);



procedure {:public} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5286: int, inspector_s5286: Ref, appraiser_s5286: Ref, description_s5286: int, price_s5286: int);



procedure {:public} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5437: int, inspector_s5437: Ref, appraiser_s5437: Ref, description_s5437: int, price_s5437: int);



procedure {:public} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5588: int, inspector_s5588: Ref, appraiser_s5588: Ref, description_s5588: int, price_s5588: int);



procedure {:public} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5739: int, inspector_s5739: Ref, appraiser_s5739: Ref, description_s5739: int, price_s5739: int);



procedure {:public} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5890: int, inspector_s5890: Ref, appraiser_s5890: Ref, description_s5890: int, price_s5890: int);



procedure {:public} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6041: int, inspector_s6041: Ref, appraiser_s6041: Ref, description_s6041: int, price_s6041: int);



procedure {:public} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6192: int, inspector_s6192: Ref, appraiser_s6192: Ref, description_s6192: int, price_s6192: int);



procedure {:public} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6343: int, inspector_s6343: Ref, appraiser_s6343: Ref, description_s6343: int, price_s6343: int);



procedure {:public} validCombination42_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6494: int, inspector_s6494: Ref, appraiser_s6494: Ref, description_s6494: int, price_s6494: int);



implementation {:ForceInline} validCombination42_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6494: int, inspector_s6494: Ref, appraiser_s6494: Ref, description_s6494: int, price_s6494: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6494);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6494);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6494);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6494);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6494);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume (true && !(State_AssetTransfer[this] == 0) && State_AssetTransfer[this] == 0 && !(State_AssetTransfer[this] == 1) && !(State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && State_AssetTransfer[this] == 7) || State_AssetTransfer[this] == 5 || (State_AssetTransfer[this] == 6 && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && !(State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
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

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6547: int, price_s6547: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6547: int, price_s6547: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := -540216165;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6547);
    call {:si_unique_call 15} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6547);
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
    assume price_s6547 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6547;
    call {:si_unique_call 18} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    Description_AssetTransfer[this] := description_s6547;
    call {:si_unique_call 19} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6547: int, price_s6547: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6547: int, price_s6547: int)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6547);
    call {:si_unique_call 25} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6547);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6547, price_s6547);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6599: int, price_s6599: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6599: int, price_s6599: int)
{

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6599);
    call {:si_unique_call 38} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6599);
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
    Description_AssetTransfer[this] := description_s6599;
    call {:si_unique_call 40} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s6599 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6599;
    call {:si_unique_call 41} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6669: Ref, appraiser_s6669: Ref, offerPrice_s6669: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6669: Ref, appraiser_s6669: Ref, offerPrice_s6669: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 42} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 43} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 44} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 45} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 46} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6669);
    call {:si_unique_call 47} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6669);
    call {:si_unique_call 48} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6669);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s6669 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s6669 == null || appraiser_s6669 == null || offerPrice_s6669 == 0;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s6669 == null || appraiser_s6669 == null || offerPrice_s6669 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s6669;
    call {:si_unique_call 51} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s6669;
    call {:si_unique_call 52} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6669 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6669;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6893: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6893: int)
{

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6893);
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
    assume offerPrice_s6893 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6893 == 0;
    goto corral_source_split_105;

  corral_source_split_105:
    goto corral_source_split_106;

  corral_source_split_106:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6893 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6893 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6893;
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
  var offerPrice_s152: int;
  var inspector_s152: Ref;
  var appraiser_s152: Ref;
  var description_s152: int;
  var price_s152: int;
  var offerPrice_s303: int;
  var inspector_s303: Ref;
  var appraiser_s303: Ref;
  var description_s303: int;
  var price_s303: int;
  var offerPrice_s454: int;
  var inspector_s454: Ref;
  var appraiser_s454: Ref;
  var description_s454: int;
  var price_s454: int;
  var offerPrice_s605: int;
  var inspector_s605: Ref;
  var appraiser_s605: Ref;
  var description_s605: int;
  var price_s605: int;
  var offerPrice_s756: int;
  var inspector_s756: Ref;
  var appraiser_s756: Ref;
  var description_s756: int;
  var price_s756: int;
  var offerPrice_s907: int;
  var inspector_s907: Ref;
  var appraiser_s907: Ref;
  var description_s907: int;
  var price_s907: int;
  var offerPrice_s1058: int;
  var inspector_s1058: Ref;
  var appraiser_s1058: Ref;
  var description_s1058: int;
  var price_s1058: int;
  var offerPrice_s1209: int;
  var inspector_s1209: Ref;
  var appraiser_s1209: Ref;
  var description_s1209: int;
  var price_s1209: int;
  var offerPrice_s1360: int;
  var inspector_s1360: Ref;
  var appraiser_s1360: Ref;
  var description_s1360: int;
  var price_s1360: int;
  var offerPrice_s1511: int;
  var inspector_s1511: Ref;
  var appraiser_s1511: Ref;
  var description_s1511: int;
  var price_s1511: int;
  var offerPrice_s1662: int;
  var inspector_s1662: Ref;
  var appraiser_s1662: Ref;
  var description_s1662: int;
  var price_s1662: int;
  var offerPrice_s1813: int;
  var inspector_s1813: Ref;
  var appraiser_s1813: Ref;
  var description_s1813: int;
  var price_s1813: int;
  var offerPrice_s1964: int;
  var inspector_s1964: Ref;
  var appraiser_s1964: Ref;
  var description_s1964: int;
  var price_s1964: int;
  var offerPrice_s2115: int;
  var inspector_s2115: Ref;
  var appraiser_s2115: Ref;
  var description_s2115: int;
  var price_s2115: int;
  var offerPrice_s2266: int;
  var inspector_s2266: Ref;
  var appraiser_s2266: Ref;
  var description_s2266: int;
  var price_s2266: int;
  var offerPrice_s2417: int;
  var inspector_s2417: Ref;
  var appraiser_s2417: Ref;
  var description_s2417: int;
  var price_s2417: int;
  var offerPrice_s2568: int;
  var inspector_s2568: Ref;
  var appraiser_s2568: Ref;
  var description_s2568: int;
  var price_s2568: int;
  var offerPrice_s2719: int;
  var inspector_s2719: Ref;
  var appraiser_s2719: Ref;
  var description_s2719: int;
  var price_s2719: int;
  var offerPrice_s2870: int;
  var inspector_s2870: Ref;
  var appraiser_s2870: Ref;
  var description_s2870: int;
  var price_s2870: int;
  var offerPrice_s3021: int;
  var inspector_s3021: Ref;
  var appraiser_s3021: Ref;
  var description_s3021: int;
  var price_s3021: int;
  var offerPrice_s3172: int;
  var inspector_s3172: Ref;
  var appraiser_s3172: Ref;
  var description_s3172: int;
  var price_s3172: int;
  var offerPrice_s3323: int;
  var inspector_s3323: Ref;
  var appraiser_s3323: Ref;
  var description_s3323: int;
  var price_s3323: int;
  var offerPrice_s3474: int;
  var inspector_s3474: Ref;
  var appraiser_s3474: Ref;
  var description_s3474: int;
  var price_s3474: int;
  var offerPrice_s3625: int;
  var inspector_s3625: Ref;
  var appraiser_s3625: Ref;
  var description_s3625: int;
  var price_s3625: int;
  var offerPrice_s3776: int;
  var inspector_s3776: Ref;
  var appraiser_s3776: Ref;
  var description_s3776: int;
  var price_s3776: int;
  var offerPrice_s3927: int;
  var inspector_s3927: Ref;
  var appraiser_s3927: Ref;
  var description_s3927: int;
  var price_s3927: int;
  var offerPrice_s4078: int;
  var inspector_s4078: Ref;
  var appraiser_s4078: Ref;
  var description_s4078: int;
  var price_s4078: int;
  var offerPrice_s4229: int;
  var inspector_s4229: Ref;
  var appraiser_s4229: Ref;
  var description_s4229: int;
  var price_s4229: int;
  var offerPrice_s4380: int;
  var inspector_s4380: Ref;
  var appraiser_s4380: Ref;
  var description_s4380: int;
  var price_s4380: int;
  var offerPrice_s4531: int;
  var inspector_s4531: Ref;
  var appraiser_s4531: Ref;
  var description_s4531: int;
  var price_s4531: int;
  var offerPrice_s4682: int;
  var inspector_s4682: Ref;
  var appraiser_s4682: Ref;
  var description_s4682: int;
  var price_s4682: int;
  var offerPrice_s4833: int;
  var inspector_s4833: Ref;
  var appraiser_s4833: Ref;
  var description_s4833: int;
  var price_s4833: int;
  var offerPrice_s4984: int;
  var inspector_s4984: Ref;
  var appraiser_s4984: Ref;
  var description_s4984: int;
  var price_s4984: int;
  var offerPrice_s5135: int;
  var inspector_s5135: Ref;
  var appraiser_s5135: Ref;
  var description_s5135: int;
  var price_s5135: int;
  var offerPrice_s5286: int;
  var inspector_s5286: Ref;
  var appraiser_s5286: Ref;
  var description_s5286: int;
  var price_s5286: int;
  var offerPrice_s5437: int;
  var inspector_s5437: Ref;
  var appraiser_s5437: Ref;
  var description_s5437: int;
  var price_s5437: int;
  var offerPrice_s5588: int;
  var inspector_s5588: Ref;
  var appraiser_s5588: Ref;
  var description_s5588: int;
  var price_s5588: int;
  var offerPrice_s5739: int;
  var inspector_s5739: Ref;
  var appraiser_s5739: Ref;
  var description_s5739: int;
  var price_s5739: int;
  var offerPrice_s5890: int;
  var inspector_s5890: Ref;
  var appraiser_s5890: Ref;
  var description_s5890: int;
  var price_s5890: int;
  var offerPrice_s6041: int;
  var inspector_s6041: Ref;
  var appraiser_s6041: Ref;
  var description_s6041: int;
  var price_s6041: int;
  var offerPrice_s6192: int;
  var inspector_s6192: Ref;
  var appraiser_s6192: Ref;
  var description_s6192: int;
  var price_s6192: int;
  var offerPrice_s6343: int;
  var inspector_s6343: Ref;
  var appraiser_s6343: Ref;
  var description_s6343: int;
  var price_s6343: int;
  var offerPrice_s6494: int;
  var inspector_s6494: Ref;
  var appraiser_s6494: Ref;
  var description_s6494: int;
  var price_s6494: int;
  var description_s6547: int;
  var price_s6547: int;
  var description_s6599: int;
  var price_s6599: int;
  var inspector_s6669: Ref;
  var appraiser_s6669: Ref;
  var offerPrice_s6669: int;
  var offerPrice_s6893: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s152;
    havoc inspector_s152;
    havoc appraiser_s152;
    havoc description_s152;
    havoc price_s152;
    havoc offerPrice_s303;
    havoc inspector_s303;
    havoc appraiser_s303;
    havoc description_s303;
    havoc price_s303;
    havoc offerPrice_s454;
    havoc inspector_s454;
    havoc appraiser_s454;
    havoc description_s454;
    havoc price_s454;
    havoc offerPrice_s605;
    havoc inspector_s605;
    havoc appraiser_s605;
    havoc description_s605;
    havoc price_s605;
    havoc offerPrice_s756;
    havoc inspector_s756;
    havoc appraiser_s756;
    havoc description_s756;
    havoc price_s756;
    havoc offerPrice_s907;
    havoc inspector_s907;
    havoc appraiser_s907;
    havoc description_s907;
    havoc price_s907;
    havoc offerPrice_s1058;
    havoc inspector_s1058;
    havoc appraiser_s1058;
    havoc description_s1058;
    havoc price_s1058;
    havoc offerPrice_s1209;
    havoc inspector_s1209;
    havoc appraiser_s1209;
    havoc description_s1209;
    havoc price_s1209;
    havoc offerPrice_s1360;
    havoc inspector_s1360;
    havoc appraiser_s1360;
    havoc description_s1360;
    havoc price_s1360;
    havoc offerPrice_s1511;
    havoc inspector_s1511;
    havoc appraiser_s1511;
    havoc description_s1511;
    havoc price_s1511;
    havoc offerPrice_s1662;
    havoc inspector_s1662;
    havoc appraiser_s1662;
    havoc description_s1662;
    havoc price_s1662;
    havoc offerPrice_s1813;
    havoc inspector_s1813;
    havoc appraiser_s1813;
    havoc description_s1813;
    havoc price_s1813;
    havoc offerPrice_s1964;
    havoc inspector_s1964;
    havoc appraiser_s1964;
    havoc description_s1964;
    havoc price_s1964;
    havoc offerPrice_s2115;
    havoc inspector_s2115;
    havoc appraiser_s2115;
    havoc description_s2115;
    havoc price_s2115;
    havoc offerPrice_s2266;
    havoc inspector_s2266;
    havoc appraiser_s2266;
    havoc description_s2266;
    havoc price_s2266;
    havoc offerPrice_s2417;
    havoc inspector_s2417;
    havoc appraiser_s2417;
    havoc description_s2417;
    havoc price_s2417;
    havoc offerPrice_s2568;
    havoc inspector_s2568;
    havoc appraiser_s2568;
    havoc description_s2568;
    havoc price_s2568;
    havoc offerPrice_s2719;
    havoc inspector_s2719;
    havoc appraiser_s2719;
    havoc description_s2719;
    havoc price_s2719;
    havoc offerPrice_s2870;
    havoc inspector_s2870;
    havoc appraiser_s2870;
    havoc description_s2870;
    havoc price_s2870;
    havoc offerPrice_s3021;
    havoc inspector_s3021;
    havoc appraiser_s3021;
    havoc description_s3021;
    havoc price_s3021;
    havoc offerPrice_s3172;
    havoc inspector_s3172;
    havoc appraiser_s3172;
    havoc description_s3172;
    havoc price_s3172;
    havoc offerPrice_s3323;
    havoc inspector_s3323;
    havoc appraiser_s3323;
    havoc description_s3323;
    havoc price_s3323;
    havoc offerPrice_s3474;
    havoc inspector_s3474;
    havoc appraiser_s3474;
    havoc description_s3474;
    havoc price_s3474;
    havoc offerPrice_s3625;
    havoc inspector_s3625;
    havoc appraiser_s3625;
    havoc description_s3625;
    havoc price_s3625;
    havoc offerPrice_s3776;
    havoc inspector_s3776;
    havoc appraiser_s3776;
    havoc description_s3776;
    havoc price_s3776;
    havoc offerPrice_s3927;
    havoc inspector_s3927;
    havoc appraiser_s3927;
    havoc description_s3927;
    havoc price_s3927;
    havoc offerPrice_s4078;
    havoc inspector_s4078;
    havoc appraiser_s4078;
    havoc description_s4078;
    havoc price_s4078;
    havoc offerPrice_s4229;
    havoc inspector_s4229;
    havoc appraiser_s4229;
    havoc description_s4229;
    havoc price_s4229;
    havoc offerPrice_s4380;
    havoc inspector_s4380;
    havoc appraiser_s4380;
    havoc description_s4380;
    havoc price_s4380;
    havoc offerPrice_s4531;
    havoc inspector_s4531;
    havoc appraiser_s4531;
    havoc description_s4531;
    havoc price_s4531;
    havoc offerPrice_s4682;
    havoc inspector_s4682;
    havoc appraiser_s4682;
    havoc description_s4682;
    havoc price_s4682;
    havoc offerPrice_s4833;
    havoc inspector_s4833;
    havoc appraiser_s4833;
    havoc description_s4833;
    havoc price_s4833;
    havoc offerPrice_s4984;
    havoc inspector_s4984;
    havoc appraiser_s4984;
    havoc description_s4984;
    havoc price_s4984;
    havoc offerPrice_s5135;
    havoc inspector_s5135;
    havoc appraiser_s5135;
    havoc description_s5135;
    havoc price_s5135;
    havoc offerPrice_s5286;
    havoc inspector_s5286;
    havoc appraiser_s5286;
    havoc description_s5286;
    havoc price_s5286;
    havoc offerPrice_s5437;
    havoc inspector_s5437;
    havoc appraiser_s5437;
    havoc description_s5437;
    havoc price_s5437;
    havoc offerPrice_s5588;
    havoc inspector_s5588;
    havoc appraiser_s5588;
    havoc description_s5588;
    havoc price_s5588;
    havoc offerPrice_s5739;
    havoc inspector_s5739;
    havoc appraiser_s5739;
    havoc description_s5739;
    havoc price_s5739;
    havoc offerPrice_s5890;
    havoc inspector_s5890;
    havoc appraiser_s5890;
    havoc description_s5890;
    havoc price_s5890;
    havoc offerPrice_s6041;
    havoc inspector_s6041;
    havoc appraiser_s6041;
    havoc description_s6041;
    havoc price_s6041;
    havoc offerPrice_s6192;
    havoc inspector_s6192;
    havoc appraiser_s6192;
    havoc description_s6192;
    havoc price_s6192;
    havoc offerPrice_s6343;
    havoc inspector_s6343;
    havoc appraiser_s6343;
    havoc description_s6343;
    havoc price_s6343;
    havoc offerPrice_s6494;
    havoc inspector_s6494;
    havoc appraiser_s6494;
    havoc description_s6494;
    havoc price_s6494;
    havoc description_s6547;
    havoc price_s6547;
    havoc description_s6599;
    havoc price_s6599;
    havoc inspector_s6669;
    havoc appraiser_s6669;
    havoc offerPrice_s6669;
    havoc offerPrice_s6893;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 53;
    call {:si_unique_call 94} validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s152, inspector_s152, appraiser_s152, description_s152, price_s152);
    return;

  anon54_Else:
    assume {:partition} choice != 53;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 52;
    call {:si_unique_call 95} validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s303, inspector_s303, appraiser_s303, description_s303, price_s303);
    return;

  anon55_Else:
    assume {:partition} choice != 52;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 51;
    call {:si_unique_call 96} validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s454, inspector_s454, appraiser_s454, description_s454, price_s454);
    return;

  anon56_Else:
    assume {:partition} choice != 51;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 50;
    call {:si_unique_call 97} validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s605, inspector_s605, appraiser_s605, description_s605, price_s605);
    return;

  anon57_Else:
    assume {:partition} choice != 50;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 49;
    call {:si_unique_call 98} validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s756, inspector_s756, appraiser_s756, description_s756, price_s756);
    return;

  anon58_Else:
    assume {:partition} choice != 49;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 48;
    call {:si_unique_call 99} validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s907, inspector_s907, appraiser_s907, description_s907, price_s907);
    return;

  anon59_Else:
    assume {:partition} choice != 48;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 47;
    call {:si_unique_call 100} validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1058, inspector_s1058, appraiser_s1058, description_s1058, price_s1058);
    return;

  anon60_Else:
    assume {:partition} choice != 47;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 46;
    call {:si_unique_call 101} validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1209, inspector_s1209, appraiser_s1209, description_s1209, price_s1209);
    return;

  anon61_Else:
    assume {:partition} choice != 46;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 45;
    call {:si_unique_call 102} validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1360, inspector_s1360, appraiser_s1360, description_s1360, price_s1360);
    return;

  anon62_Else:
    assume {:partition} choice != 45;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 44;
    call {:si_unique_call 103} validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1511, inspector_s1511, appraiser_s1511, description_s1511, price_s1511);
    return;

  anon63_Else:
    assume {:partition} choice != 44;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 43;
    call {:si_unique_call 104} validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1662, inspector_s1662, appraiser_s1662, description_s1662, price_s1662);
    return;

  anon64_Else:
    assume {:partition} choice != 43;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 42;
    call {:si_unique_call 105} validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1813, inspector_s1813, appraiser_s1813, description_s1813, price_s1813);
    return;

  anon65_Else:
    assume {:partition} choice != 42;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 106} validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1964, inspector_s1964, appraiser_s1964, description_s1964, price_s1964);
    return;

  anon66_Else:
    assume {:partition} choice != 41;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 107} validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2115, inspector_s2115, appraiser_s2115, description_s2115, price_s2115);
    return;

  anon67_Else:
    assume {:partition} choice != 40;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 108} validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2266, inspector_s2266, appraiser_s2266, description_s2266, price_s2266);
    return;

  anon68_Else:
    assume {:partition} choice != 39;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 109} validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2417, inspector_s2417, appraiser_s2417, description_s2417, price_s2417);
    return;

  anon69_Else:
    assume {:partition} choice != 38;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 110} validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2568, inspector_s2568, appraiser_s2568, description_s2568, price_s2568);
    return;

  anon70_Else:
    assume {:partition} choice != 37;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 111} validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2719, inspector_s2719, appraiser_s2719, description_s2719, price_s2719);
    return;

  anon71_Else:
    assume {:partition} choice != 36;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 112} validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2870, inspector_s2870, appraiser_s2870, description_s2870, price_s2870);
    return;

  anon72_Else:
    assume {:partition} choice != 35;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 113} validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3021, inspector_s3021, appraiser_s3021, description_s3021, price_s3021);
    return;

  anon73_Else:
    assume {:partition} choice != 34;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 114} validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3172, inspector_s3172, appraiser_s3172, description_s3172, price_s3172);
    return;

  anon74_Else:
    assume {:partition} choice != 33;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 115} validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3323, inspector_s3323, appraiser_s3323, description_s3323, price_s3323);
    return;

  anon75_Else:
    assume {:partition} choice != 32;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 116} validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3474, inspector_s3474, appraiser_s3474, description_s3474, price_s3474);
    return;

  anon76_Else:
    assume {:partition} choice != 31;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 117} validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3625, inspector_s3625, appraiser_s3625, description_s3625, price_s3625);
    return;

  anon77_Else:
    assume {:partition} choice != 30;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 118} validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3776, inspector_s3776, appraiser_s3776, description_s3776, price_s3776);
    return;

  anon78_Else:
    assume {:partition} choice != 29;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 119} validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3927, inspector_s3927, appraiser_s3927, description_s3927, price_s3927);
    return;

  anon79_Else:
    assume {:partition} choice != 28;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 120} validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4078, inspector_s4078, appraiser_s4078, description_s4078, price_s4078);
    return;

  anon80_Else:
    assume {:partition} choice != 27;
    goto anon81_Then, anon81_Else;

  anon81_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 121} validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4229, inspector_s4229, appraiser_s4229, description_s4229, price_s4229);
    return;

  anon81_Else:
    assume {:partition} choice != 26;
    goto anon82_Then, anon82_Else;

  anon82_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 122} validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4380, inspector_s4380, appraiser_s4380, description_s4380, price_s4380);
    return;

  anon82_Else:
    assume {:partition} choice != 25;
    goto anon83_Then, anon83_Else;

  anon83_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 123} validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4531, inspector_s4531, appraiser_s4531, description_s4531, price_s4531);
    return;

  anon83_Else:
    assume {:partition} choice != 24;
    goto anon84_Then, anon84_Else;

  anon84_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 124} validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4682, inspector_s4682, appraiser_s4682, description_s4682, price_s4682);
    return;

  anon84_Else:
    assume {:partition} choice != 23;
    goto anon85_Then, anon85_Else;

  anon85_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 125} validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4833, inspector_s4833, appraiser_s4833, description_s4833, price_s4833);
    return;

  anon85_Else:
    assume {:partition} choice != 22;
    goto anon86_Then, anon86_Else;

  anon86_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 126} validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4984, inspector_s4984, appraiser_s4984, description_s4984, price_s4984);
    return;

  anon86_Else:
    assume {:partition} choice != 21;
    goto anon87_Then, anon87_Else;

  anon87_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 127} validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5135, inspector_s5135, appraiser_s5135, description_s5135, price_s5135);
    return;

  anon87_Else:
    assume {:partition} choice != 20;
    goto anon88_Then, anon88_Else;

  anon88_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 128} validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5286, inspector_s5286, appraiser_s5286, description_s5286, price_s5286);
    return;

  anon88_Else:
    assume {:partition} choice != 19;
    goto anon89_Then, anon89_Else;

  anon89_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 129} validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5437, inspector_s5437, appraiser_s5437, description_s5437, price_s5437);
    return;

  anon89_Else:
    assume {:partition} choice != 18;
    goto anon90_Then, anon90_Else;

  anon90_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 130} validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5588, inspector_s5588, appraiser_s5588, description_s5588, price_s5588);
    return;

  anon90_Else:
    assume {:partition} choice != 17;
    goto anon91_Then, anon91_Else;

  anon91_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 131} validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5739, inspector_s5739, appraiser_s5739, description_s5739, price_s5739);
    return;

  anon91_Else:
    assume {:partition} choice != 16;
    goto anon92_Then, anon92_Else;

  anon92_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 132} validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5890, inspector_s5890, appraiser_s5890, description_s5890, price_s5890);
    return;

  anon92_Else:
    assume {:partition} choice != 15;
    goto anon93_Then, anon93_Else;

  anon93_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 133} validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6041, inspector_s6041, appraiser_s6041, description_s6041, price_s6041);
    return;

  anon93_Else:
    assume {:partition} choice != 14;
    goto anon94_Then, anon94_Else;

  anon94_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 134} validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6192, inspector_s6192, appraiser_s6192, description_s6192, price_s6192);
    return;

  anon94_Else:
    assume {:partition} choice != 13;
    goto anon95_Then, anon95_Else;

  anon95_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 135} validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6343, inspector_s6343, appraiser_s6343, description_s6343, price_s6343);
    return;

  anon95_Else:
    assume {:partition} choice != 12;
    goto anon96_Then, anon96_Else;

  anon96_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 136} validCombination42_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6494, inspector_s6494, appraiser_s6494, description_s6494, price_s6494);
    return;

  anon96_Else:
    assume {:partition} choice != 11;
    goto anon97_Then, anon97_Else;

  anon97_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 137} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon97_Else:
    assume {:partition} choice != 10;
    goto anon98_Then, anon98_Else;

  anon98_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 138} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6599, price_s6599);
    return;

  anon98_Else:
    assume {:partition} choice != 9;
    goto anon99_Then, anon99_Else;

  anon99_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 139} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6669, appraiser_s6669, offerPrice_s6669);
    return;

  anon99_Else:
    assume {:partition} choice != 8;
    goto anon100_Then, anon100_Else;

  anon100_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 140} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon100_Else:
    assume {:partition} choice != 7;
    goto anon101_Then, anon101_Else;

  anon101_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 141} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon101_Else:
    assume {:partition} choice != 6;
    goto anon102_Then, anon102_Else;

  anon102_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 142} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon102_Else:
    assume {:partition} choice != 5;
    goto anon103_Then, anon103_Else;

  anon103_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 143} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6893);
    return;

  anon103_Else:
    assume {:partition} choice != 4;
    goto anon104_Then, anon104_Else;

  anon104_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 144} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon104_Else:
    assume {:partition} choice != 3;
    goto anon105_Then, anon105_Else;

  anon105_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 145} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon105_Else:
    assume {:partition} choice != 2;
    goto anon106_Then, anon106_Else;

  anon106_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 146} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon106_Else:
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
  var description_s6547: int;
  var price_s6547: int;

  anon0:
    call {:si_unique_call 147} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 148} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6547, price_s6547);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 149} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


