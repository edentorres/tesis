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

procedure {:public} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s148: int, inspector_s148: Ref, appraiser_s148: Ref, description_s148: int, price_s148: int);



procedure {:public} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s295: int, inspector_s295: Ref, appraiser_s295: Ref, description_s295: int, price_s295: int);



procedure {:public} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s442: int, inspector_s442: Ref, appraiser_s442: Ref, description_s442: int, price_s442: int);



procedure {:public} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s589: int, inspector_s589: Ref, appraiser_s589: Ref, description_s589: int, price_s589: int);



procedure {:public} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s736: int, inspector_s736: Ref, appraiser_s736: Ref, description_s736: int, price_s736: int);



procedure {:public} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s883: int, inspector_s883: Ref, appraiser_s883: Ref, description_s883: int, price_s883: int);



procedure {:public} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1030: int, inspector_s1030: Ref, appraiser_s1030: Ref, description_s1030: int, price_s1030: int);



procedure {:public} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1177: int, inspector_s1177: Ref, appraiser_s1177: Ref, description_s1177: int, price_s1177: int);



procedure {:public} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1324: int, inspector_s1324: Ref, appraiser_s1324: Ref, description_s1324: int, price_s1324: int);



procedure {:public} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1471: int, inspector_s1471: Ref, appraiser_s1471: Ref, description_s1471: int, price_s1471: int);



procedure {:public} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1618: int, inspector_s1618: Ref, appraiser_s1618: Ref, description_s1618: int, price_s1618: int);



procedure {:public} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1765: int, inspector_s1765: Ref, appraiser_s1765: Ref, description_s1765: int, price_s1765: int);



procedure {:public} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1912: int, inspector_s1912: Ref, appraiser_s1912: Ref, description_s1912: int, price_s1912: int);



procedure {:public} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2059: int, inspector_s2059: Ref, appraiser_s2059: Ref, description_s2059: int, price_s2059: int);



procedure {:public} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2206: int, inspector_s2206: Ref, appraiser_s2206: Ref, description_s2206: int, price_s2206: int);



procedure {:public} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2353: int, inspector_s2353: Ref, appraiser_s2353: Ref, description_s2353: int, price_s2353: int);



procedure {:public} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2500: int, inspector_s2500: Ref, appraiser_s2500: Ref, description_s2500: int, price_s2500: int);



procedure {:public} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2647: int, inspector_s2647: Ref, appraiser_s2647: Ref, description_s2647: int, price_s2647: int);



procedure {:public} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2794: int, inspector_s2794: Ref, appraiser_s2794: Ref, description_s2794: int, price_s2794: int);



procedure {:public} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2941: int, inspector_s2941: Ref, appraiser_s2941: Ref, description_s2941: int, price_s2941: int);



procedure {:public} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3088: int, inspector_s3088: Ref, appraiser_s3088: Ref, description_s3088: int, price_s3088: int);



procedure {:public} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3235: int, inspector_s3235: Ref, appraiser_s3235: Ref, description_s3235: int, price_s3235: int);



procedure {:public} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3382: int, inspector_s3382: Ref, appraiser_s3382: Ref, description_s3382: int, price_s3382: int);



procedure {:public} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3529: int, inspector_s3529: Ref, appraiser_s3529: Ref, description_s3529: int, price_s3529: int);



procedure {:public} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3676: int, inspector_s3676: Ref, appraiser_s3676: Ref, description_s3676: int, price_s3676: int);



procedure {:public} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3823: int, inspector_s3823: Ref, appraiser_s3823: Ref, description_s3823: int, price_s3823: int);



procedure {:public} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3970: int, inspector_s3970: Ref, appraiser_s3970: Ref, description_s3970: int, price_s3970: int);



procedure {:public} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4117: int, inspector_s4117: Ref, appraiser_s4117: Ref, description_s4117: int, price_s4117: int);



procedure {:public} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4264: int, inspector_s4264: Ref, appraiser_s4264: Ref, description_s4264: int, price_s4264: int);



procedure {:public} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4411: int, inspector_s4411: Ref, appraiser_s4411: Ref, description_s4411: int, price_s4411: int);



procedure {:public} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4558: int, inspector_s4558: Ref, appraiser_s4558: Ref, description_s4558: int, price_s4558: int);



procedure {:public} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4705: int, inspector_s4705: Ref, appraiser_s4705: Ref, description_s4705: int, price_s4705: int);



procedure {:public} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4852: int, inspector_s4852: Ref, appraiser_s4852: Ref, description_s4852: int, price_s4852: int);



procedure {:public} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4999: int, inspector_s4999: Ref, appraiser_s4999: Ref, description_s4999: int, price_s4999: int);



procedure {:public} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5146: int, inspector_s5146: Ref, appraiser_s5146: Ref, description_s5146: int, price_s5146: int);



procedure {:public} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5293: int, inspector_s5293: Ref, appraiser_s5293: Ref, description_s5293: int, price_s5293: int);



procedure {:public} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5440: int, inspector_s5440: Ref, appraiser_s5440: Ref, description_s5440: int, price_s5440: int);



procedure {:public} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5587: int, inspector_s5587: Ref, appraiser_s5587: Ref, description_s5587: int, price_s5587: int);



procedure {:public} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5732: int, inspector_s5732: Ref, appraiser_s5732: Ref, description_s5732: int, price_s5732: int);



procedure {:public} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5877: int, inspector_s5877: Ref, appraiser_s5877: Ref, description_s5877: int, price_s5877: int);



procedure {:public} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6022: int, inspector_s6022: Ref, appraiser_s6022: Ref, description_s6022: int, price_s6022: int);



procedure {:public} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6167: int, inspector_s6167: Ref, appraiser_s6167: Ref, description_s6167: int, price_s6167: int);



implementation {:ForceInline} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6167: int, inspector_s6167: Ref, appraiser_s6167: Ref, description_s6167: int, price_s6167: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6167);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6167);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6167);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6167);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6167);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume (true && State_AssetTransfer[this] == 0 && State_AssetTransfer[this] == 0 && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && State_AssetTransfer[this] == 7) || State_AssetTransfer[this] == 5 || (State_AssetTransfer[this] == 6 && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && !(State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
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

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6220: int, price_s6220: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6220: int, price_s6220: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := -1616840636;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6220);
    call {:si_unique_call 15} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6220);
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
    assume price_s6220 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6220;
    call {:si_unique_call 18} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    Description_AssetTransfer[this] := description_s6220;
    call {:si_unique_call 19} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6220: int, price_s6220: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6220: int, price_s6220: int)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6220);
    call {:si_unique_call 25} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6220);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6220, price_s6220);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6272: int, price_s6272: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6272: int, price_s6272: int)
{

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6272);
    call {:si_unique_call 38} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6272);
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
    Description_AssetTransfer[this] := description_s6272;
    call {:si_unique_call 40} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s6272 >= 0;
    AskingPrice_AssetTransfer[this] := price_s6272;
    call {:si_unique_call 41} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6342: Ref, appraiser_s6342: Ref, offerPrice_s6342: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6342: Ref, appraiser_s6342: Ref, offerPrice_s6342: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 42} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 43} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 44} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 45} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 46} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6342);
    call {:si_unique_call 47} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6342);
    call {:si_unique_call 48} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6342);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s6342 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s6342 == null || appraiser_s6342 == null || offerPrice_s6342 == 0;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s6342 == null || appraiser_s6342 == null || offerPrice_s6342 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s6342;
    call {:si_unique_call 51} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s6342;
    call {:si_unique_call 52} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6342 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6342;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6566: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6566: int)
{

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6566);
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
    assume offerPrice_s6566 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6566 == 0;
    goto corral_source_split_105;

  corral_source_split_105:
    goto corral_source_split_106;

  corral_source_split_106:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s6566 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s6566 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s6566;
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
  var offerPrice_s148: int;
  var inspector_s148: Ref;
  var appraiser_s148: Ref;
  var description_s148: int;
  var price_s148: int;
  var offerPrice_s295: int;
  var inspector_s295: Ref;
  var appraiser_s295: Ref;
  var description_s295: int;
  var price_s295: int;
  var offerPrice_s442: int;
  var inspector_s442: Ref;
  var appraiser_s442: Ref;
  var description_s442: int;
  var price_s442: int;
  var offerPrice_s589: int;
  var inspector_s589: Ref;
  var appraiser_s589: Ref;
  var description_s589: int;
  var price_s589: int;
  var offerPrice_s736: int;
  var inspector_s736: Ref;
  var appraiser_s736: Ref;
  var description_s736: int;
  var price_s736: int;
  var offerPrice_s883: int;
  var inspector_s883: Ref;
  var appraiser_s883: Ref;
  var description_s883: int;
  var price_s883: int;
  var offerPrice_s1030: int;
  var inspector_s1030: Ref;
  var appraiser_s1030: Ref;
  var description_s1030: int;
  var price_s1030: int;
  var offerPrice_s1177: int;
  var inspector_s1177: Ref;
  var appraiser_s1177: Ref;
  var description_s1177: int;
  var price_s1177: int;
  var offerPrice_s1324: int;
  var inspector_s1324: Ref;
  var appraiser_s1324: Ref;
  var description_s1324: int;
  var price_s1324: int;
  var offerPrice_s1471: int;
  var inspector_s1471: Ref;
  var appraiser_s1471: Ref;
  var description_s1471: int;
  var price_s1471: int;
  var offerPrice_s1618: int;
  var inspector_s1618: Ref;
  var appraiser_s1618: Ref;
  var description_s1618: int;
  var price_s1618: int;
  var offerPrice_s1765: int;
  var inspector_s1765: Ref;
  var appraiser_s1765: Ref;
  var description_s1765: int;
  var price_s1765: int;
  var offerPrice_s1912: int;
  var inspector_s1912: Ref;
  var appraiser_s1912: Ref;
  var description_s1912: int;
  var price_s1912: int;
  var offerPrice_s2059: int;
  var inspector_s2059: Ref;
  var appraiser_s2059: Ref;
  var description_s2059: int;
  var price_s2059: int;
  var offerPrice_s2206: int;
  var inspector_s2206: Ref;
  var appraiser_s2206: Ref;
  var description_s2206: int;
  var price_s2206: int;
  var offerPrice_s2353: int;
  var inspector_s2353: Ref;
  var appraiser_s2353: Ref;
  var description_s2353: int;
  var price_s2353: int;
  var offerPrice_s2500: int;
  var inspector_s2500: Ref;
  var appraiser_s2500: Ref;
  var description_s2500: int;
  var price_s2500: int;
  var offerPrice_s2647: int;
  var inspector_s2647: Ref;
  var appraiser_s2647: Ref;
  var description_s2647: int;
  var price_s2647: int;
  var offerPrice_s2794: int;
  var inspector_s2794: Ref;
  var appraiser_s2794: Ref;
  var description_s2794: int;
  var price_s2794: int;
  var offerPrice_s2941: int;
  var inspector_s2941: Ref;
  var appraiser_s2941: Ref;
  var description_s2941: int;
  var price_s2941: int;
  var offerPrice_s3088: int;
  var inspector_s3088: Ref;
  var appraiser_s3088: Ref;
  var description_s3088: int;
  var price_s3088: int;
  var offerPrice_s3235: int;
  var inspector_s3235: Ref;
  var appraiser_s3235: Ref;
  var description_s3235: int;
  var price_s3235: int;
  var offerPrice_s3382: int;
  var inspector_s3382: Ref;
  var appraiser_s3382: Ref;
  var description_s3382: int;
  var price_s3382: int;
  var offerPrice_s3529: int;
  var inspector_s3529: Ref;
  var appraiser_s3529: Ref;
  var description_s3529: int;
  var price_s3529: int;
  var offerPrice_s3676: int;
  var inspector_s3676: Ref;
  var appraiser_s3676: Ref;
  var description_s3676: int;
  var price_s3676: int;
  var offerPrice_s3823: int;
  var inspector_s3823: Ref;
  var appraiser_s3823: Ref;
  var description_s3823: int;
  var price_s3823: int;
  var offerPrice_s3970: int;
  var inspector_s3970: Ref;
  var appraiser_s3970: Ref;
  var description_s3970: int;
  var price_s3970: int;
  var offerPrice_s4117: int;
  var inspector_s4117: Ref;
  var appraiser_s4117: Ref;
  var description_s4117: int;
  var price_s4117: int;
  var offerPrice_s4264: int;
  var inspector_s4264: Ref;
  var appraiser_s4264: Ref;
  var description_s4264: int;
  var price_s4264: int;
  var offerPrice_s4411: int;
  var inspector_s4411: Ref;
  var appraiser_s4411: Ref;
  var description_s4411: int;
  var price_s4411: int;
  var offerPrice_s4558: int;
  var inspector_s4558: Ref;
  var appraiser_s4558: Ref;
  var description_s4558: int;
  var price_s4558: int;
  var offerPrice_s4705: int;
  var inspector_s4705: Ref;
  var appraiser_s4705: Ref;
  var description_s4705: int;
  var price_s4705: int;
  var offerPrice_s4852: int;
  var inspector_s4852: Ref;
  var appraiser_s4852: Ref;
  var description_s4852: int;
  var price_s4852: int;
  var offerPrice_s4999: int;
  var inspector_s4999: Ref;
  var appraiser_s4999: Ref;
  var description_s4999: int;
  var price_s4999: int;
  var offerPrice_s5146: int;
  var inspector_s5146: Ref;
  var appraiser_s5146: Ref;
  var description_s5146: int;
  var price_s5146: int;
  var offerPrice_s5293: int;
  var inspector_s5293: Ref;
  var appraiser_s5293: Ref;
  var description_s5293: int;
  var price_s5293: int;
  var offerPrice_s5440: int;
  var inspector_s5440: Ref;
  var appraiser_s5440: Ref;
  var description_s5440: int;
  var price_s5440: int;
  var offerPrice_s5587: int;
  var inspector_s5587: Ref;
  var appraiser_s5587: Ref;
  var description_s5587: int;
  var price_s5587: int;
  var offerPrice_s5732: int;
  var inspector_s5732: Ref;
  var appraiser_s5732: Ref;
  var description_s5732: int;
  var price_s5732: int;
  var offerPrice_s5877: int;
  var inspector_s5877: Ref;
  var appraiser_s5877: Ref;
  var description_s5877: int;
  var price_s5877: int;
  var offerPrice_s6022: int;
  var inspector_s6022: Ref;
  var appraiser_s6022: Ref;
  var description_s6022: int;
  var price_s6022: int;
  var offerPrice_s6167: int;
  var inspector_s6167: Ref;
  var appraiser_s6167: Ref;
  var description_s6167: int;
  var price_s6167: int;
  var description_s6220: int;
  var price_s6220: int;
  var description_s6272: int;
  var price_s6272: int;
  var inspector_s6342: Ref;
  var appraiser_s6342: Ref;
  var offerPrice_s6342: int;
  var offerPrice_s6566: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s148;
    havoc inspector_s148;
    havoc appraiser_s148;
    havoc description_s148;
    havoc price_s148;
    havoc offerPrice_s295;
    havoc inspector_s295;
    havoc appraiser_s295;
    havoc description_s295;
    havoc price_s295;
    havoc offerPrice_s442;
    havoc inspector_s442;
    havoc appraiser_s442;
    havoc description_s442;
    havoc price_s442;
    havoc offerPrice_s589;
    havoc inspector_s589;
    havoc appraiser_s589;
    havoc description_s589;
    havoc price_s589;
    havoc offerPrice_s736;
    havoc inspector_s736;
    havoc appraiser_s736;
    havoc description_s736;
    havoc price_s736;
    havoc offerPrice_s883;
    havoc inspector_s883;
    havoc appraiser_s883;
    havoc description_s883;
    havoc price_s883;
    havoc offerPrice_s1030;
    havoc inspector_s1030;
    havoc appraiser_s1030;
    havoc description_s1030;
    havoc price_s1030;
    havoc offerPrice_s1177;
    havoc inspector_s1177;
    havoc appraiser_s1177;
    havoc description_s1177;
    havoc price_s1177;
    havoc offerPrice_s1324;
    havoc inspector_s1324;
    havoc appraiser_s1324;
    havoc description_s1324;
    havoc price_s1324;
    havoc offerPrice_s1471;
    havoc inspector_s1471;
    havoc appraiser_s1471;
    havoc description_s1471;
    havoc price_s1471;
    havoc offerPrice_s1618;
    havoc inspector_s1618;
    havoc appraiser_s1618;
    havoc description_s1618;
    havoc price_s1618;
    havoc offerPrice_s1765;
    havoc inspector_s1765;
    havoc appraiser_s1765;
    havoc description_s1765;
    havoc price_s1765;
    havoc offerPrice_s1912;
    havoc inspector_s1912;
    havoc appraiser_s1912;
    havoc description_s1912;
    havoc price_s1912;
    havoc offerPrice_s2059;
    havoc inspector_s2059;
    havoc appraiser_s2059;
    havoc description_s2059;
    havoc price_s2059;
    havoc offerPrice_s2206;
    havoc inspector_s2206;
    havoc appraiser_s2206;
    havoc description_s2206;
    havoc price_s2206;
    havoc offerPrice_s2353;
    havoc inspector_s2353;
    havoc appraiser_s2353;
    havoc description_s2353;
    havoc price_s2353;
    havoc offerPrice_s2500;
    havoc inspector_s2500;
    havoc appraiser_s2500;
    havoc description_s2500;
    havoc price_s2500;
    havoc offerPrice_s2647;
    havoc inspector_s2647;
    havoc appraiser_s2647;
    havoc description_s2647;
    havoc price_s2647;
    havoc offerPrice_s2794;
    havoc inspector_s2794;
    havoc appraiser_s2794;
    havoc description_s2794;
    havoc price_s2794;
    havoc offerPrice_s2941;
    havoc inspector_s2941;
    havoc appraiser_s2941;
    havoc description_s2941;
    havoc price_s2941;
    havoc offerPrice_s3088;
    havoc inspector_s3088;
    havoc appraiser_s3088;
    havoc description_s3088;
    havoc price_s3088;
    havoc offerPrice_s3235;
    havoc inspector_s3235;
    havoc appraiser_s3235;
    havoc description_s3235;
    havoc price_s3235;
    havoc offerPrice_s3382;
    havoc inspector_s3382;
    havoc appraiser_s3382;
    havoc description_s3382;
    havoc price_s3382;
    havoc offerPrice_s3529;
    havoc inspector_s3529;
    havoc appraiser_s3529;
    havoc description_s3529;
    havoc price_s3529;
    havoc offerPrice_s3676;
    havoc inspector_s3676;
    havoc appraiser_s3676;
    havoc description_s3676;
    havoc price_s3676;
    havoc offerPrice_s3823;
    havoc inspector_s3823;
    havoc appraiser_s3823;
    havoc description_s3823;
    havoc price_s3823;
    havoc offerPrice_s3970;
    havoc inspector_s3970;
    havoc appraiser_s3970;
    havoc description_s3970;
    havoc price_s3970;
    havoc offerPrice_s4117;
    havoc inspector_s4117;
    havoc appraiser_s4117;
    havoc description_s4117;
    havoc price_s4117;
    havoc offerPrice_s4264;
    havoc inspector_s4264;
    havoc appraiser_s4264;
    havoc description_s4264;
    havoc price_s4264;
    havoc offerPrice_s4411;
    havoc inspector_s4411;
    havoc appraiser_s4411;
    havoc description_s4411;
    havoc price_s4411;
    havoc offerPrice_s4558;
    havoc inspector_s4558;
    havoc appraiser_s4558;
    havoc description_s4558;
    havoc price_s4558;
    havoc offerPrice_s4705;
    havoc inspector_s4705;
    havoc appraiser_s4705;
    havoc description_s4705;
    havoc price_s4705;
    havoc offerPrice_s4852;
    havoc inspector_s4852;
    havoc appraiser_s4852;
    havoc description_s4852;
    havoc price_s4852;
    havoc offerPrice_s4999;
    havoc inspector_s4999;
    havoc appraiser_s4999;
    havoc description_s4999;
    havoc price_s4999;
    havoc offerPrice_s5146;
    havoc inspector_s5146;
    havoc appraiser_s5146;
    havoc description_s5146;
    havoc price_s5146;
    havoc offerPrice_s5293;
    havoc inspector_s5293;
    havoc appraiser_s5293;
    havoc description_s5293;
    havoc price_s5293;
    havoc offerPrice_s5440;
    havoc inspector_s5440;
    havoc appraiser_s5440;
    havoc description_s5440;
    havoc price_s5440;
    havoc offerPrice_s5587;
    havoc inspector_s5587;
    havoc appraiser_s5587;
    havoc description_s5587;
    havoc price_s5587;
    havoc offerPrice_s5732;
    havoc inspector_s5732;
    havoc appraiser_s5732;
    havoc description_s5732;
    havoc price_s5732;
    havoc offerPrice_s5877;
    havoc inspector_s5877;
    havoc appraiser_s5877;
    havoc description_s5877;
    havoc price_s5877;
    havoc offerPrice_s6022;
    havoc inspector_s6022;
    havoc appraiser_s6022;
    havoc description_s6022;
    havoc price_s6022;
    havoc offerPrice_s6167;
    havoc inspector_s6167;
    havoc appraiser_s6167;
    havoc description_s6167;
    havoc price_s6167;
    havoc description_s6220;
    havoc price_s6220;
    havoc description_s6272;
    havoc price_s6272;
    havoc inspector_s6342;
    havoc appraiser_s6342;
    havoc offerPrice_s6342;
    havoc offerPrice_s6566;
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
    call {:si_unique_call 94} validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s148, inspector_s148, appraiser_s148, description_s148, price_s148);
    return;

  anon53_Else:
    assume {:partition} choice != 52;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 51;
    call {:si_unique_call 95} validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s295, inspector_s295, appraiser_s295, description_s295, price_s295);
    return;

  anon54_Else:
    assume {:partition} choice != 51;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 50;
    call {:si_unique_call 96} validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s442, inspector_s442, appraiser_s442, description_s442, price_s442);
    return;

  anon55_Else:
    assume {:partition} choice != 50;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 49;
    call {:si_unique_call 97} validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s589, inspector_s589, appraiser_s589, description_s589, price_s589);
    return;

  anon56_Else:
    assume {:partition} choice != 49;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 48;
    call {:si_unique_call 98} validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s736, inspector_s736, appraiser_s736, description_s736, price_s736);
    return;

  anon57_Else:
    assume {:partition} choice != 48;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 47;
    call {:si_unique_call 99} validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s883, inspector_s883, appraiser_s883, description_s883, price_s883);
    return;

  anon58_Else:
    assume {:partition} choice != 47;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 46;
    call {:si_unique_call 100} validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1030, inspector_s1030, appraiser_s1030, description_s1030, price_s1030);
    return;

  anon59_Else:
    assume {:partition} choice != 46;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 45;
    call {:si_unique_call 101} validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1177, inspector_s1177, appraiser_s1177, description_s1177, price_s1177);
    return;

  anon60_Else:
    assume {:partition} choice != 45;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 44;
    call {:si_unique_call 102} validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1324, inspector_s1324, appraiser_s1324, description_s1324, price_s1324);
    return;

  anon61_Else:
    assume {:partition} choice != 44;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 43;
    call {:si_unique_call 103} validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1471, inspector_s1471, appraiser_s1471, description_s1471, price_s1471);
    return;

  anon62_Else:
    assume {:partition} choice != 43;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 42;
    call {:si_unique_call 104} validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1618, inspector_s1618, appraiser_s1618, description_s1618, price_s1618);
    return;

  anon63_Else:
    assume {:partition} choice != 42;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 105} validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1765, inspector_s1765, appraiser_s1765, description_s1765, price_s1765);
    return;

  anon64_Else:
    assume {:partition} choice != 41;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 106} validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1912, inspector_s1912, appraiser_s1912, description_s1912, price_s1912);
    return;

  anon65_Else:
    assume {:partition} choice != 40;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 107} validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2059, inspector_s2059, appraiser_s2059, description_s2059, price_s2059);
    return;

  anon66_Else:
    assume {:partition} choice != 39;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 108} validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2206, inspector_s2206, appraiser_s2206, description_s2206, price_s2206);
    return;

  anon67_Else:
    assume {:partition} choice != 38;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 109} validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2353, inspector_s2353, appraiser_s2353, description_s2353, price_s2353);
    return;

  anon68_Else:
    assume {:partition} choice != 37;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 110} validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2500, inspector_s2500, appraiser_s2500, description_s2500, price_s2500);
    return;

  anon69_Else:
    assume {:partition} choice != 36;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 111} validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2647, inspector_s2647, appraiser_s2647, description_s2647, price_s2647);
    return;

  anon70_Else:
    assume {:partition} choice != 35;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 112} validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2794, inspector_s2794, appraiser_s2794, description_s2794, price_s2794);
    return;

  anon71_Else:
    assume {:partition} choice != 34;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 113} validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2941, inspector_s2941, appraiser_s2941, description_s2941, price_s2941);
    return;

  anon72_Else:
    assume {:partition} choice != 33;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 114} validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3088, inspector_s3088, appraiser_s3088, description_s3088, price_s3088);
    return;

  anon73_Else:
    assume {:partition} choice != 32;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 115} validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3235, inspector_s3235, appraiser_s3235, description_s3235, price_s3235);
    return;

  anon74_Else:
    assume {:partition} choice != 31;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 116} validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3382, inspector_s3382, appraiser_s3382, description_s3382, price_s3382);
    return;

  anon75_Else:
    assume {:partition} choice != 30;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 117} validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3529, inspector_s3529, appraiser_s3529, description_s3529, price_s3529);
    return;

  anon76_Else:
    assume {:partition} choice != 29;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 118} validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3676, inspector_s3676, appraiser_s3676, description_s3676, price_s3676);
    return;

  anon77_Else:
    assume {:partition} choice != 28;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 119} validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3823, inspector_s3823, appraiser_s3823, description_s3823, price_s3823);
    return;

  anon78_Else:
    assume {:partition} choice != 27;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 120} validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3970, inspector_s3970, appraiser_s3970, description_s3970, price_s3970);
    return;

  anon79_Else:
    assume {:partition} choice != 26;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 121} validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4117, inspector_s4117, appraiser_s4117, description_s4117, price_s4117);
    return;

  anon80_Else:
    assume {:partition} choice != 25;
    goto anon81_Then, anon81_Else;

  anon81_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 122} validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4264, inspector_s4264, appraiser_s4264, description_s4264, price_s4264);
    return;

  anon81_Else:
    assume {:partition} choice != 24;
    goto anon82_Then, anon82_Else;

  anon82_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 123} validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4411, inspector_s4411, appraiser_s4411, description_s4411, price_s4411);
    return;

  anon82_Else:
    assume {:partition} choice != 23;
    goto anon83_Then, anon83_Else;

  anon83_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 124} validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4558, inspector_s4558, appraiser_s4558, description_s4558, price_s4558);
    return;

  anon83_Else:
    assume {:partition} choice != 22;
    goto anon84_Then, anon84_Else;

  anon84_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 125} validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4705, inspector_s4705, appraiser_s4705, description_s4705, price_s4705);
    return;

  anon84_Else:
    assume {:partition} choice != 21;
    goto anon85_Then, anon85_Else;

  anon85_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 126} validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4852, inspector_s4852, appraiser_s4852, description_s4852, price_s4852);
    return;

  anon85_Else:
    assume {:partition} choice != 20;
    goto anon86_Then, anon86_Else;

  anon86_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 127} validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4999, inspector_s4999, appraiser_s4999, description_s4999, price_s4999);
    return;

  anon86_Else:
    assume {:partition} choice != 19;
    goto anon87_Then, anon87_Else;

  anon87_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 128} validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5146, inspector_s5146, appraiser_s5146, description_s5146, price_s5146);
    return;

  anon87_Else:
    assume {:partition} choice != 18;
    goto anon88_Then, anon88_Else;

  anon88_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 129} validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5293, inspector_s5293, appraiser_s5293, description_s5293, price_s5293);
    return;

  anon88_Else:
    assume {:partition} choice != 17;
    goto anon89_Then, anon89_Else;

  anon89_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 130} validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5440, inspector_s5440, appraiser_s5440, description_s5440, price_s5440);
    return;

  anon89_Else:
    assume {:partition} choice != 16;
    goto anon90_Then, anon90_Else;

  anon90_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 131} validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5587, inspector_s5587, appraiser_s5587, description_s5587, price_s5587);
    return;

  anon90_Else:
    assume {:partition} choice != 15;
    goto anon91_Then, anon91_Else;

  anon91_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 132} validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5732, inspector_s5732, appraiser_s5732, description_s5732, price_s5732);
    return;

  anon91_Else:
    assume {:partition} choice != 14;
    goto anon92_Then, anon92_Else;

  anon92_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 133} validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5877, inspector_s5877, appraiser_s5877, description_s5877, price_s5877);
    return;

  anon92_Else:
    assume {:partition} choice != 13;
    goto anon93_Then, anon93_Else;

  anon93_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 134} validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6022, inspector_s6022, appraiser_s6022, description_s6022, price_s6022);
    return;

  anon93_Else:
    assume {:partition} choice != 12;
    goto anon94_Then, anon94_Else;

  anon94_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 135} validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6167, inspector_s6167, appraiser_s6167, description_s6167, price_s6167);
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
    call {:si_unique_call 137} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6272, price_s6272);
    return;

  anon96_Else:
    assume {:partition} choice != 9;
    goto anon97_Then, anon97_Else;

  anon97_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 138} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6342, appraiser_s6342, offerPrice_s6342);
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
    call {:si_unique_call 142} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6566);
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
  var description_s6220: int;
  var price_s6220: int;

  anon0:
    call {:si_unique_call 146} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 147} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6220, price_s6220);
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


