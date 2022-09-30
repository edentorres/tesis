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

procedure {:public} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s271: int, inspector_s271: Ref, appraiser_s271: Ref, description_s271: int, price_s271: int);
  modifies State_AssetTransfer;



implementation {:ForceInline} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s271: int, inspector_s271: Ref, appraiser_s271: Ref, description_s271: int, price_s271: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s271);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s271);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s271);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s271);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s271);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 1) && !(State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && !(State_AssetTransfer[this] == 1) && !(State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4);
    goto corral_source_split_3;

  corral_source_split_3:
    assume InstanceOwner_AssetTransfer[this] == msgsender_MSG;
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 10} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 1) && !(State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && !(State_AssetTransfer[this] == 1) && !(State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
    return;
}



procedure {:public} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s579: int, inspector_s579: Ref, appraiser_s579: Ref, description_s579: int, price_s579: int);



procedure {:public} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s849: int, inspector_s849: Ref, appraiser_s849: Ref, description_s849: int, price_s849: int);



procedure {:public} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1119: int, inspector_s1119: Ref, appraiser_s1119: Ref, description_s1119: int, price_s1119: int);



procedure {:public} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1387: int, inspector_s1387: Ref, appraiser_s1387: Ref, description_s1387: int, price_s1387: int);



procedure {:public} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1693: int, inspector_s1693: Ref, appraiser_s1693: Ref, description_s1693: int, price_s1693: int);



procedure {:public} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1961: int, inspector_s1961: Ref, appraiser_s1961: Ref, description_s1961: int, price_s1961: int);



procedure {:public} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2229: int, inspector_s2229: Ref, appraiser_s2229: Ref, description_s2229: int, price_s2229: int);



procedure {:public} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2495: int, inspector_s2495: Ref, appraiser_s2495: Ref, description_s2495: int, price_s2495: int);



procedure {:public} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2799: int, inspector_s2799: Ref, appraiser_s2799: Ref, description_s2799: int, price_s2799: int);



procedure {:public} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3065: int, inspector_s3065: Ref, appraiser_s3065: Ref, description_s3065: int, price_s3065: int);



procedure {:public} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3331: int, inspector_s3331: Ref, appraiser_s3331: Ref, description_s3331: int, price_s3331: int);



procedure {:public} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3597: int, inspector_s3597: Ref, appraiser_s3597: Ref, description_s3597: int, price_s3597: int);



procedure {:public} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3901: int, inspector_s3901: Ref, appraiser_s3901: Ref, description_s3901: int, price_s3901: int);



procedure {:public} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4167: int, inspector_s4167: Ref, appraiser_s4167: Ref, description_s4167: int, price_s4167: int);



procedure {:public} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4433: int, inspector_s4433: Ref, appraiser_s4433: Ref, description_s4433: int, price_s4433: int);



procedure {:public} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4695: int, inspector_s4695: Ref, appraiser_s4695: Ref, description_s4695: int, price_s4695: int);



procedure {:public} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4995: int, inspector_s4995: Ref, appraiser_s4995: Ref, description_s4995: int, price_s4995: int);



procedure {:public} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5257: int, inspector_s5257: Ref, appraiser_s5257: Ref, description_s5257: int, price_s5257: int);



procedure {:public} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5519: int, inspector_s5519: Ref, appraiser_s5519: Ref, description_s5519: int, price_s5519: int);



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := -334978120;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 11} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 12} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 13} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 14} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 15} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5572);
    call {:si_unique_call 16} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5572);
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
    assume price_s5572 >= 0;
    AskingPrice_AssetTransfer[this] := price_s5572;
    call {:si_unique_call 19} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    Description_AssetTransfer[this] := description_s5572;
    call {:si_unique_call 20} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int)
{

  anon0:
    call {:si_unique_call 21} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 22} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 23} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 24} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 25} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5572);
    call {:si_unique_call 26} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5572);
    call {:si_unique_call 27} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 28} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s5572, price_s5572);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5624: int, price_s5624: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5624: int, price_s5624: int)
{

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5624);
    call {:si_unique_call 39} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5624);
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
    Description_AssetTransfer[this] := description_s5624;
    call {:si_unique_call 41} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_28;

  corral_source_split_28:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s5624 >= 0;
    AskingPrice_AssetTransfer[this] := price_s5624;
    call {:si_unique_call 42} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s5694: Ref, appraiser_s5694: Ref, offerPrice_s5694: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s5694: Ref, appraiser_s5694: Ref, offerPrice_s5694: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s5694);
    call {:si_unique_call 48} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s5694);
    call {:si_unique_call 49} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s5694);
    call {:si_unique_call 50} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s5694 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s5694 == null || appraiser_s5694 == null || offerPrice_s5694 == 0;
    goto corral_source_split_33;

  corral_source_split_33:
    goto corral_source_split_34;

  corral_source_split_34:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s5694 == null || appraiser_s5694 == null || offerPrice_s5694 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s5694;
    call {:si_unique_call 52} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s5694;
    call {:si_unique_call 53} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_44;

  corral_source_split_44:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s5694 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s5694;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5918: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5918: int)
{

  anon0:
    call {:si_unique_call 71} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 72} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 73} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 74} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 75} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s5918);
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
    assume offerPrice_s5918 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s5918 == 0;
    goto corral_source_split_107;

  corral_source_split_107:
    goto corral_source_split_108;

  corral_source_split_108:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s5918 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s5918 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s5918;
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
  var offerPrice_s271: int;
  var inspector_s271: Ref;
  var appraiser_s271: Ref;
  var description_s271: int;
  var price_s271: int;
  var offerPrice_s579: int;
  var inspector_s579: Ref;
  var appraiser_s579: Ref;
  var description_s579: int;
  var price_s579: int;
  var offerPrice_s849: int;
  var inspector_s849: Ref;
  var appraiser_s849: Ref;
  var description_s849: int;
  var price_s849: int;
  var offerPrice_s1119: int;
  var inspector_s1119: Ref;
  var appraiser_s1119: Ref;
  var description_s1119: int;
  var price_s1119: int;
  var offerPrice_s1387: int;
  var inspector_s1387: Ref;
  var appraiser_s1387: Ref;
  var description_s1387: int;
  var price_s1387: int;
  var offerPrice_s1693: int;
  var inspector_s1693: Ref;
  var appraiser_s1693: Ref;
  var description_s1693: int;
  var price_s1693: int;
  var offerPrice_s1961: int;
  var inspector_s1961: Ref;
  var appraiser_s1961: Ref;
  var description_s1961: int;
  var price_s1961: int;
  var offerPrice_s2229: int;
  var inspector_s2229: Ref;
  var appraiser_s2229: Ref;
  var description_s2229: int;
  var price_s2229: int;
  var offerPrice_s2495: int;
  var inspector_s2495: Ref;
  var appraiser_s2495: Ref;
  var description_s2495: int;
  var price_s2495: int;
  var offerPrice_s2799: int;
  var inspector_s2799: Ref;
  var appraiser_s2799: Ref;
  var description_s2799: int;
  var price_s2799: int;
  var offerPrice_s3065: int;
  var inspector_s3065: Ref;
  var appraiser_s3065: Ref;
  var description_s3065: int;
  var price_s3065: int;
  var offerPrice_s3331: int;
  var inspector_s3331: Ref;
  var appraiser_s3331: Ref;
  var description_s3331: int;
  var price_s3331: int;
  var offerPrice_s3597: int;
  var inspector_s3597: Ref;
  var appraiser_s3597: Ref;
  var description_s3597: int;
  var price_s3597: int;
  var offerPrice_s3901: int;
  var inspector_s3901: Ref;
  var appraiser_s3901: Ref;
  var description_s3901: int;
  var price_s3901: int;
  var offerPrice_s4167: int;
  var inspector_s4167: Ref;
  var appraiser_s4167: Ref;
  var description_s4167: int;
  var price_s4167: int;
  var offerPrice_s4433: int;
  var inspector_s4433: Ref;
  var appraiser_s4433: Ref;
  var description_s4433: int;
  var price_s4433: int;
  var offerPrice_s4695: int;
  var inspector_s4695: Ref;
  var appraiser_s4695: Ref;
  var description_s4695: int;
  var price_s4695: int;
  var offerPrice_s4995: int;
  var inspector_s4995: Ref;
  var appraiser_s4995: Ref;
  var description_s4995: int;
  var price_s4995: int;
  var offerPrice_s5257: int;
  var inspector_s5257: Ref;
  var appraiser_s5257: Ref;
  var description_s5257: int;
  var price_s5257: int;
  var offerPrice_s5519: int;
  var inspector_s5519: Ref;
  var appraiser_s5519: Ref;
  var description_s5519: int;
  var price_s5519: int;
  var description_s5572: int;
  var price_s5572: int;
  var description_s5624: int;
  var price_s5624: int;
  var inspector_s5694: Ref;
  var appraiser_s5694: Ref;
  var offerPrice_s5694: int;
  var offerPrice_s5918: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s271;
    havoc inspector_s271;
    havoc appraiser_s271;
    havoc description_s271;
    havoc price_s271;
    havoc offerPrice_s579;
    havoc inspector_s579;
    havoc appraiser_s579;
    havoc description_s579;
    havoc price_s579;
    havoc offerPrice_s849;
    havoc inspector_s849;
    havoc appraiser_s849;
    havoc description_s849;
    havoc price_s849;
    havoc offerPrice_s1119;
    havoc inspector_s1119;
    havoc appraiser_s1119;
    havoc description_s1119;
    havoc price_s1119;
    havoc offerPrice_s1387;
    havoc inspector_s1387;
    havoc appraiser_s1387;
    havoc description_s1387;
    havoc price_s1387;
    havoc offerPrice_s1693;
    havoc inspector_s1693;
    havoc appraiser_s1693;
    havoc description_s1693;
    havoc price_s1693;
    havoc offerPrice_s1961;
    havoc inspector_s1961;
    havoc appraiser_s1961;
    havoc description_s1961;
    havoc price_s1961;
    havoc offerPrice_s2229;
    havoc inspector_s2229;
    havoc appraiser_s2229;
    havoc description_s2229;
    havoc price_s2229;
    havoc offerPrice_s2495;
    havoc inspector_s2495;
    havoc appraiser_s2495;
    havoc description_s2495;
    havoc price_s2495;
    havoc offerPrice_s2799;
    havoc inspector_s2799;
    havoc appraiser_s2799;
    havoc description_s2799;
    havoc price_s2799;
    havoc offerPrice_s3065;
    havoc inspector_s3065;
    havoc appraiser_s3065;
    havoc description_s3065;
    havoc price_s3065;
    havoc offerPrice_s3331;
    havoc inspector_s3331;
    havoc appraiser_s3331;
    havoc description_s3331;
    havoc price_s3331;
    havoc offerPrice_s3597;
    havoc inspector_s3597;
    havoc appraiser_s3597;
    havoc description_s3597;
    havoc price_s3597;
    havoc offerPrice_s3901;
    havoc inspector_s3901;
    havoc appraiser_s3901;
    havoc description_s3901;
    havoc price_s3901;
    havoc offerPrice_s4167;
    havoc inspector_s4167;
    havoc appraiser_s4167;
    havoc description_s4167;
    havoc price_s4167;
    havoc offerPrice_s4433;
    havoc inspector_s4433;
    havoc appraiser_s4433;
    havoc description_s4433;
    havoc price_s4433;
    havoc offerPrice_s4695;
    havoc inspector_s4695;
    havoc appraiser_s4695;
    havoc description_s4695;
    havoc price_s4695;
    havoc offerPrice_s4995;
    havoc inspector_s4995;
    havoc appraiser_s4995;
    havoc description_s4995;
    havoc price_s4995;
    havoc offerPrice_s5257;
    havoc inspector_s5257;
    havoc appraiser_s5257;
    havoc description_s5257;
    havoc price_s5257;
    havoc offerPrice_s5519;
    havoc inspector_s5519;
    havoc appraiser_s5519;
    havoc description_s5519;
    havoc price_s5519;
    havoc description_s5572;
    havoc price_s5572;
    havoc description_s5624;
    havoc price_s5624;
    havoc inspector_s5694;
    havoc appraiser_s5694;
    havoc offerPrice_s5694;
    havoc offerPrice_s5918;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 95} validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s271, inspector_s271, appraiser_s271, description_s271, price_s271);
    return;

  anon31_Else:
    assume {:partition} choice != 30;
    goto anon32_Then, anon32_Else;

  anon32_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 96} validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s579, inspector_s579, appraiser_s579, description_s579, price_s579);
    return;

  anon32_Else:
    assume {:partition} choice != 29;
    goto anon33_Then, anon33_Else;

  anon33_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 97} validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s849, inspector_s849, appraiser_s849, description_s849, price_s849);
    return;

  anon33_Else:
    assume {:partition} choice != 28;
    goto anon34_Then, anon34_Else;

  anon34_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 98} validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1119, inspector_s1119, appraiser_s1119, description_s1119, price_s1119);
    return;

  anon34_Else:
    assume {:partition} choice != 27;
    goto anon35_Then, anon35_Else;

  anon35_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 99} validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1387, inspector_s1387, appraiser_s1387, description_s1387, price_s1387);
    return;

  anon35_Else:
    assume {:partition} choice != 26;
    goto anon36_Then, anon36_Else;

  anon36_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 100} validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1693, inspector_s1693, appraiser_s1693, description_s1693, price_s1693);
    return;

  anon36_Else:
    assume {:partition} choice != 25;
    goto anon37_Then, anon37_Else;

  anon37_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 101} validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1961, inspector_s1961, appraiser_s1961, description_s1961, price_s1961);
    return;

  anon37_Else:
    assume {:partition} choice != 24;
    goto anon38_Then, anon38_Else;

  anon38_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 102} validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2229, inspector_s2229, appraiser_s2229, description_s2229, price_s2229);
    return;

  anon38_Else:
    assume {:partition} choice != 23;
    goto anon39_Then, anon39_Else;

  anon39_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 103} validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2495, inspector_s2495, appraiser_s2495, description_s2495, price_s2495);
    return;

  anon39_Else:
    assume {:partition} choice != 22;
    goto anon40_Then, anon40_Else;

  anon40_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 104} validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2799, inspector_s2799, appraiser_s2799, description_s2799, price_s2799);
    return;

  anon40_Else:
    assume {:partition} choice != 21;
    goto anon41_Then, anon41_Else;

  anon41_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 105} validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3065, inspector_s3065, appraiser_s3065, description_s3065, price_s3065);
    return;

  anon41_Else:
    assume {:partition} choice != 20;
    goto anon42_Then, anon42_Else;

  anon42_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 106} validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3331, inspector_s3331, appraiser_s3331, description_s3331, price_s3331);
    return;

  anon42_Else:
    assume {:partition} choice != 19;
    goto anon43_Then, anon43_Else;

  anon43_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 107} validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3597, inspector_s3597, appraiser_s3597, description_s3597, price_s3597);
    return;

  anon43_Else:
    assume {:partition} choice != 18;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 108} validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3901, inspector_s3901, appraiser_s3901, description_s3901, price_s3901);
    return;

  anon44_Else:
    assume {:partition} choice != 17;
    goto anon45_Then, anon45_Else;

  anon45_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 109} validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4167, inspector_s4167, appraiser_s4167, description_s4167, price_s4167);
    return;

  anon45_Else:
    assume {:partition} choice != 16;
    goto anon46_Then, anon46_Else;

  anon46_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 110} validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4433, inspector_s4433, appraiser_s4433, description_s4433, price_s4433);
    return;

  anon46_Else:
    assume {:partition} choice != 15;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 111} validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4695, inspector_s4695, appraiser_s4695, description_s4695, price_s4695);
    return;

  anon47_Else:
    assume {:partition} choice != 14;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 112} validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4995, inspector_s4995, appraiser_s4995, description_s4995, price_s4995);
    return;

  anon48_Else:
    assume {:partition} choice != 13;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 113} validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5257, inspector_s5257, appraiser_s5257, description_s5257, price_s5257);
    return;

  anon49_Else:
    assume {:partition} choice != 12;
    goto anon50_Then, anon50_Else;

  anon50_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 114} validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5519, inspector_s5519, appraiser_s5519, description_s5519, price_s5519);
    return;

  anon50_Else:
    assume {:partition} choice != 11;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 115} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon51_Else:
    assume {:partition} choice != 10;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 116} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5624, price_s5624);
    return;

  anon52_Else:
    assume {:partition} choice != 9;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 117} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s5694, appraiser_s5694, offerPrice_s5694);
    return;

  anon53_Else:
    assume {:partition} choice != 8;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 118} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon54_Else:
    assume {:partition} choice != 7;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 119} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon55_Else:
    assume {:partition} choice != 6;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 120} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon56_Else:
    assume {:partition} choice != 5;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 121} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5918);
    return;

  anon57_Else:
    assume {:partition} choice != 4;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 122} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon58_Else:
    assume {:partition} choice != 3;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 123} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon59_Else:
    assume {:partition} choice != 2;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 124} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon60_Else:
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
  var description_s5572: int;
  var price_s5572: int;

  anon0:
    call {:si_unique_call 125} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 126} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5572, price_s5572);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 127} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


