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

procedure {:public} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s137: int, inspector_s137: Ref, appraiser_s137: Ref, description_s137: int, price_s137: int);



procedure {:public} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s273: int, inspector_s273: Ref, appraiser_s273: Ref, description_s273: int, price_s273: int);



implementation {:ForceInline} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s273: int, inspector_s273: Ref, appraiser_s273: Ref, description_s273: int, price_s273: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s273);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s273);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s273);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s273);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s273);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && !(State_AssetTransfer[this] == 1) && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4);
    goto corral_source_split_3;

  corral_source_split_3:
    assert false;
    return;
}



procedure {:public} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s409: int, inspector_s409: Ref, appraiser_s409: Ref, description_s409: int, price_s409: int);



procedure {:public} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s543: int, inspector_s543: Ref, appraiser_s543: Ref, description_s543: int, price_s543: int);



procedure {:public} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s677: int, inspector_s677: Ref, appraiser_s677: Ref, description_s677: int, price_s677: int);



procedure {:public} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s811: int, inspector_s811: Ref, appraiser_s811: Ref, description_s811: int, price_s811: int);



procedure {:public} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s945: int, inspector_s945: Ref, appraiser_s945: Ref, description_s945: int, price_s945: int);



procedure {:public} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1079: int, inspector_s1079: Ref, appraiser_s1079: Ref, description_s1079: int, price_s1079: int);



procedure {:public} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1213: int, inspector_s1213: Ref, appraiser_s1213: Ref, description_s1213: int, price_s1213: int);



procedure {:public} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1347: int, inspector_s1347: Ref, appraiser_s1347: Ref, description_s1347: int, price_s1347: int);



procedure {:public} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1481: int, inspector_s1481: Ref, appraiser_s1481: Ref, description_s1481: int, price_s1481: int);



procedure {:public} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1615: int, inspector_s1615: Ref, appraiser_s1615: Ref, description_s1615: int, price_s1615: int);



procedure {:public} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1749: int, inspector_s1749: Ref, appraiser_s1749: Ref, description_s1749: int, price_s1749: int);



procedure {:public} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1883: int, inspector_s1883: Ref, appraiser_s1883: Ref, description_s1883: int, price_s1883: int);



procedure {:public} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2017: int, inspector_s2017: Ref, appraiser_s2017: Ref, description_s2017: int, price_s2017: int);



procedure {:public} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2151: int, inspector_s2151: Ref, appraiser_s2151: Ref, description_s2151: int, price_s2151: int);



procedure {:public} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2285: int, inspector_s2285: Ref, appraiser_s2285: Ref, description_s2285: int, price_s2285: int);



procedure {:public} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2419: int, inspector_s2419: Ref, appraiser_s2419: Ref, description_s2419: int, price_s2419: int);



procedure {:public} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2553: int, inspector_s2553: Ref, appraiser_s2553: Ref, description_s2553: int, price_s2553: int);



procedure {:public} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2687: int, inspector_s2687: Ref, appraiser_s2687: Ref, description_s2687: int, price_s2687: int);



procedure {:public} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2821: int, inspector_s2821: Ref, appraiser_s2821: Ref, description_s2821: int, price_s2821: int);



procedure {:public} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2955: int, inspector_s2955: Ref, appraiser_s2955: Ref, description_s2955: int, price_s2955: int);



procedure {:public} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3089: int, inspector_s3089: Ref, appraiser_s3089: Ref, description_s3089: int, price_s3089: int);



procedure {:public} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3223: int, inspector_s3223: Ref, appraiser_s3223: Ref, description_s3223: int, price_s3223: int);



procedure {:public} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3357: int, inspector_s3357: Ref, appraiser_s3357: Ref, description_s3357: int, price_s3357: int);



procedure {:public} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3491: int, inspector_s3491: Ref, appraiser_s3491: Ref, description_s3491: int, price_s3491: int);



procedure {:public} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3625: int, inspector_s3625: Ref, appraiser_s3625: Ref, description_s3625: int, price_s3625: int);



procedure {:public} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3759: int, inspector_s3759: Ref, appraiser_s3759: Ref, description_s3759: int, price_s3759: int);



procedure {:public} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3893: int, inspector_s3893: Ref, appraiser_s3893: Ref, description_s3893: int, price_s3893: int);



procedure {:public} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4027: int, inspector_s4027: Ref, appraiser_s4027: Ref, description_s4027: int, price_s4027: int);



procedure {:public} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4161: int, inspector_s4161: Ref, appraiser_s4161: Ref, description_s4161: int, price_s4161: int);



procedure {:public} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4295: int, inspector_s4295: Ref, appraiser_s4295: Ref, description_s4295: int, price_s4295: int);



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := 316239399;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4348);
    call {:si_unique_call 15} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4348);
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
    assume price_s4348 >= 0;
    AskingPrice_AssetTransfer[this] := price_s4348;
    call {:si_unique_call 18} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    Description_AssetTransfer[this] := description_s4348;
    call {:si_unique_call 19} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int)
{

  anon0:
    call {:si_unique_call 20} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 21} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 22} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 23} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 24} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4348);
    call {:si_unique_call 25} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4348);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s4348, price_s4348);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4400: int, price_s4400: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4400: int, price_s4400: int)
{

  anon0:
    call {:si_unique_call 33} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 34} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 35} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 36} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 37} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4400);
    call {:si_unique_call 38} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4400);
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
    Description_AssetTransfer[this] := description_s4400;
    call {:si_unique_call 40} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s4400 >= 0;
    AskingPrice_AssetTransfer[this] := price_s4400;
    call {:si_unique_call 41} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4470: Ref, appraiser_s4470: Ref, offerPrice_s4470: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4470: Ref, appraiser_s4470: Ref, offerPrice_s4470: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 42} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 43} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 44} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 45} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 46} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4470);
    call {:si_unique_call 47} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4470);
    call {:si_unique_call 48} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4470);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s4470 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s4470 == null || appraiser_s4470 == null || offerPrice_s4470 == 0;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s4470 == null || appraiser_s4470 == null || offerPrice_s4470 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s4470;
    call {:si_unique_call 51} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s4470;
    call {:si_unique_call 52} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_42;

  corral_source_split_42:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s4470 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s4470;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4694: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4694: int)
{

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4694);
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
    assume offerPrice_s4694 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s4694 == 0;
    goto corral_source_split_105;

  corral_source_split_105:
    goto corral_source_split_106;

  corral_source_split_106:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s4694 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s4694 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s4694;
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
  var offerPrice_s137: int;
  var inspector_s137: Ref;
  var appraiser_s137: Ref;
  var description_s137: int;
  var price_s137: int;
  var offerPrice_s273: int;
  var inspector_s273: Ref;
  var appraiser_s273: Ref;
  var description_s273: int;
  var price_s273: int;
  var offerPrice_s409: int;
  var inspector_s409: Ref;
  var appraiser_s409: Ref;
  var description_s409: int;
  var price_s409: int;
  var offerPrice_s543: int;
  var inspector_s543: Ref;
  var appraiser_s543: Ref;
  var description_s543: int;
  var price_s543: int;
  var offerPrice_s677: int;
  var inspector_s677: Ref;
  var appraiser_s677: Ref;
  var description_s677: int;
  var price_s677: int;
  var offerPrice_s811: int;
  var inspector_s811: Ref;
  var appraiser_s811: Ref;
  var description_s811: int;
  var price_s811: int;
  var offerPrice_s945: int;
  var inspector_s945: Ref;
  var appraiser_s945: Ref;
  var description_s945: int;
  var price_s945: int;
  var offerPrice_s1079: int;
  var inspector_s1079: Ref;
  var appraiser_s1079: Ref;
  var description_s1079: int;
  var price_s1079: int;
  var offerPrice_s1213: int;
  var inspector_s1213: Ref;
  var appraiser_s1213: Ref;
  var description_s1213: int;
  var price_s1213: int;
  var offerPrice_s1347: int;
  var inspector_s1347: Ref;
  var appraiser_s1347: Ref;
  var description_s1347: int;
  var price_s1347: int;
  var offerPrice_s1481: int;
  var inspector_s1481: Ref;
  var appraiser_s1481: Ref;
  var description_s1481: int;
  var price_s1481: int;
  var offerPrice_s1615: int;
  var inspector_s1615: Ref;
  var appraiser_s1615: Ref;
  var description_s1615: int;
  var price_s1615: int;
  var offerPrice_s1749: int;
  var inspector_s1749: Ref;
  var appraiser_s1749: Ref;
  var description_s1749: int;
  var price_s1749: int;
  var offerPrice_s1883: int;
  var inspector_s1883: Ref;
  var appraiser_s1883: Ref;
  var description_s1883: int;
  var price_s1883: int;
  var offerPrice_s2017: int;
  var inspector_s2017: Ref;
  var appraiser_s2017: Ref;
  var description_s2017: int;
  var price_s2017: int;
  var offerPrice_s2151: int;
  var inspector_s2151: Ref;
  var appraiser_s2151: Ref;
  var description_s2151: int;
  var price_s2151: int;
  var offerPrice_s2285: int;
  var inspector_s2285: Ref;
  var appraiser_s2285: Ref;
  var description_s2285: int;
  var price_s2285: int;
  var offerPrice_s2419: int;
  var inspector_s2419: Ref;
  var appraiser_s2419: Ref;
  var description_s2419: int;
  var price_s2419: int;
  var offerPrice_s2553: int;
  var inspector_s2553: Ref;
  var appraiser_s2553: Ref;
  var description_s2553: int;
  var price_s2553: int;
  var offerPrice_s2687: int;
  var inspector_s2687: Ref;
  var appraiser_s2687: Ref;
  var description_s2687: int;
  var price_s2687: int;
  var offerPrice_s2821: int;
  var inspector_s2821: Ref;
  var appraiser_s2821: Ref;
  var description_s2821: int;
  var price_s2821: int;
  var offerPrice_s2955: int;
  var inspector_s2955: Ref;
  var appraiser_s2955: Ref;
  var description_s2955: int;
  var price_s2955: int;
  var offerPrice_s3089: int;
  var inspector_s3089: Ref;
  var appraiser_s3089: Ref;
  var description_s3089: int;
  var price_s3089: int;
  var offerPrice_s3223: int;
  var inspector_s3223: Ref;
  var appraiser_s3223: Ref;
  var description_s3223: int;
  var price_s3223: int;
  var offerPrice_s3357: int;
  var inspector_s3357: Ref;
  var appraiser_s3357: Ref;
  var description_s3357: int;
  var price_s3357: int;
  var offerPrice_s3491: int;
  var inspector_s3491: Ref;
  var appraiser_s3491: Ref;
  var description_s3491: int;
  var price_s3491: int;
  var offerPrice_s3625: int;
  var inspector_s3625: Ref;
  var appraiser_s3625: Ref;
  var description_s3625: int;
  var price_s3625: int;
  var offerPrice_s3759: int;
  var inspector_s3759: Ref;
  var appraiser_s3759: Ref;
  var description_s3759: int;
  var price_s3759: int;
  var offerPrice_s3893: int;
  var inspector_s3893: Ref;
  var appraiser_s3893: Ref;
  var description_s3893: int;
  var price_s3893: int;
  var offerPrice_s4027: int;
  var inspector_s4027: Ref;
  var appraiser_s4027: Ref;
  var description_s4027: int;
  var price_s4027: int;
  var offerPrice_s4161: int;
  var inspector_s4161: Ref;
  var appraiser_s4161: Ref;
  var description_s4161: int;
  var price_s4161: int;
  var offerPrice_s4295: int;
  var inspector_s4295: Ref;
  var appraiser_s4295: Ref;
  var description_s4295: int;
  var price_s4295: int;
  var description_s4348: int;
  var price_s4348: int;
  var description_s4400: int;
  var price_s4400: int;
  var inspector_s4470: Ref;
  var appraiser_s4470: Ref;
  var offerPrice_s4470: int;
  var offerPrice_s4694: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s137;
    havoc inspector_s137;
    havoc appraiser_s137;
    havoc description_s137;
    havoc price_s137;
    havoc offerPrice_s273;
    havoc inspector_s273;
    havoc appraiser_s273;
    havoc description_s273;
    havoc price_s273;
    havoc offerPrice_s409;
    havoc inspector_s409;
    havoc appraiser_s409;
    havoc description_s409;
    havoc price_s409;
    havoc offerPrice_s543;
    havoc inspector_s543;
    havoc appraiser_s543;
    havoc description_s543;
    havoc price_s543;
    havoc offerPrice_s677;
    havoc inspector_s677;
    havoc appraiser_s677;
    havoc description_s677;
    havoc price_s677;
    havoc offerPrice_s811;
    havoc inspector_s811;
    havoc appraiser_s811;
    havoc description_s811;
    havoc price_s811;
    havoc offerPrice_s945;
    havoc inspector_s945;
    havoc appraiser_s945;
    havoc description_s945;
    havoc price_s945;
    havoc offerPrice_s1079;
    havoc inspector_s1079;
    havoc appraiser_s1079;
    havoc description_s1079;
    havoc price_s1079;
    havoc offerPrice_s1213;
    havoc inspector_s1213;
    havoc appraiser_s1213;
    havoc description_s1213;
    havoc price_s1213;
    havoc offerPrice_s1347;
    havoc inspector_s1347;
    havoc appraiser_s1347;
    havoc description_s1347;
    havoc price_s1347;
    havoc offerPrice_s1481;
    havoc inspector_s1481;
    havoc appraiser_s1481;
    havoc description_s1481;
    havoc price_s1481;
    havoc offerPrice_s1615;
    havoc inspector_s1615;
    havoc appraiser_s1615;
    havoc description_s1615;
    havoc price_s1615;
    havoc offerPrice_s1749;
    havoc inspector_s1749;
    havoc appraiser_s1749;
    havoc description_s1749;
    havoc price_s1749;
    havoc offerPrice_s1883;
    havoc inspector_s1883;
    havoc appraiser_s1883;
    havoc description_s1883;
    havoc price_s1883;
    havoc offerPrice_s2017;
    havoc inspector_s2017;
    havoc appraiser_s2017;
    havoc description_s2017;
    havoc price_s2017;
    havoc offerPrice_s2151;
    havoc inspector_s2151;
    havoc appraiser_s2151;
    havoc description_s2151;
    havoc price_s2151;
    havoc offerPrice_s2285;
    havoc inspector_s2285;
    havoc appraiser_s2285;
    havoc description_s2285;
    havoc price_s2285;
    havoc offerPrice_s2419;
    havoc inspector_s2419;
    havoc appraiser_s2419;
    havoc description_s2419;
    havoc price_s2419;
    havoc offerPrice_s2553;
    havoc inspector_s2553;
    havoc appraiser_s2553;
    havoc description_s2553;
    havoc price_s2553;
    havoc offerPrice_s2687;
    havoc inspector_s2687;
    havoc appraiser_s2687;
    havoc description_s2687;
    havoc price_s2687;
    havoc offerPrice_s2821;
    havoc inspector_s2821;
    havoc appraiser_s2821;
    havoc description_s2821;
    havoc price_s2821;
    havoc offerPrice_s2955;
    havoc inspector_s2955;
    havoc appraiser_s2955;
    havoc description_s2955;
    havoc price_s2955;
    havoc offerPrice_s3089;
    havoc inspector_s3089;
    havoc appraiser_s3089;
    havoc description_s3089;
    havoc price_s3089;
    havoc offerPrice_s3223;
    havoc inspector_s3223;
    havoc appraiser_s3223;
    havoc description_s3223;
    havoc price_s3223;
    havoc offerPrice_s3357;
    havoc inspector_s3357;
    havoc appraiser_s3357;
    havoc description_s3357;
    havoc price_s3357;
    havoc offerPrice_s3491;
    havoc inspector_s3491;
    havoc appraiser_s3491;
    havoc description_s3491;
    havoc price_s3491;
    havoc offerPrice_s3625;
    havoc inspector_s3625;
    havoc appraiser_s3625;
    havoc description_s3625;
    havoc price_s3625;
    havoc offerPrice_s3759;
    havoc inspector_s3759;
    havoc appraiser_s3759;
    havoc description_s3759;
    havoc price_s3759;
    havoc offerPrice_s3893;
    havoc inspector_s3893;
    havoc appraiser_s3893;
    havoc description_s3893;
    havoc price_s3893;
    havoc offerPrice_s4027;
    havoc inspector_s4027;
    havoc appraiser_s4027;
    havoc description_s4027;
    havoc price_s4027;
    havoc offerPrice_s4161;
    havoc inspector_s4161;
    havoc appraiser_s4161;
    havoc description_s4161;
    havoc price_s4161;
    havoc offerPrice_s4295;
    havoc inspector_s4295;
    havoc appraiser_s4295;
    havoc description_s4295;
    havoc price_s4295;
    havoc description_s4348;
    havoc price_s4348;
    havoc description_s4400;
    havoc price_s4400;
    havoc inspector_s4470;
    havoc appraiser_s4470;
    havoc offerPrice_s4470;
    havoc offerPrice_s4694;
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
    call {:si_unique_call 94} validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s137, inspector_s137, appraiser_s137, description_s137, price_s137);
    return;

  anon43_Else:
    assume {:partition} choice != 42;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 95} validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s273, inspector_s273, appraiser_s273, description_s273, price_s273);
    return;

  anon44_Else:
    assume {:partition} choice != 41;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 96} validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s409, inspector_s409, appraiser_s409, description_s409, price_s409);
    return;

  anon45_Else:
    assume {:partition} choice != 40;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 97} validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s543, inspector_s543, appraiser_s543, description_s543, price_s543);
    return;

  anon46_Else:
    assume {:partition} choice != 39;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 98} validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s677, inspector_s677, appraiser_s677, description_s677, price_s677);
    return;

  anon47_Else:
    assume {:partition} choice != 38;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 99} validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s811, inspector_s811, appraiser_s811, description_s811, price_s811);
    return;

  anon48_Else:
    assume {:partition} choice != 37;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 100} validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s945, inspector_s945, appraiser_s945, description_s945, price_s945);
    return;

  anon49_Else:
    assume {:partition} choice != 36;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 101} validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1079, inspector_s1079, appraiser_s1079, description_s1079, price_s1079);
    return;

  anon50_Else:
    assume {:partition} choice != 35;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 102} validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1213, inspector_s1213, appraiser_s1213, description_s1213, price_s1213);
    return;

  anon51_Else:
    assume {:partition} choice != 34;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 103} validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1347, inspector_s1347, appraiser_s1347, description_s1347, price_s1347);
    return;

  anon52_Else:
    assume {:partition} choice != 33;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 104} validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1481, inspector_s1481, appraiser_s1481, description_s1481, price_s1481);
    return;

  anon53_Else:
    assume {:partition} choice != 32;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 105} validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1615, inspector_s1615, appraiser_s1615, description_s1615, price_s1615);
    return;

  anon54_Else:
    assume {:partition} choice != 31;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 106} validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1749, inspector_s1749, appraiser_s1749, description_s1749, price_s1749);
    return;

  anon55_Else:
    assume {:partition} choice != 30;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 107} validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1883, inspector_s1883, appraiser_s1883, description_s1883, price_s1883);
    return;

  anon56_Else:
    assume {:partition} choice != 29;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 108} validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2017, inspector_s2017, appraiser_s2017, description_s2017, price_s2017);
    return;

  anon57_Else:
    assume {:partition} choice != 28;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 109} validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2151, inspector_s2151, appraiser_s2151, description_s2151, price_s2151);
    return;

  anon58_Else:
    assume {:partition} choice != 27;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 110} validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2285, inspector_s2285, appraiser_s2285, description_s2285, price_s2285);
    return;

  anon59_Else:
    assume {:partition} choice != 26;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 111} validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2419, inspector_s2419, appraiser_s2419, description_s2419, price_s2419);
    return;

  anon60_Else:
    assume {:partition} choice != 25;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 112} validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2553, inspector_s2553, appraiser_s2553, description_s2553, price_s2553);
    return;

  anon61_Else:
    assume {:partition} choice != 24;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 113} validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2687, inspector_s2687, appraiser_s2687, description_s2687, price_s2687);
    return;

  anon62_Else:
    assume {:partition} choice != 23;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 114} validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2821, inspector_s2821, appraiser_s2821, description_s2821, price_s2821);
    return;

  anon63_Else:
    assume {:partition} choice != 22;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 115} validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2955, inspector_s2955, appraiser_s2955, description_s2955, price_s2955);
    return;

  anon64_Else:
    assume {:partition} choice != 21;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 116} validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3089, inspector_s3089, appraiser_s3089, description_s3089, price_s3089);
    return;

  anon65_Else:
    assume {:partition} choice != 20;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 117} validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3223, inspector_s3223, appraiser_s3223, description_s3223, price_s3223);
    return;

  anon66_Else:
    assume {:partition} choice != 19;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 118} validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3357, inspector_s3357, appraiser_s3357, description_s3357, price_s3357);
    return;

  anon67_Else:
    assume {:partition} choice != 18;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 119} validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3491, inspector_s3491, appraiser_s3491, description_s3491, price_s3491);
    return;

  anon68_Else:
    assume {:partition} choice != 17;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 120} validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3625, inspector_s3625, appraiser_s3625, description_s3625, price_s3625);
    return;

  anon69_Else:
    assume {:partition} choice != 16;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 121} validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3759, inspector_s3759, appraiser_s3759, description_s3759, price_s3759);
    return;

  anon70_Else:
    assume {:partition} choice != 15;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 122} validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3893, inspector_s3893, appraiser_s3893, description_s3893, price_s3893);
    return;

  anon71_Else:
    assume {:partition} choice != 14;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 123} validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4027, inspector_s4027, appraiser_s4027, description_s4027, price_s4027);
    return;

  anon72_Else:
    assume {:partition} choice != 13;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 124} validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4161, inspector_s4161, appraiser_s4161, description_s4161, price_s4161);
    return;

  anon73_Else:
    assume {:partition} choice != 12;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 125} validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4295, inspector_s4295, appraiser_s4295, description_s4295, price_s4295);
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
    call {:si_unique_call 127} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4400, price_s4400);
    return;

  anon76_Else:
    assume {:partition} choice != 9;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 128} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4470, appraiser_s4470, offerPrice_s4470);
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
    call {:si_unique_call 132} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4694);
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
  var description_s4348: int;
  var price_s4348: int;

  anon0:
    call {:si_unique_call 136} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 137} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4348, price_s4348);
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


