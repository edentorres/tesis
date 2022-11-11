type Ref;

type ContractName;

const unique null: Ref;

const unique SimpleMarketplace: ContractName;

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

var M_int_int: [Ref][int]int;

var M_int_Ref: [Ref][int]Ref;

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

procedure {:public} validCombination0x0x1_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s62: int);



procedure {:public} validCombination0x0x2_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s122: int);



procedure {:public} validCombination0x1x1_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s180: int);



procedure {:public} validCombination0x1x2_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s238: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} validCombination0x1x2_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s238: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s238);
    call {:si_unique_call 5} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume !(StateEnum_SimpleMarketplace[this] == 0) && StateEnum_SimpleMarketplace[this] == 1 && StateEnum_SimpleMarketplace[this] == 1;
    goto corral_source_split_3;

  corral_source_split_3:
    assume msgsender_MSG == InstanceOwner_SimpleMarketplace[this];
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 6} Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(StateEnum_SimpleMarketplace[this] == 0 && !(StateEnum_SimpleMarketplace[this] == 1) && !(StateEnum_SimpleMarketplace[this] == 1));
    return;
}



procedure {:public} validCombination0x2x1_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s294: int);



procedure {:public} validCombination0x2x2_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s350: int);



var InstanceOwner_SimpleMarketplace: [Ref]Ref;

var Description_SimpleMarketplace: [Ref]int;

var AskingPrice_SimpleMarketplace: [Ref]int;

var StateEnum_SimpleMarketplace: [Ref]int;

var result_SimpleMarketplace: [Ref]Ref;

var InstanceBuyer_SimpleMarketplace: [Ref]Ref;

var OfferPrice_SimpleMarketplace: [Ref]int;

procedure SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s397: int, price_s397: int, sender_s397: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s397: int, price_s397: int, sender_s397: Ref)
{
  var __var_1: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_SimpleMarketplace[this] := null;
    Description_SimpleMarketplace[this] := -1394378823;
    AskingPrice_SimpleMarketplace[this] := 0;
    call {:si_unique_call 7} __var_1 := FreshRefGenerator();
    result_SimpleMarketplace[this] := __var_1;
    assume Length[result_SimpleMarketplace[this]] == 0;
    InstanceBuyer_SimpleMarketplace[this] := null;
    OfferPrice_SimpleMarketplace[this] := 0;
    call {:si_unique_call 8} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 9} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 10} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 11} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 12} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s397);
    call {:si_unique_call 13} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s397);
    call {:si_unique_call 14} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s397);
    call {:si_unique_call 15} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    InstanceOwner_SimpleMarketplace[this] := sender_s397;
    call {:si_unique_call 16} {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    AskingPrice_SimpleMarketplace[this] := price_s397;
    call {:si_unique_call 17} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    Description_SimpleMarketplace[this] := description_s397;
    call {:si_unique_call 18} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    StateEnum_SimpleMarketplace[this] := 0;
    return;
}



procedure {:constructor} {:public} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s397: int, price_s397: int, sender_s397: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s397: int, price_s397: int, sender_s397: Ref)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 19} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 20} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 21} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 22} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 23} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s397);
    call {:si_unique_call 24} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s397);
    call {:si_unique_call 25} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s397);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s397, price_s397, sender_s397);
    return;
}



procedure {:public} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s443: int);
  modifies InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s443: int)
{

  anon0:
    call {:si_unique_call 28} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 29} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 30} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 31} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 32} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s443);
    call {:si_unique_call 33} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_13;

  corral_source_split_13:
    goto corral_source_split_14;

  corral_source_split_14:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} offerPrice_s443 == 0;
    goto corral_source_split_16;

  corral_source_split_16:
    goto corral_source_split_17;

  corral_source_split_17:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} offerPrice_s443 != 0;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 0;
    goto corral_source_split_19;

  corral_source_split_19:
    goto corral_source_split_20;

  corral_source_split_20:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 0;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] == msgsender_MSG;
    goto corral_source_split_22;

  corral_source_split_22:
    goto corral_source_split_23;

  corral_source_split_23:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    goto anon6;

  anon6:
    InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
    call {:si_unique_call 34} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
    goto corral_source_split_25;

  corral_source_split_25:
    OfferPrice_SimpleMarketplace[this] := offerPrice_s443;
    call {:si_unique_call 35} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
    goto corral_source_split_26;

  corral_source_split_26:
    StateEnum_SimpleMarketplace[this] := 1;
    return;
}



procedure {:public} Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 36} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 37} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 38} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 39} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 40} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    goto corral_source_split_31;

  corral_source_split_31:
    goto corral_source_split_32;

  corral_source_split_32:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    goto corral_source_split_34;

  corral_source_split_34:
    goto corral_source_split_35;

  corral_source_split_35:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] == msgsender_MSG;
    goto anon4;

  anon4:
    StateEnum_SimpleMarketplace[this] := 0;
    return;
}



procedure {:public} AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 41} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 42} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 43} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 44} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 45} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_37;

  corral_source_split_37:
    goto corral_source_split_38;

  corral_source_split_38:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    goto corral_source_split_40;

  corral_source_split_40:
    goto corral_source_split_41;

  corral_source_split_41:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} msgsender_MSG != InstanceOwner_SimpleMarketplace[this];
    goto corral_source_split_43;

  corral_source_split_43:
    goto corral_source_split_44;

  corral_source_split_44:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} msgsender_MSG == InstanceOwner_SimpleMarketplace[this];
    goto anon4;

  anon4:
    StateEnum_SimpleMarketplace[this] := 2;
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



const {:existential true} HoudiniB1_SimpleMarketplace: bool;

const {:existential true} HoudiniB2_SimpleMarketplace: bool;

const {:existential true} HoudiniB3_SimpleMarketplace: bool;

const {:existential true} HoudiniB4_SimpleMarketplace: bool;

const {:existential true} HoudiniB5_SimpleMarketplace: bool;

const {:existential true} HoudiniB6_SimpleMarketplace: bool;

procedure BoogieEntry_SimpleMarketplace();



procedure CorralChoice_SimpleMarketplace(this: Ref);
  modifies now, Alloc, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation CorralChoice_SimpleMarketplace(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var offerPrice_s62: int;
  var offerPrice_s122: int;
  var offerPrice_s180: int;
  var offerPrice_s238: int;
  var offerPrice_s294: int;
  var offerPrice_s350: int;
  var description_s397: int;
  var price_s397: int;
  var sender_s397: Ref;
  var offerPrice_s443: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s62;
    havoc offerPrice_s122;
    havoc offerPrice_s180;
    havoc offerPrice_s238;
    havoc offerPrice_s294;
    havoc offerPrice_s350;
    havoc description_s397;
    havoc price_s397;
    havoc sender_s397;
    havoc offerPrice_s443;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SimpleMarketplace;
    Alloc[msgsender_MSG] := true;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 46} validCombination0x0x1_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s62);
    return;

  anon10_Else:
    assume {:partition} choice != 9;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 47} validCombination0x0x2_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s122);
    return;

  anon11_Else:
    assume {:partition} choice != 8;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 48} validCombination0x1x1_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s180);
    return;

  anon12_Else:
    assume {:partition} choice != 7;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 49} validCombination0x1x2_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s238);
    return;

  anon13_Else:
    assume {:partition} choice != 6;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 50} validCombination0x2x1_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s294);
    return;

  anon14_Else:
    assume {:partition} choice != 5;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 51} validCombination0x2x2_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s350);
    return;

  anon15_Else:
    assume {:partition} choice != 4;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 52} MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s443);
    return;

  anon16_Else:
    assume {:partition} choice != 3;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 53} Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon17_Else:
    assume {:partition} choice != 2;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 54} AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon18_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_SimpleMarketplace();
  modifies Alloc, Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace, now;



implementation CorralEntry_SimpleMarketplace()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var description_s397: int;
  var price_s397: int;
  var sender_s397: Ref;

  anon0:
    call {:si_unique_call 55} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == SimpleMarketplace;
    call {:si_unique_call 56} SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s397, price_s397, sender_s397);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 57} CorralChoice_SimpleMarketplace(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


