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

procedure {:public} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s133: int, inspector_s133: Ref, appraiser_s133: Ref, description_s133: int, price_s133: int);



procedure {:public} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s265: int, inspector_s265: Ref, appraiser_s265: Ref, description_s265: int, price_s265: int);



procedure {:public} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s397: int, inspector_s397: Ref, appraiser_s397: Ref, description_s397: int, price_s397: int);



procedure {:public} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s529: int, inspector_s529: Ref, appraiser_s529: Ref, description_s529: int, price_s529: int);



procedure {:public} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s661: int, inspector_s661: Ref, appraiser_s661: Ref, description_s661: int, price_s661: int);



procedure {:public} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s793: int, inspector_s793: Ref, appraiser_s793: Ref, description_s793: int, price_s793: int);



procedure {:public} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s925: int, inspector_s925: Ref, appraiser_s925: Ref, description_s925: int, price_s925: int);



procedure {:public} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1057: int, inspector_s1057: Ref, appraiser_s1057: Ref, description_s1057: int, price_s1057: int);



procedure {:public} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1189: int, inspector_s1189: Ref, appraiser_s1189: Ref, description_s1189: int, price_s1189: int);



procedure {:public} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1321: int, inspector_s1321: Ref, appraiser_s1321: Ref, description_s1321: int, price_s1321: int);



procedure {:public} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1453: int, inspector_s1453: Ref, appraiser_s1453: Ref, description_s1453: int, price_s1453: int);



procedure {:public} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1585: int, inspector_s1585: Ref, appraiser_s1585: Ref, description_s1585: int, price_s1585: int);



procedure {:public} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1717: int, inspector_s1717: Ref, appraiser_s1717: Ref, description_s1717: int, price_s1717: int);



procedure {:public} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1849: int, inspector_s1849: Ref, appraiser_s1849: Ref, description_s1849: int, price_s1849: int);



procedure {:public} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1981: int, inspector_s1981: Ref, appraiser_s1981: Ref, description_s1981: int, price_s1981: int);



procedure {:public} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2113: int, inspector_s2113: Ref, appraiser_s2113: Ref, description_s2113: int, price_s2113: int);



procedure {:public} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2245: int, inspector_s2245: Ref, appraiser_s2245: Ref, description_s2245: int, price_s2245: int);



procedure {:public} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2377: int, inspector_s2377: Ref, appraiser_s2377: Ref, description_s2377: int, price_s2377: int);



procedure {:public} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2509: int, inspector_s2509: Ref, appraiser_s2509: Ref, description_s2509: int, price_s2509: int);



procedure {:public} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2641: int, inspector_s2641: Ref, appraiser_s2641: Ref, description_s2641: int, price_s2641: int);



procedure {:public} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2773: int, inspector_s2773: Ref, appraiser_s2773: Ref, description_s2773: int, price_s2773: int);



procedure {:public} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2905: int, inspector_s2905: Ref, appraiser_s2905: Ref, description_s2905: int, price_s2905: int);



procedure {:public} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3037: int, inspector_s3037: Ref, appraiser_s3037: Ref, description_s3037: int, price_s3037: int);



implementation {:ForceInline} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3037: int, inspector_s3037: Ref, appraiser_s3037: Ref, description_s3037: int, price_s3037: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3037);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s3037);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s3037);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3037);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3037);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4);
    goto corral_source_split_3;

  corral_source_split_3:
    assert false;
    return;
}



procedure {:public} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3167: int, inspector_s3167: Ref, appraiser_s3167: Ref, description_s3167: int, price_s3167: int);



procedure {:public} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3297: int, inspector_s3297: Ref, appraiser_s3297: Ref, description_s3297: int, price_s3297: int);



procedure {:public} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3427: int, inspector_s3427: Ref, appraiser_s3427: Ref, description_s3427: int, price_s3427: int);



procedure {:public} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3557: int, inspector_s3557: Ref, appraiser_s3557: Ref, description_s3557: int, price_s3557: int);



procedure {:public} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3687: int, inspector_s3687: Ref, appraiser_s3687: Ref, description_s3687: int, price_s3687: int);



procedure {:public} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3817: int, inspector_s3817: Ref, appraiser_s3817: Ref, description_s3817: int, price_s3817: int);



procedure {:public} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3947: int, inspector_s3947: Ref, appraiser_s3947: Ref, description_s3947: int, price_s3947: int);



procedure {:public} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4077: int, inspector_s4077: Ref, appraiser_s4077: Ref, description_s4077: int, price_s4077: int);



procedure {:public} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4205: int, inspector_s4205: Ref, appraiser_s4205: Ref, description_s4205: int, price_s4205: int);



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := -795283249;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4258);
    call {:si_unique_call 15} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4258);
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
    assume price_s4258 >= 0;
    AskingPrice_AssetTransfer[this] := price_s4258;
    call {:si_unique_call 18} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    Description_AssetTransfer[this] := description_s4258;
    call {:si_unique_call 19} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4258);
    call {:si_unique_call 25} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4258);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s4258, price_s4258);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4310: int, price_s4310: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4310: int, price_s4310: int)
{

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4310);
    call {:si_unique_call 38} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4310);
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
    Description_AssetTransfer[this] := description_s4310;
    call {:si_unique_call 40} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s4310 >= 0;
    AskingPrice_AssetTransfer[this] := price_s4310;
    call {:si_unique_call 41} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4380: Ref, appraiser_s4380: Ref, offerPrice_s4380: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4380: Ref, appraiser_s4380: Ref, offerPrice_s4380: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 42} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 43} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 44} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 45} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 46} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4380);
    call {:si_unique_call 47} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4380);
    call {:si_unique_call 48} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4380);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s4380 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s4380 == null || appraiser_s4380 == null || offerPrice_s4380 == 0;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s4380 == null || appraiser_s4380 == null || offerPrice_s4380 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s4380;
    call {:si_unique_call 51} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s4380;
    call {:si_unique_call 52} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s4380 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s4380;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4604: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4604: int)
{

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4604);
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
    assume offerPrice_s4604 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s4604 == 0;
    goto corral_source_split_105;

  corral_source_split_105:
    goto corral_source_split_106;

  corral_source_split_106:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s4604 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s4604 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s4604;
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
  var offerPrice_s133: int;
  var inspector_s133: Ref;
  var appraiser_s133: Ref;
  var description_s133: int;
  var price_s133: int;
  var offerPrice_s265: int;
  var inspector_s265: Ref;
  var appraiser_s265: Ref;
  var description_s265: int;
  var price_s265: int;
  var offerPrice_s397: int;
  var inspector_s397: Ref;
  var appraiser_s397: Ref;
  var description_s397: int;
  var price_s397: int;
  var offerPrice_s529: int;
  var inspector_s529: Ref;
  var appraiser_s529: Ref;
  var description_s529: int;
  var price_s529: int;
  var offerPrice_s661: int;
  var inspector_s661: Ref;
  var appraiser_s661: Ref;
  var description_s661: int;
  var price_s661: int;
  var offerPrice_s793: int;
  var inspector_s793: Ref;
  var appraiser_s793: Ref;
  var description_s793: int;
  var price_s793: int;
  var offerPrice_s925: int;
  var inspector_s925: Ref;
  var appraiser_s925: Ref;
  var description_s925: int;
  var price_s925: int;
  var offerPrice_s1057: int;
  var inspector_s1057: Ref;
  var appraiser_s1057: Ref;
  var description_s1057: int;
  var price_s1057: int;
  var offerPrice_s1189: int;
  var inspector_s1189: Ref;
  var appraiser_s1189: Ref;
  var description_s1189: int;
  var price_s1189: int;
  var offerPrice_s1321: int;
  var inspector_s1321: Ref;
  var appraiser_s1321: Ref;
  var description_s1321: int;
  var price_s1321: int;
  var offerPrice_s1453: int;
  var inspector_s1453: Ref;
  var appraiser_s1453: Ref;
  var description_s1453: int;
  var price_s1453: int;
  var offerPrice_s1585: int;
  var inspector_s1585: Ref;
  var appraiser_s1585: Ref;
  var description_s1585: int;
  var price_s1585: int;
  var offerPrice_s1717: int;
  var inspector_s1717: Ref;
  var appraiser_s1717: Ref;
  var description_s1717: int;
  var price_s1717: int;
  var offerPrice_s1849: int;
  var inspector_s1849: Ref;
  var appraiser_s1849: Ref;
  var description_s1849: int;
  var price_s1849: int;
  var offerPrice_s1981: int;
  var inspector_s1981: Ref;
  var appraiser_s1981: Ref;
  var description_s1981: int;
  var price_s1981: int;
  var offerPrice_s2113: int;
  var inspector_s2113: Ref;
  var appraiser_s2113: Ref;
  var description_s2113: int;
  var price_s2113: int;
  var offerPrice_s2245: int;
  var inspector_s2245: Ref;
  var appraiser_s2245: Ref;
  var description_s2245: int;
  var price_s2245: int;
  var offerPrice_s2377: int;
  var inspector_s2377: Ref;
  var appraiser_s2377: Ref;
  var description_s2377: int;
  var price_s2377: int;
  var offerPrice_s2509: int;
  var inspector_s2509: Ref;
  var appraiser_s2509: Ref;
  var description_s2509: int;
  var price_s2509: int;
  var offerPrice_s2641: int;
  var inspector_s2641: Ref;
  var appraiser_s2641: Ref;
  var description_s2641: int;
  var price_s2641: int;
  var offerPrice_s2773: int;
  var inspector_s2773: Ref;
  var appraiser_s2773: Ref;
  var description_s2773: int;
  var price_s2773: int;
  var offerPrice_s2905: int;
  var inspector_s2905: Ref;
  var appraiser_s2905: Ref;
  var description_s2905: int;
  var price_s2905: int;
  var offerPrice_s3037: int;
  var inspector_s3037: Ref;
  var appraiser_s3037: Ref;
  var description_s3037: int;
  var price_s3037: int;
  var offerPrice_s3167: int;
  var inspector_s3167: Ref;
  var appraiser_s3167: Ref;
  var description_s3167: int;
  var price_s3167: int;
  var offerPrice_s3297: int;
  var inspector_s3297: Ref;
  var appraiser_s3297: Ref;
  var description_s3297: int;
  var price_s3297: int;
  var offerPrice_s3427: int;
  var inspector_s3427: Ref;
  var appraiser_s3427: Ref;
  var description_s3427: int;
  var price_s3427: int;
  var offerPrice_s3557: int;
  var inspector_s3557: Ref;
  var appraiser_s3557: Ref;
  var description_s3557: int;
  var price_s3557: int;
  var offerPrice_s3687: int;
  var inspector_s3687: Ref;
  var appraiser_s3687: Ref;
  var description_s3687: int;
  var price_s3687: int;
  var offerPrice_s3817: int;
  var inspector_s3817: Ref;
  var appraiser_s3817: Ref;
  var description_s3817: int;
  var price_s3817: int;
  var offerPrice_s3947: int;
  var inspector_s3947: Ref;
  var appraiser_s3947: Ref;
  var description_s3947: int;
  var price_s3947: int;
  var offerPrice_s4077: int;
  var inspector_s4077: Ref;
  var appraiser_s4077: Ref;
  var description_s4077: int;
  var price_s4077: int;
  var offerPrice_s4205: int;
  var inspector_s4205: Ref;
  var appraiser_s4205: Ref;
  var description_s4205: int;
  var price_s4205: int;
  var description_s4258: int;
  var price_s4258: int;
  var description_s4310: int;
  var price_s4310: int;
  var inspector_s4380: Ref;
  var appraiser_s4380: Ref;
  var offerPrice_s4380: int;
  var offerPrice_s4604: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s133;
    havoc inspector_s133;
    havoc appraiser_s133;
    havoc description_s133;
    havoc price_s133;
    havoc offerPrice_s265;
    havoc inspector_s265;
    havoc appraiser_s265;
    havoc description_s265;
    havoc price_s265;
    havoc offerPrice_s397;
    havoc inspector_s397;
    havoc appraiser_s397;
    havoc description_s397;
    havoc price_s397;
    havoc offerPrice_s529;
    havoc inspector_s529;
    havoc appraiser_s529;
    havoc description_s529;
    havoc price_s529;
    havoc offerPrice_s661;
    havoc inspector_s661;
    havoc appraiser_s661;
    havoc description_s661;
    havoc price_s661;
    havoc offerPrice_s793;
    havoc inspector_s793;
    havoc appraiser_s793;
    havoc description_s793;
    havoc price_s793;
    havoc offerPrice_s925;
    havoc inspector_s925;
    havoc appraiser_s925;
    havoc description_s925;
    havoc price_s925;
    havoc offerPrice_s1057;
    havoc inspector_s1057;
    havoc appraiser_s1057;
    havoc description_s1057;
    havoc price_s1057;
    havoc offerPrice_s1189;
    havoc inspector_s1189;
    havoc appraiser_s1189;
    havoc description_s1189;
    havoc price_s1189;
    havoc offerPrice_s1321;
    havoc inspector_s1321;
    havoc appraiser_s1321;
    havoc description_s1321;
    havoc price_s1321;
    havoc offerPrice_s1453;
    havoc inspector_s1453;
    havoc appraiser_s1453;
    havoc description_s1453;
    havoc price_s1453;
    havoc offerPrice_s1585;
    havoc inspector_s1585;
    havoc appraiser_s1585;
    havoc description_s1585;
    havoc price_s1585;
    havoc offerPrice_s1717;
    havoc inspector_s1717;
    havoc appraiser_s1717;
    havoc description_s1717;
    havoc price_s1717;
    havoc offerPrice_s1849;
    havoc inspector_s1849;
    havoc appraiser_s1849;
    havoc description_s1849;
    havoc price_s1849;
    havoc offerPrice_s1981;
    havoc inspector_s1981;
    havoc appraiser_s1981;
    havoc description_s1981;
    havoc price_s1981;
    havoc offerPrice_s2113;
    havoc inspector_s2113;
    havoc appraiser_s2113;
    havoc description_s2113;
    havoc price_s2113;
    havoc offerPrice_s2245;
    havoc inspector_s2245;
    havoc appraiser_s2245;
    havoc description_s2245;
    havoc price_s2245;
    havoc offerPrice_s2377;
    havoc inspector_s2377;
    havoc appraiser_s2377;
    havoc description_s2377;
    havoc price_s2377;
    havoc offerPrice_s2509;
    havoc inspector_s2509;
    havoc appraiser_s2509;
    havoc description_s2509;
    havoc price_s2509;
    havoc offerPrice_s2641;
    havoc inspector_s2641;
    havoc appraiser_s2641;
    havoc description_s2641;
    havoc price_s2641;
    havoc offerPrice_s2773;
    havoc inspector_s2773;
    havoc appraiser_s2773;
    havoc description_s2773;
    havoc price_s2773;
    havoc offerPrice_s2905;
    havoc inspector_s2905;
    havoc appraiser_s2905;
    havoc description_s2905;
    havoc price_s2905;
    havoc offerPrice_s3037;
    havoc inspector_s3037;
    havoc appraiser_s3037;
    havoc description_s3037;
    havoc price_s3037;
    havoc offerPrice_s3167;
    havoc inspector_s3167;
    havoc appraiser_s3167;
    havoc description_s3167;
    havoc price_s3167;
    havoc offerPrice_s3297;
    havoc inspector_s3297;
    havoc appraiser_s3297;
    havoc description_s3297;
    havoc price_s3297;
    havoc offerPrice_s3427;
    havoc inspector_s3427;
    havoc appraiser_s3427;
    havoc description_s3427;
    havoc price_s3427;
    havoc offerPrice_s3557;
    havoc inspector_s3557;
    havoc appraiser_s3557;
    havoc description_s3557;
    havoc price_s3557;
    havoc offerPrice_s3687;
    havoc inspector_s3687;
    havoc appraiser_s3687;
    havoc description_s3687;
    havoc price_s3687;
    havoc offerPrice_s3817;
    havoc inspector_s3817;
    havoc appraiser_s3817;
    havoc description_s3817;
    havoc price_s3817;
    havoc offerPrice_s3947;
    havoc inspector_s3947;
    havoc appraiser_s3947;
    havoc description_s3947;
    havoc price_s3947;
    havoc offerPrice_s4077;
    havoc inspector_s4077;
    havoc appraiser_s4077;
    havoc description_s4077;
    havoc price_s4077;
    havoc offerPrice_s4205;
    havoc inspector_s4205;
    havoc appraiser_s4205;
    havoc description_s4205;
    havoc price_s4205;
    havoc description_s4258;
    havoc price_s4258;
    havoc description_s4310;
    havoc price_s4310;
    havoc inspector_s4380;
    havoc appraiser_s4380;
    havoc offerPrice_s4380;
    havoc offerPrice_s4604;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon43_Then, anon43_Else;

  anon43_Then:
    assume {:partition} choice == 42;
    call {:si_unique_call 94} validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s133, inspector_s133, appraiser_s133, description_s133, price_s133);
    return;

  anon43_Else:
    assume {:partition} choice != 42;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 95} validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s265, inspector_s265, appraiser_s265, description_s265, price_s265);
    return;

  anon44_Else:
    assume {:partition} choice != 41;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 96} validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s397, inspector_s397, appraiser_s397, description_s397, price_s397);
    return;

  anon45_Else:
    assume {:partition} choice != 40;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 97} validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s529, inspector_s529, appraiser_s529, description_s529, price_s529);
    return;

  anon46_Else:
    assume {:partition} choice != 39;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 98} validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s661, inspector_s661, appraiser_s661, description_s661, price_s661);
    return;

  anon47_Else:
    assume {:partition} choice != 38;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 99} validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s793, inspector_s793, appraiser_s793, description_s793, price_s793);
    return;

  anon48_Else:
    assume {:partition} choice != 37;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 100} validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s925, inspector_s925, appraiser_s925, description_s925, price_s925);
    return;

  anon49_Else:
    assume {:partition} choice != 36;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 101} validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1057, inspector_s1057, appraiser_s1057, description_s1057, price_s1057);
    return;

  anon50_Else:
    assume {:partition} choice != 35;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 102} validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1189, inspector_s1189, appraiser_s1189, description_s1189, price_s1189);
    return;

  anon51_Else:
    assume {:partition} choice != 34;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 103} validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1321, inspector_s1321, appraiser_s1321, description_s1321, price_s1321);
    return;

  anon52_Else:
    assume {:partition} choice != 33;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 104} validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1453, inspector_s1453, appraiser_s1453, description_s1453, price_s1453);
    return;

  anon53_Else:
    assume {:partition} choice != 32;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 105} validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1585, inspector_s1585, appraiser_s1585, description_s1585, price_s1585);
    return;

  anon54_Else:
    assume {:partition} choice != 31;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 106} validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1717, inspector_s1717, appraiser_s1717, description_s1717, price_s1717);
    return;

  anon55_Else:
    assume {:partition} choice != 30;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 107} validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1849, inspector_s1849, appraiser_s1849, description_s1849, price_s1849);
    return;

  anon56_Else:
    assume {:partition} choice != 29;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 108} validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1981, inspector_s1981, appraiser_s1981, description_s1981, price_s1981);
    return;

  anon57_Else:
    assume {:partition} choice != 28;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 109} validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2113, inspector_s2113, appraiser_s2113, description_s2113, price_s2113);
    return;

  anon58_Else:
    assume {:partition} choice != 27;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 110} validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2245, inspector_s2245, appraiser_s2245, description_s2245, price_s2245);
    return;

  anon59_Else:
    assume {:partition} choice != 26;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 111} validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2377, inspector_s2377, appraiser_s2377, description_s2377, price_s2377);
    return;

  anon60_Else:
    assume {:partition} choice != 25;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 112} validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2509, inspector_s2509, appraiser_s2509, description_s2509, price_s2509);
    return;

  anon61_Else:
    assume {:partition} choice != 24;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 113} validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2641, inspector_s2641, appraiser_s2641, description_s2641, price_s2641);
    return;

  anon62_Else:
    assume {:partition} choice != 23;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 114} validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2773, inspector_s2773, appraiser_s2773, description_s2773, price_s2773);
    return;

  anon63_Else:
    assume {:partition} choice != 22;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 115} validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2905, inspector_s2905, appraiser_s2905, description_s2905, price_s2905);
    return;

  anon64_Else:
    assume {:partition} choice != 21;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 116} validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3037, inspector_s3037, appraiser_s3037, description_s3037, price_s3037);
    return;

  anon65_Else:
    assume {:partition} choice != 20;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 117} validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3167, inspector_s3167, appraiser_s3167, description_s3167, price_s3167);
    return;

  anon66_Else:
    assume {:partition} choice != 19;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 118} validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3297, inspector_s3297, appraiser_s3297, description_s3297, price_s3297);
    return;

  anon67_Else:
    assume {:partition} choice != 18;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 119} validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3427, inspector_s3427, appraiser_s3427, description_s3427, price_s3427);
    return;

  anon68_Else:
    assume {:partition} choice != 17;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 120} validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3557, inspector_s3557, appraiser_s3557, description_s3557, price_s3557);
    return;

  anon69_Else:
    assume {:partition} choice != 16;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 121} validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3687, inspector_s3687, appraiser_s3687, description_s3687, price_s3687);
    return;

  anon70_Else:
    assume {:partition} choice != 15;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 122} validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3817, inspector_s3817, appraiser_s3817, description_s3817, price_s3817);
    return;

  anon71_Else:
    assume {:partition} choice != 14;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 123} validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3947, inspector_s3947, appraiser_s3947, description_s3947, price_s3947);
    return;

  anon72_Else:
    assume {:partition} choice != 13;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 124} validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4077, inspector_s4077, appraiser_s4077, description_s4077, price_s4077);
    return;

  anon73_Else:
    assume {:partition} choice != 12;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 125} validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4205, inspector_s4205, appraiser_s4205, description_s4205, price_s4205);
    return;

  anon74_Else:
    assume {:partition} choice != 11;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 126} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon75_Else:
    assume {:partition} choice != 10;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 127} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4310, price_s4310);
    return;

  anon76_Else:
    assume {:partition} choice != 9;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 128} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4380, appraiser_s4380, offerPrice_s4380);
    return;

  anon77_Else:
    assume {:partition} choice != 8;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 129} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon78_Else:
    assume {:partition} choice != 7;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 130} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon79_Else:
    assume {:partition} choice != 6;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 131} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon80_Else:
    assume {:partition} choice != 5;
    goto anon81_Then, anon81_Else;

  anon81_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 132} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4604);
    return;

  anon81_Else:
    assume {:partition} choice != 4;
    goto anon82_Then, anon82_Else;

  anon82_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 133} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon82_Else:
    assume {:partition} choice != 3;
    goto anon83_Then, anon83_Else;

  anon83_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 134} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon83_Else:
    assume {:partition} choice != 2;
    goto anon84_Then, anon84_Else;

  anon84_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 135} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon84_Else:
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
  var description_s4258: int;
  var price_s4258: int;

  anon0:
    call {:si_unique_call 136} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 137} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4258, price_s4258);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 138} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


