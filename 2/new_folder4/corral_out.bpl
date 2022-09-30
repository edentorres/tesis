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

procedure {:public} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s263: int, inspector_s263: Ref, appraiser_s263: Ref, description_s263: int, price_s263: int);



procedure {:public} validCombination0x0x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s525: int, inspector_s525: Ref, appraiser_s525: Ref, description_s525: int, price_s525: int);



procedure {:public} validCombination0x0x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s787: int, inspector_s787: Ref, appraiser_s787: Ref, description_s787: int, price_s787: int);



procedure {:public} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1087: int, inspector_s1087: Ref, appraiser_s1087: Ref, description_s1087: int, price_s1087: int);



procedure {:public} validCombination0x0x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1354: int, inspector_s1354: Ref, appraiser_s1354: Ref, description_s1354: int, price_s1354: int);



procedure {:public} validCombination0x0x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1616: int, inspector_s1616: Ref, appraiser_s1616: Ref, description_s1616: int, price_s1616: int);



procedure {:public} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1878: int, inspector_s1878: Ref, appraiser_s1878: Ref, description_s1878: int, price_s1878: int);



procedure {:public} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2140: int, inspector_s2140: Ref, appraiser_s2140: Ref, description_s2140: int, price_s2140: int);



procedure {:public} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2400: int, inspector_s2400: Ref, appraiser_s2400: Ref, description_s2400: int, price_s2400: int);



procedure {:public} validCombination0x1x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2660: int, inspector_s2660: Ref, appraiser_s2660: Ref, description_s2660: int, price_s2660: int);



procedure {:public} validCombination0x1x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2920: int, inspector_s2920: Ref, appraiser_s2920: Ref, description_s2920: int, price_s2920: int);



procedure {:public} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3218: int, inspector_s3218: Ref, appraiser_s3218: Ref, description_s3218: int, price_s3218: int);



procedure {:public} validCombination0x1x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3483: int, inspector_s3483: Ref, appraiser_s3483: Ref, description_s3483: int, price_s3483: int);



procedure {:public} validCombination0x1x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3743: int, inspector_s3743: Ref, appraiser_s3743: Ref, description_s3743: int, price_s3743: int);



procedure {:public} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4003: int, inspector_s4003: Ref, appraiser_s4003: Ref, description_s4003: int, price_s4003: int);



procedure {:public} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4263: int, inspector_s4263: Ref, appraiser_s4263: Ref, description_s4263: int, price_s4263: int);



procedure {:public} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4521: int, inspector_s4521: Ref, appraiser_s4521: Ref, description_s4521: int, price_s4521: int);



procedure {:public} validCombination0x2x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4779: int, inspector_s4779: Ref, appraiser_s4779: Ref, description_s4779: int, price_s4779: int);



procedure {:public} validCombination0x2x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5037: int, inspector_s5037: Ref, appraiser_s5037: Ref, description_s5037: int, price_s5037: int);



procedure {:public} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5333: int, inspector_s5333: Ref, appraiser_s5333: Ref, description_s5333: int, price_s5333: int);



procedure {:public} validCombination0x2x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5596: int, inspector_s5596: Ref, appraiser_s5596: Ref, description_s5596: int, price_s5596: int);



procedure {:public} validCombination0x2x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5854: int, inspector_s5854: Ref, appraiser_s5854: Ref, description_s5854: int, price_s5854: int);



procedure {:public} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6112: int, inspector_s6112: Ref, appraiser_s6112: Ref, description_s6112: int, price_s6112: int);



procedure {:public} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6370: int, inspector_s6370: Ref, appraiser_s6370: Ref, description_s6370: int, price_s6370: int);



procedure {:public} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6628: int, inspector_s6628: Ref, appraiser_s6628: Ref, description_s6628: int, price_s6628: int);



procedure {:public} validCombination0x3x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6886: int, inspector_s6886: Ref, appraiser_s6886: Ref, description_s6886: int, price_s6886: int);



procedure {:public} validCombination0x3x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7144: int, inspector_s7144: Ref, appraiser_s7144: Ref, description_s7144: int, price_s7144: int);



procedure {:public} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7440: int, inspector_s7440: Ref, appraiser_s7440: Ref, description_s7440: int, price_s7440: int);



procedure {:public} validCombination0x3x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7703: int, inspector_s7703: Ref, appraiser_s7703: Ref, description_s7703: int, price_s7703: int);



procedure {:public} validCombination0x3x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7961: int, inspector_s7961: Ref, appraiser_s7961: Ref, description_s7961: int, price_s7961: int);



procedure {:public} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8219: int, inspector_s8219: Ref, appraiser_s8219: Ref, description_s8219: int, price_s8219: int);



procedure {:public} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8477: int, inspector_s8477: Ref, appraiser_s8477: Ref, description_s8477: int, price_s8477: int);



procedure {:public} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8731: int, inspector_s8731: Ref, appraiser_s8731: Ref, description_s8731: int, price_s8731: int);



procedure {:public} validCombination0x4x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8985: int, inspector_s8985: Ref, appraiser_s8985: Ref, description_s8985: int, price_s8985: int);



procedure {:public} validCombination0x4x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9239: int, inspector_s9239: Ref, appraiser_s9239: Ref, description_s9239: int, price_s9239: int);



procedure {:public} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9531: int, inspector_s9531: Ref, appraiser_s9531: Ref, description_s9531: int, price_s9531: int);



procedure {:public} validCombination0x4x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9790: int, inspector_s9790: Ref, appraiser_s9790: Ref, description_s9790: int, price_s9790: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} validCombination0x4x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9790: int, inspector_s9790: Ref, appraiser_s9790: Ref, description_s9790: int, price_s9790: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s9790);
    call {:si_unique_call 5} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s9790);
    call {:si_unique_call 6} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s9790);
    call {:si_unique_call 7} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s9790);
    call {:si_unique_call 8} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s9790);
    call {:si_unique_call 9} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4);
    goto corral_source_split_3;

  corral_source_split_3:
    assume offerPrice_s9790 >= 0;
    assume InstanceBuyer_AssetTransfer[this] == msgsender_MSG && offerPrice_s9790 != 0;
    goto corral_source_split_4;

  corral_source_split_4:
    assume offerPrice_s9790 >= 0;
    call {:si_unique_call 10} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9790);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(true && !(State_AssetTransfer[this] == 0) && !(State_AssetTransfer[this] == 0) && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || (State_AssetTransfer[this] == 4 && State_AssetTransfer[this] == 5) || State_AssetTransfer[this] == 6) && true && State_AssetTransfer[this] == 1 && (State_AssetTransfer[this] == 1 || State_AssetTransfer[this] == 2 || State_AssetTransfer[this] == 3 || State_AssetTransfer[this] == 4 || State_AssetTransfer[this] == 5 || State_AssetTransfer[this] == 7) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 3) && (State_AssetTransfer[this] != 2 || State_AssetTransfer[this] != 4));
    return;
}



procedure {:public} validCombination0x4x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10044: int, inspector_s10044: Ref, appraiser_s10044: Ref, description_s10044: int, price_s10044: int);



procedure {:public} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10298: int, inspector_s10298: Ref, appraiser_s10298: Ref, description_s10298: int, price_s10298: int);



procedure {:public} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10552: int, inspector_s10552: Ref, appraiser_s10552: Ref, description_s10552: int, price_s10552: int);



var InstanceOwner_AssetTransfer: [Ref]Ref;

var Description_AssetTransfer: [Ref]int;

var AskingPrice_AssetTransfer: [Ref]int;

var State_AssetTransfer: [Ref]int;

var InstanceBuyer_AssetTransfer: [Ref]Ref;

var OfferPrice_AssetTransfer: [Ref]int;

var InstanceInspector_AssetTransfer: [Ref]Ref;

var InstanceAppraiser_AssetTransfer: [Ref]Ref;

procedure AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_AssetTransfer[this] := null;
    Description_AssetTransfer[this] := 662280124;
    AskingPrice_AssetTransfer[this] := 0;
    InstanceBuyer_AssetTransfer[this] := null;
    OfferPrice_AssetTransfer[this] := 0;
    InstanceInspector_AssetTransfer[this] := null;
    InstanceAppraiser_AssetTransfer[this] := null;
    call {:si_unique_call 11} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 12} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 13} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 14} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 15} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10605);
    call {:si_unique_call 16} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10605);
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
    assume price_s10605 >= 0;
    AskingPrice_AssetTransfer[this] := price_s10605;
    call {:si_unique_call 19} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    Description_AssetTransfer[this] := description_s10605;
    call {:si_unique_call 20} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    State_AssetTransfer[this] := 0;
    return;
}



procedure {:constructor} {:public} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int);
  modifies Balance, InstanceOwner_AssetTransfer, Description_AssetTransfer, AskingPrice_AssetTransfer, InstanceBuyer_AssetTransfer, OfferPrice_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int)
{

  anon0:
    call {:si_unique_call 21} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 22} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 23} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 24} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 25} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10605);
    call {:si_unique_call 26} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10605);
    call {:si_unique_call 27} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 28} AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s10605, price_s10605);
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



procedure {:public} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10657: int, price_s10657: int);
  modifies Description_AssetTransfer, AskingPrice_AssetTransfer;



implementation {:ForceInline} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10657: int, price_s10657: int)
{

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10657);
    call {:si_unique_call 39} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10657);
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
    Description_AssetTransfer[this] := description_s10657;
    call {:si_unique_call 41} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
    goto corral_source_split_28;

  corral_source_split_28:
    assume AskingPrice_AssetTransfer[this] >= 0;
    assume price_s10657 >= 0;
    AskingPrice_AssetTransfer[this] := price_s10657;
    call {:si_unique_call 42} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
    return;
}



procedure {:public} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s10727: Ref, appraiser_s10727: Ref, offerPrice_s10727: int);
  modifies InstanceBuyer_AssetTransfer, InstanceInspector_AssetTransfer, InstanceAppraiser_AssetTransfer, OfferPrice_AssetTransfer, State_AssetTransfer;



implementation {:ForceInline} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s10727: Ref, appraiser_s10727: Ref, offerPrice_s10727: int)
{
  var __var_1: Ref;
  var __var_2: Ref;

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s10727);
    call {:si_unique_call 48} {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s10727);
    call {:si_unique_call 49} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s10727);
    call {:si_unique_call 50} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    __var_1 := null;
    __var_2 := null;
    assume offerPrice_s10727 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} inspector_s10727 == null || appraiser_s10727 == null || offerPrice_s10727 == 0;
    goto corral_source_split_33;

  corral_source_split_33:
    goto corral_source_split_34;

  corral_source_split_34:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} !(inspector_s10727 == null || appraiser_s10727 == null || offerPrice_s10727 == 0);
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
    InstanceInspector_AssetTransfer[this] := inspector_s10727;
    call {:si_unique_call 52} {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    InstanceAppraiser_AssetTransfer[this] := appraiser_s10727;
    call {:si_unique_call 53} {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
    goto corral_source_split_44;

  corral_source_split_44:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s10727 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s10727;
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



procedure {:public} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10951: int);
  modifies OfferPrice_AssetTransfer;



implementation {:ForceInline} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10951: int)
{

  anon0:
    call {:si_unique_call 71} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 72} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 73} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 74} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 75} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s10951);
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
    assume offerPrice_s10951 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s10951 == 0;
    goto corral_source_split_107;

  corral_source_split_107:
    goto corral_source_split_108;

  corral_source_split_108:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} !(InstanceBuyer_AssetTransfer[this] != msgsender_MSG || offerPrice_s10951 == 0);
    goto anon4;

  anon4:
    assume OfferPrice_AssetTransfer[this] >= 0;
    assume offerPrice_s10951 >= 0;
    OfferPrice_AssetTransfer[this] := offerPrice_s10951;
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
  var offerPrice_s263: int;
  var inspector_s263: Ref;
  var appraiser_s263: Ref;
  var description_s263: int;
  var price_s263: int;
  var offerPrice_s525: int;
  var inspector_s525: Ref;
  var appraiser_s525: Ref;
  var description_s525: int;
  var price_s525: int;
  var offerPrice_s787: int;
  var inspector_s787: Ref;
  var appraiser_s787: Ref;
  var description_s787: int;
  var price_s787: int;
  var offerPrice_s1087: int;
  var inspector_s1087: Ref;
  var appraiser_s1087: Ref;
  var description_s1087: int;
  var price_s1087: int;
  var offerPrice_s1354: int;
  var inspector_s1354: Ref;
  var appraiser_s1354: Ref;
  var description_s1354: int;
  var price_s1354: int;
  var offerPrice_s1616: int;
  var inspector_s1616: Ref;
  var appraiser_s1616: Ref;
  var description_s1616: int;
  var price_s1616: int;
  var offerPrice_s1878: int;
  var inspector_s1878: Ref;
  var appraiser_s1878: Ref;
  var description_s1878: int;
  var price_s1878: int;
  var offerPrice_s2140: int;
  var inspector_s2140: Ref;
  var appraiser_s2140: Ref;
  var description_s2140: int;
  var price_s2140: int;
  var offerPrice_s2400: int;
  var inspector_s2400: Ref;
  var appraiser_s2400: Ref;
  var description_s2400: int;
  var price_s2400: int;
  var offerPrice_s2660: int;
  var inspector_s2660: Ref;
  var appraiser_s2660: Ref;
  var description_s2660: int;
  var price_s2660: int;
  var offerPrice_s2920: int;
  var inspector_s2920: Ref;
  var appraiser_s2920: Ref;
  var description_s2920: int;
  var price_s2920: int;
  var offerPrice_s3218: int;
  var inspector_s3218: Ref;
  var appraiser_s3218: Ref;
  var description_s3218: int;
  var price_s3218: int;
  var offerPrice_s3483: int;
  var inspector_s3483: Ref;
  var appraiser_s3483: Ref;
  var description_s3483: int;
  var price_s3483: int;
  var offerPrice_s3743: int;
  var inspector_s3743: Ref;
  var appraiser_s3743: Ref;
  var description_s3743: int;
  var price_s3743: int;
  var offerPrice_s4003: int;
  var inspector_s4003: Ref;
  var appraiser_s4003: Ref;
  var description_s4003: int;
  var price_s4003: int;
  var offerPrice_s4263: int;
  var inspector_s4263: Ref;
  var appraiser_s4263: Ref;
  var description_s4263: int;
  var price_s4263: int;
  var offerPrice_s4521: int;
  var inspector_s4521: Ref;
  var appraiser_s4521: Ref;
  var description_s4521: int;
  var price_s4521: int;
  var offerPrice_s4779: int;
  var inspector_s4779: Ref;
  var appraiser_s4779: Ref;
  var description_s4779: int;
  var price_s4779: int;
  var offerPrice_s5037: int;
  var inspector_s5037: Ref;
  var appraiser_s5037: Ref;
  var description_s5037: int;
  var price_s5037: int;
  var offerPrice_s5333: int;
  var inspector_s5333: Ref;
  var appraiser_s5333: Ref;
  var description_s5333: int;
  var price_s5333: int;
  var offerPrice_s5596: int;
  var inspector_s5596: Ref;
  var appraiser_s5596: Ref;
  var description_s5596: int;
  var price_s5596: int;
  var offerPrice_s5854: int;
  var inspector_s5854: Ref;
  var appraiser_s5854: Ref;
  var description_s5854: int;
  var price_s5854: int;
  var offerPrice_s6112: int;
  var inspector_s6112: Ref;
  var appraiser_s6112: Ref;
  var description_s6112: int;
  var price_s6112: int;
  var offerPrice_s6370: int;
  var inspector_s6370: Ref;
  var appraiser_s6370: Ref;
  var description_s6370: int;
  var price_s6370: int;
  var offerPrice_s6628: int;
  var inspector_s6628: Ref;
  var appraiser_s6628: Ref;
  var description_s6628: int;
  var price_s6628: int;
  var offerPrice_s6886: int;
  var inspector_s6886: Ref;
  var appraiser_s6886: Ref;
  var description_s6886: int;
  var price_s6886: int;
  var offerPrice_s7144: int;
  var inspector_s7144: Ref;
  var appraiser_s7144: Ref;
  var description_s7144: int;
  var price_s7144: int;
  var offerPrice_s7440: int;
  var inspector_s7440: Ref;
  var appraiser_s7440: Ref;
  var description_s7440: int;
  var price_s7440: int;
  var offerPrice_s7703: int;
  var inspector_s7703: Ref;
  var appraiser_s7703: Ref;
  var description_s7703: int;
  var price_s7703: int;
  var offerPrice_s7961: int;
  var inspector_s7961: Ref;
  var appraiser_s7961: Ref;
  var description_s7961: int;
  var price_s7961: int;
  var offerPrice_s8219: int;
  var inspector_s8219: Ref;
  var appraiser_s8219: Ref;
  var description_s8219: int;
  var price_s8219: int;
  var offerPrice_s8477: int;
  var inspector_s8477: Ref;
  var appraiser_s8477: Ref;
  var description_s8477: int;
  var price_s8477: int;
  var offerPrice_s8731: int;
  var inspector_s8731: Ref;
  var appraiser_s8731: Ref;
  var description_s8731: int;
  var price_s8731: int;
  var offerPrice_s8985: int;
  var inspector_s8985: Ref;
  var appraiser_s8985: Ref;
  var description_s8985: int;
  var price_s8985: int;
  var offerPrice_s9239: int;
  var inspector_s9239: Ref;
  var appraiser_s9239: Ref;
  var description_s9239: int;
  var price_s9239: int;
  var offerPrice_s9531: int;
  var inspector_s9531: Ref;
  var appraiser_s9531: Ref;
  var description_s9531: int;
  var price_s9531: int;
  var offerPrice_s9790: int;
  var inspector_s9790: Ref;
  var appraiser_s9790: Ref;
  var description_s9790: int;
  var price_s9790: int;
  var offerPrice_s10044: int;
  var inspector_s10044: Ref;
  var appraiser_s10044: Ref;
  var description_s10044: int;
  var price_s10044: int;
  var offerPrice_s10298: int;
  var inspector_s10298: Ref;
  var appraiser_s10298: Ref;
  var description_s10298: int;
  var price_s10298: int;
  var offerPrice_s10552: int;
  var inspector_s10552: Ref;
  var appraiser_s10552: Ref;
  var description_s10552: int;
  var price_s10552: int;
  var description_s10605: int;
  var price_s10605: int;
  var description_s10657: int;
  var price_s10657: int;
  var inspector_s10727: Ref;
  var appraiser_s10727: Ref;
  var offerPrice_s10727: int;
  var offerPrice_s10951: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s263;
    havoc inspector_s263;
    havoc appraiser_s263;
    havoc description_s263;
    havoc price_s263;
    havoc offerPrice_s525;
    havoc inspector_s525;
    havoc appraiser_s525;
    havoc description_s525;
    havoc price_s525;
    havoc offerPrice_s787;
    havoc inspector_s787;
    havoc appraiser_s787;
    havoc description_s787;
    havoc price_s787;
    havoc offerPrice_s1087;
    havoc inspector_s1087;
    havoc appraiser_s1087;
    havoc description_s1087;
    havoc price_s1087;
    havoc offerPrice_s1354;
    havoc inspector_s1354;
    havoc appraiser_s1354;
    havoc description_s1354;
    havoc price_s1354;
    havoc offerPrice_s1616;
    havoc inspector_s1616;
    havoc appraiser_s1616;
    havoc description_s1616;
    havoc price_s1616;
    havoc offerPrice_s1878;
    havoc inspector_s1878;
    havoc appraiser_s1878;
    havoc description_s1878;
    havoc price_s1878;
    havoc offerPrice_s2140;
    havoc inspector_s2140;
    havoc appraiser_s2140;
    havoc description_s2140;
    havoc price_s2140;
    havoc offerPrice_s2400;
    havoc inspector_s2400;
    havoc appraiser_s2400;
    havoc description_s2400;
    havoc price_s2400;
    havoc offerPrice_s2660;
    havoc inspector_s2660;
    havoc appraiser_s2660;
    havoc description_s2660;
    havoc price_s2660;
    havoc offerPrice_s2920;
    havoc inspector_s2920;
    havoc appraiser_s2920;
    havoc description_s2920;
    havoc price_s2920;
    havoc offerPrice_s3218;
    havoc inspector_s3218;
    havoc appraiser_s3218;
    havoc description_s3218;
    havoc price_s3218;
    havoc offerPrice_s3483;
    havoc inspector_s3483;
    havoc appraiser_s3483;
    havoc description_s3483;
    havoc price_s3483;
    havoc offerPrice_s3743;
    havoc inspector_s3743;
    havoc appraiser_s3743;
    havoc description_s3743;
    havoc price_s3743;
    havoc offerPrice_s4003;
    havoc inspector_s4003;
    havoc appraiser_s4003;
    havoc description_s4003;
    havoc price_s4003;
    havoc offerPrice_s4263;
    havoc inspector_s4263;
    havoc appraiser_s4263;
    havoc description_s4263;
    havoc price_s4263;
    havoc offerPrice_s4521;
    havoc inspector_s4521;
    havoc appraiser_s4521;
    havoc description_s4521;
    havoc price_s4521;
    havoc offerPrice_s4779;
    havoc inspector_s4779;
    havoc appraiser_s4779;
    havoc description_s4779;
    havoc price_s4779;
    havoc offerPrice_s5037;
    havoc inspector_s5037;
    havoc appraiser_s5037;
    havoc description_s5037;
    havoc price_s5037;
    havoc offerPrice_s5333;
    havoc inspector_s5333;
    havoc appraiser_s5333;
    havoc description_s5333;
    havoc price_s5333;
    havoc offerPrice_s5596;
    havoc inspector_s5596;
    havoc appraiser_s5596;
    havoc description_s5596;
    havoc price_s5596;
    havoc offerPrice_s5854;
    havoc inspector_s5854;
    havoc appraiser_s5854;
    havoc description_s5854;
    havoc price_s5854;
    havoc offerPrice_s6112;
    havoc inspector_s6112;
    havoc appraiser_s6112;
    havoc description_s6112;
    havoc price_s6112;
    havoc offerPrice_s6370;
    havoc inspector_s6370;
    havoc appraiser_s6370;
    havoc description_s6370;
    havoc price_s6370;
    havoc offerPrice_s6628;
    havoc inspector_s6628;
    havoc appraiser_s6628;
    havoc description_s6628;
    havoc price_s6628;
    havoc offerPrice_s6886;
    havoc inspector_s6886;
    havoc appraiser_s6886;
    havoc description_s6886;
    havoc price_s6886;
    havoc offerPrice_s7144;
    havoc inspector_s7144;
    havoc appraiser_s7144;
    havoc description_s7144;
    havoc price_s7144;
    havoc offerPrice_s7440;
    havoc inspector_s7440;
    havoc appraiser_s7440;
    havoc description_s7440;
    havoc price_s7440;
    havoc offerPrice_s7703;
    havoc inspector_s7703;
    havoc appraiser_s7703;
    havoc description_s7703;
    havoc price_s7703;
    havoc offerPrice_s7961;
    havoc inspector_s7961;
    havoc appraiser_s7961;
    havoc description_s7961;
    havoc price_s7961;
    havoc offerPrice_s8219;
    havoc inspector_s8219;
    havoc appraiser_s8219;
    havoc description_s8219;
    havoc price_s8219;
    havoc offerPrice_s8477;
    havoc inspector_s8477;
    havoc appraiser_s8477;
    havoc description_s8477;
    havoc price_s8477;
    havoc offerPrice_s8731;
    havoc inspector_s8731;
    havoc appraiser_s8731;
    havoc description_s8731;
    havoc price_s8731;
    havoc offerPrice_s8985;
    havoc inspector_s8985;
    havoc appraiser_s8985;
    havoc description_s8985;
    havoc price_s8985;
    havoc offerPrice_s9239;
    havoc inspector_s9239;
    havoc appraiser_s9239;
    havoc description_s9239;
    havoc price_s9239;
    havoc offerPrice_s9531;
    havoc inspector_s9531;
    havoc appraiser_s9531;
    havoc description_s9531;
    havoc price_s9531;
    havoc offerPrice_s9790;
    havoc inspector_s9790;
    havoc appraiser_s9790;
    havoc description_s9790;
    havoc price_s9790;
    havoc offerPrice_s10044;
    havoc inspector_s10044;
    havoc appraiser_s10044;
    havoc description_s10044;
    havoc price_s10044;
    havoc offerPrice_s10298;
    havoc inspector_s10298;
    havoc appraiser_s10298;
    havoc description_s10298;
    havoc price_s10298;
    havoc offerPrice_s10552;
    havoc inspector_s10552;
    havoc appraiser_s10552;
    havoc description_s10552;
    havoc price_s10552;
    havoc description_s10605;
    havoc price_s10605;
    havoc description_s10657;
    havoc price_s10657;
    havoc inspector_s10727;
    havoc appraiser_s10727;
    havoc offerPrice_s10727;
    havoc offerPrice_s10951;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != AssetTransfer;
    Alloc[msgsender_MSG] := true;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} choice == 50;
    call {:si_unique_call 95} validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s263, inspector_s263, appraiser_s263, description_s263, price_s263);
    return;

  anon51_Else:
    assume {:partition} choice != 50;
    goto anon52_Then, anon52_Else;

  anon52_Then:
    assume {:partition} choice == 49;
    call {:si_unique_call 96} validCombination0x0x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s525, inspector_s525, appraiser_s525, description_s525, price_s525);
    return;

  anon52_Else:
    assume {:partition} choice != 49;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} choice == 48;
    call {:si_unique_call 97} validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s787, inspector_s787, appraiser_s787, description_s787, price_s787);
    return;

  anon53_Else:
    assume {:partition} choice != 48;
    goto anon54_Then, anon54_Else;

  anon54_Then:
    assume {:partition} choice == 47;
    call {:si_unique_call 98} validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1087, inspector_s1087, appraiser_s1087, description_s1087, price_s1087);
    return;

  anon54_Else:
    assume {:partition} choice != 47;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} choice == 46;
    call {:si_unique_call 99} validCombination0x0x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1354, inspector_s1354, appraiser_s1354, description_s1354, price_s1354);
    return;

  anon55_Else:
    assume {:partition} choice != 46;
    goto anon56_Then, anon56_Else;

  anon56_Then:
    assume {:partition} choice == 45;
    call {:si_unique_call 100} validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1616, inspector_s1616, appraiser_s1616, description_s1616, price_s1616);
    return;

  anon56_Else:
    assume {:partition} choice != 45;
    goto anon57_Then, anon57_Else;

  anon57_Then:
    assume {:partition} choice == 44;
    call {:si_unique_call 101} validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1878, inspector_s1878, appraiser_s1878, description_s1878, price_s1878);
    return;

  anon57_Else:
    assume {:partition} choice != 44;
    goto anon58_Then, anon58_Else;

  anon58_Then:
    assume {:partition} choice == 43;
    call {:si_unique_call 102} validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2140, inspector_s2140, appraiser_s2140, description_s2140, price_s2140);
    return;

  anon58_Else:
    assume {:partition} choice != 43;
    goto anon59_Then, anon59_Else;

  anon59_Then:
    assume {:partition} choice == 42;
    call {:si_unique_call 103} validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2400, inspector_s2400, appraiser_s2400, description_s2400, price_s2400);
    return;

  anon59_Else:
    assume {:partition} choice != 42;
    goto anon60_Then, anon60_Else;

  anon60_Then:
    assume {:partition} choice == 41;
    call {:si_unique_call 104} validCombination0x1x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2660, inspector_s2660, appraiser_s2660, description_s2660, price_s2660);
    return;

  anon60_Else:
    assume {:partition} choice != 41;
    goto anon61_Then, anon61_Else;

  anon61_Then:
    assume {:partition} choice == 40;
    call {:si_unique_call 105} validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2920, inspector_s2920, appraiser_s2920, description_s2920, price_s2920);
    return;

  anon61_Else:
    assume {:partition} choice != 40;
    goto anon62_Then, anon62_Else;

  anon62_Then:
    assume {:partition} choice == 39;
    call {:si_unique_call 106} validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3218, inspector_s3218, appraiser_s3218, description_s3218, price_s3218);
    return;

  anon62_Else:
    assume {:partition} choice != 39;
    goto anon63_Then, anon63_Else;

  anon63_Then:
    assume {:partition} choice == 38;
    call {:si_unique_call 107} validCombination0x1x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3483, inspector_s3483, appraiser_s3483, description_s3483, price_s3483);
    return;

  anon63_Else:
    assume {:partition} choice != 38;
    goto anon64_Then, anon64_Else;

  anon64_Then:
    assume {:partition} choice == 37;
    call {:si_unique_call 108} validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3743, inspector_s3743, appraiser_s3743, description_s3743, price_s3743);
    return;

  anon64_Else:
    assume {:partition} choice != 37;
    goto anon65_Then, anon65_Else;

  anon65_Then:
    assume {:partition} choice == 36;
    call {:si_unique_call 109} validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4003, inspector_s4003, appraiser_s4003, description_s4003, price_s4003);
    return;

  anon65_Else:
    assume {:partition} choice != 36;
    goto anon66_Then, anon66_Else;

  anon66_Then:
    assume {:partition} choice == 35;
    call {:si_unique_call 110} validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4263, inspector_s4263, appraiser_s4263, description_s4263, price_s4263);
    return;

  anon66_Else:
    assume {:partition} choice != 35;
    goto anon67_Then, anon67_Else;

  anon67_Then:
    assume {:partition} choice == 34;
    call {:si_unique_call 111} validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4521, inspector_s4521, appraiser_s4521, description_s4521, price_s4521);
    return;

  anon67_Else:
    assume {:partition} choice != 34;
    goto anon68_Then, anon68_Else;

  anon68_Then:
    assume {:partition} choice == 33;
    call {:si_unique_call 112} validCombination0x2x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4779, inspector_s4779, appraiser_s4779, description_s4779, price_s4779);
    return;

  anon68_Else:
    assume {:partition} choice != 33;
    goto anon69_Then, anon69_Else;

  anon69_Then:
    assume {:partition} choice == 32;
    call {:si_unique_call 113} validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5037, inspector_s5037, appraiser_s5037, description_s5037, price_s5037);
    return;

  anon69_Else:
    assume {:partition} choice != 32;
    goto anon70_Then, anon70_Else;

  anon70_Then:
    assume {:partition} choice == 31;
    call {:si_unique_call 114} validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5333, inspector_s5333, appraiser_s5333, description_s5333, price_s5333);
    return;

  anon70_Else:
    assume {:partition} choice != 31;
    goto anon71_Then, anon71_Else;

  anon71_Then:
    assume {:partition} choice == 30;
    call {:si_unique_call 115} validCombination0x2x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5596, inspector_s5596, appraiser_s5596, description_s5596, price_s5596);
    return;

  anon71_Else:
    assume {:partition} choice != 30;
    goto anon72_Then, anon72_Else;

  anon72_Then:
    assume {:partition} choice == 29;
    call {:si_unique_call 116} validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5854, inspector_s5854, appraiser_s5854, description_s5854, price_s5854);
    return;

  anon72_Else:
    assume {:partition} choice != 29;
    goto anon73_Then, anon73_Else;

  anon73_Then:
    assume {:partition} choice == 28;
    call {:si_unique_call 117} validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6112, inspector_s6112, appraiser_s6112, description_s6112, price_s6112);
    return;

  anon73_Else:
    assume {:partition} choice != 28;
    goto anon74_Then, anon74_Else;

  anon74_Then:
    assume {:partition} choice == 27;
    call {:si_unique_call 118} validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6370, inspector_s6370, appraiser_s6370, description_s6370, price_s6370);
    return;

  anon74_Else:
    assume {:partition} choice != 27;
    goto anon75_Then, anon75_Else;

  anon75_Then:
    assume {:partition} choice == 26;
    call {:si_unique_call 119} validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6628, inspector_s6628, appraiser_s6628, description_s6628, price_s6628);
    return;

  anon75_Else:
    assume {:partition} choice != 26;
    goto anon76_Then, anon76_Else;

  anon76_Then:
    assume {:partition} choice == 25;
    call {:si_unique_call 120} validCombination0x3x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6886, inspector_s6886, appraiser_s6886, description_s6886, price_s6886);
    return;

  anon76_Else:
    assume {:partition} choice != 25;
    goto anon77_Then, anon77_Else;

  anon77_Then:
    assume {:partition} choice == 24;
    call {:si_unique_call 121} validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7144, inspector_s7144, appraiser_s7144, description_s7144, price_s7144);
    return;

  anon77_Else:
    assume {:partition} choice != 24;
    goto anon78_Then, anon78_Else;

  anon78_Then:
    assume {:partition} choice == 23;
    call {:si_unique_call 122} validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7440, inspector_s7440, appraiser_s7440, description_s7440, price_s7440);
    return;

  anon78_Else:
    assume {:partition} choice != 23;
    goto anon79_Then, anon79_Else;

  anon79_Then:
    assume {:partition} choice == 22;
    call {:si_unique_call 123} validCombination0x3x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7703, inspector_s7703, appraiser_s7703, description_s7703, price_s7703);
    return;

  anon79_Else:
    assume {:partition} choice != 22;
    goto anon80_Then, anon80_Else;

  anon80_Then:
    assume {:partition} choice == 21;
    call {:si_unique_call 124} validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7961, inspector_s7961, appraiser_s7961, description_s7961, price_s7961);
    return;

  anon80_Else:
    assume {:partition} choice != 21;
    goto anon81_Then, anon81_Else;

  anon81_Then:
    assume {:partition} choice == 20;
    call {:si_unique_call 125} validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8219, inspector_s8219, appraiser_s8219, description_s8219, price_s8219);
    return;

  anon81_Else:
    assume {:partition} choice != 20;
    goto anon82_Then, anon82_Else;

  anon82_Then:
    assume {:partition} choice == 19;
    call {:si_unique_call 126} validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8477, inspector_s8477, appraiser_s8477, description_s8477, price_s8477);
    return;

  anon82_Else:
    assume {:partition} choice != 19;
    goto anon83_Then, anon83_Else;

  anon83_Then:
    assume {:partition} choice == 18;
    call {:si_unique_call 127} validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8731, inspector_s8731, appraiser_s8731, description_s8731, price_s8731);
    return;

  anon83_Else:
    assume {:partition} choice != 18;
    goto anon84_Then, anon84_Else;

  anon84_Then:
    assume {:partition} choice == 17;
    call {:si_unique_call 128} validCombination0x4x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8985, inspector_s8985, appraiser_s8985, description_s8985, price_s8985);
    return;

  anon84_Else:
    assume {:partition} choice != 17;
    goto anon85_Then, anon85_Else;

  anon85_Then:
    assume {:partition} choice == 16;
    call {:si_unique_call 129} validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9239, inspector_s9239, appraiser_s9239, description_s9239, price_s9239);
    return;

  anon85_Else:
    assume {:partition} choice != 16;
    goto anon86_Then, anon86_Else;

  anon86_Then:
    assume {:partition} choice == 15;
    call {:si_unique_call 130} validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9531, inspector_s9531, appraiser_s9531, description_s9531, price_s9531);
    return;

  anon86_Else:
    assume {:partition} choice != 15;
    goto anon87_Then, anon87_Else;

  anon87_Then:
    assume {:partition} choice == 14;
    call {:si_unique_call 131} validCombination0x4x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9790, inspector_s9790, appraiser_s9790, description_s9790, price_s9790);
    return;

  anon87_Else:
    assume {:partition} choice != 14;
    goto anon88_Then, anon88_Else;

  anon88_Then:
    assume {:partition} choice == 13;
    call {:si_unique_call 132} validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10044, inspector_s10044, appraiser_s10044, description_s10044, price_s10044);
    return;

  anon88_Else:
    assume {:partition} choice != 13;
    goto anon89_Then, anon89_Else;

  anon89_Then:
    assume {:partition} choice == 12;
    call {:si_unique_call 133} validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10298, inspector_s10298, appraiser_s10298, description_s10298, price_s10298);
    return;

  anon89_Else:
    assume {:partition} choice != 12;
    goto anon90_Then, anon90_Else;

  anon90_Then:
    assume {:partition} choice == 11;
    call {:si_unique_call 134} validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10552, inspector_s10552, appraiser_s10552, description_s10552, price_s10552);
    return;

  anon90_Else:
    assume {:partition} choice != 11;
    goto anon91_Then, anon91_Else;

  anon91_Then:
    assume {:partition} choice == 10;
    call {:si_unique_call 135} Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon91_Else:
    assume {:partition} choice != 10;
    goto anon92_Then, anon92_Else;

  anon92_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 136} Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10657, price_s10657);
    return;

  anon92_Else:
    assume {:partition} choice != 9;
    goto anon93_Then, anon93_Else;

  anon93_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 137} MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s10727, appraiser_s10727, offerPrice_s10727);
    return;

  anon93_Else:
    assume {:partition} choice != 8;
    goto anon94_Then, anon94_Else;

  anon94_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 138} AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon94_Else:
    assume {:partition} choice != 7;
    goto anon95_Then, anon95_Else;

  anon95_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 139} Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon95_Else:
    assume {:partition} choice != 6;
    goto anon96_Then, anon96_Else;

  anon96_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 140} Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon96_Else:
    assume {:partition} choice != 5;
    goto anon97_Then, anon97_Else;

  anon97_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 141} ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10951);
    return;

  anon97_Else:
    assume {:partition} choice != 4;
    goto anon98_Then, anon98_Else;

  anon98_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 142} RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon98_Else:
    assume {:partition} choice != 3;
    goto anon99_Then, anon99_Else;

  anon99_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 143} MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon99_Else:
    assume {:partition} choice != 2;
    goto anon100_Then, anon100_Else;

  anon100_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 144} MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon100_Else:
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
  var description_s10605: int;
  var price_s10605: int;

  anon0:
    call {:si_unique_call 145} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == AssetTransfer;
    call {:si_unique_call 146} AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10605, price_s10605);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 147} CorralChoice_AssetTransfer(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


