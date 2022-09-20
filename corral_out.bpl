type Ref;

type ContractName;

const unique null: Ref;

const unique SimpleMarketplace: ContractName;

const unique Prueba: ContractName;

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

procedure {:public} prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s47: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s47: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s47);
    call {:si_unique_call 5} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume StateEnum_SimpleMarketplace[this] != 0 && StateEnum_SimpleMarketplace[this] == 1 && StateEnum_SimpleMarketplace[this] == 1;
    goto corral_source_split_3;

  corral_source_split_3:
    call {:si_unique_call 6} Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_4;

  corral_source_split_4:
    assert !(StateEnum_SimpleMarketplace[this] == 0 && StateEnum_SimpleMarketplace[this] != 1 && StateEnum_SimpleMarketplace[this] != 1);
    return;
}



var InstanceOwner_SimpleMarketplace: [Ref]Ref;

var Description_SimpleMarketplace: [Ref]int;

var AskingPrice_SimpleMarketplace: [Ref]int;

var StateEnum_SimpleMarketplace: [Ref]int;

var result_SimpleMarketplace: [Ref]Ref;

var InstanceBuyer_SimpleMarketplace: [Ref]Ref;

var OfferPrice_SimpleMarketplace: [Ref]int;

procedure SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref)
{
  var __var_1: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_SimpleMarketplace[this] := null;
    Description_SimpleMarketplace[this] := 1265563076;
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
    call {:si_unique_call 12} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s94);
    call {:si_unique_call 13} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s94);
    call {:si_unique_call 14} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s94);
    call {:si_unique_call 15} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_6;

  corral_source_split_6:
    goto corral_source_split_7;

  corral_source_split_7:
    InstanceOwner_SimpleMarketplace[this] := sender_s94;
    call {:si_unique_call 16} {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    AskingPrice_SimpleMarketplace[this] := price_s94;
    call {:si_unique_call 17} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    Description_SimpleMarketplace[this] := description_s94;
    call {:si_unique_call 18} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    StateEnum_SimpleMarketplace[this] := 0;
    return;
}



procedure {:constructor} {:public} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 19} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 20} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 21} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 22} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 23} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s94);
    call {:si_unique_call 24} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s94);
    call {:si_unique_call 25} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s94);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 27} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s94, price_s94, sender_s94);
    return;
}



procedure {:public} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s140: int);
  modifies InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s140: int)
{

  anon0:
    call {:si_unique_call 28} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 29} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 30} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 31} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 32} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s140);
    call {:si_unique_call 33} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_12;

  corral_source_split_12:
    goto corral_source_split_13;

  corral_source_split_13:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} offerPrice_s140 == 0;
    goto corral_source_split_15;

  corral_source_split_15:
    goto corral_source_split_16;

  corral_source_split_16:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} offerPrice_s140 != 0;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 0;
    goto corral_source_split_18;

  corral_source_split_18:
    goto corral_source_split_19;

  corral_source_split_19:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 0;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] == msgsender_MSG;
    goto corral_source_split_21;

  corral_source_split_21:
    goto corral_source_split_22;

  corral_source_split_22:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    goto anon6;

  anon6:
    InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
    call {:si_unique_call 34} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
    goto corral_source_split_24;

  corral_source_split_24:
    OfferPrice_SimpleMarketplace[this] := offerPrice_s140;
    call {:si_unique_call 35} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
    goto corral_source_split_25;

  corral_source_split_25:
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
    goto corral_source_split_27;

  corral_source_split_27:
    goto corral_source_split_28;

  corral_source_split_28:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    goto corral_source_split_33;

  corral_source_split_33:
    goto corral_source_split_34;

  corral_source_split_34:
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
    goto corral_source_split_36;

  corral_source_split_36:
    goto corral_source_split_37;

  corral_source_split_37:
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    goto corral_source_split_39;

  corral_source_split_39:
    goto corral_source_split_40;

  corral_source_split_40:
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} msgsender_MSG != InstanceOwner_SimpleMarketplace[this];
    goto corral_source_split_42;

  corral_source_split_42:
    goto corral_source_split_43;

  corral_source_split_43:
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} msgsender_MSG == InstanceOwner_SimpleMarketplace[this];
    goto anon4;

  anon4:
    StateEnum_SimpleMarketplace[this] := 2;
    return;
}



procedure recursion_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s216: int);



procedure {:public} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s310: Ref) returns (__ret_0_: bool);



implementation {:ForceInline} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s310: Ref) returns (__ret_0_: bool)
{
  var resultBool_s309: bool;
  var __var_2: bool;
  var __var_3: bool;
  var __var_4: bool;

  anon0:
    call {:si_unique_call 46} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 47} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 48} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 49} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 50} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_45;

  corral_source_split_45:
    goto corral_source_split_46;

  corral_source_split_46:
    resultBool_s309 := true;
    call {:si_unique_call 51} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto corral_source_split_47;

  corral_source_split_47:
    call {:si_unique_call 52} __var_2 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 1);
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} __var_2;
    goto corral_source_split_49;

  corral_source_split_49:
    goto corral_source_split_50;

  corral_source_split_50:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] == 0;
    call {:si_unique_call 53} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon3;

  anon10_Else:
    assume {:partition} !__var_2;
    goto corral_source_split_52;

  corral_source_split_52:
    goto corral_source_split_53;

  corral_source_split_53:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] != 0;
    call {:si_unique_call 54} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon3;

  anon3:
    call {:si_unique_call 55} __var_3 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 2);
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} __var_3;
    goto corral_source_split_55;

  corral_source_split_55:
    goto corral_source_split_56;

  corral_source_split_56:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] == 1;
    call {:si_unique_call 56} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon6;

  anon11_Else:
    assume {:partition} !__var_3;
    goto corral_source_split_58;

  corral_source_split_58:
    goto corral_source_split_59;

  corral_source_split_59:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] != 1;
    call {:si_unique_call 57} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon6;

  anon6:
    call {:si_unique_call 58} __var_4 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 3);
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} __var_4;
    goto corral_source_split_61;

  corral_source_split_61:
    goto corral_source_split_62;

  corral_source_split_62:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] == 1;
    call {:si_unique_call 59} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon9;

  anon12_Else:
    assume {:partition} !__var_4;
    goto corral_source_split_64;

  corral_source_split_64:
    goto corral_source_split_65;

  corral_source_split_65:
    resultBool_s309 := resultBool_s309 && StateEnum_SimpleMarketplace[this] != 1;
    call {:si_unique_call 60} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
    goto anon9;

  anon9:
    assume resultBool_s309;
    goto corral_source_split_67;

  corral_source_split_67:
    __ret_0_ := resultBool_s309;
    return;
}



procedure {:public} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s349: Ref, num_s349: int) returns (__ret_0_: bool);



implementation {:ForceInline} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s349: Ref, num_s349: int) returns (__ret_0_: bool)
{
  var arrayLength_s348: int;
  var i_s345: int;

  anon0:
    call {:si_unique_call 61} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 62} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 63} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 64} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 65} {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s349);
    call {:si_unique_call 66} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_69;

  corral_source_split_69:
    goto corral_source_split_70;

  corral_source_split_70:
    assume arrayLength_s348 >= 0;
    assume Length[combination_s349] >= 0;
    arrayLength_s348 := Length[combination_s349];
    call {:si_unique_call 67} {:cexpr "arrayLength"} boogie_si_record_sol2Bpl_int(arrayLength_s348);
    goto corral_source_split_71;

  corral_source_split_71:
    assume i_s345 >= 0;
    assume arrayLength_s348 >= 0;
    goto corral_source_split_72;

  corral_source_split_72:
    assume i_s345 >= 0;
    i_s345 := 0;
    call {:si_unique_call 68} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s345);
    goto anon5_LoopHead;

  anon5_LoopHead:
    goto anon5_LoopDone, anon5_LoopBody;

  anon5_LoopBody:
    assume {:partition} i_s345 < arrayLength_s348;
    goto corral_source_split_74;

  corral_source_split_74:
    goto corral_source_split_75;

  corral_source_split_75:
    assume i_s345 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} M_int_int[combination_s349][i_s345] == num_s349;
    goto corral_source_split_77;

  corral_source_split_77:
    goto corral_source_split_78;

  corral_source_split_78:
    __ret_0_ := true;
    return;

  anon6_Else:
    assume {:partition} M_int_int[combination_s349][i_s345] != num_s349;
    goto anon3;

  anon3:
    assume i_s345 >= 0;
    i_s345 := i_s345 + 1;
    call {:si_unique_call 69} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s345);
    assume i_s345 >= 0;
    goto anon5_LoopHead;

  anon5_LoopDone:
    assume {:partition} arrayLength_s348 <= i_s345;
    goto anon4;

  anon4:
    __ret_0_ := false;
    return;
}



procedure rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s394: int);



procedure rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s550: int);



procedure acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s641: int) returns (__ret_0_: bool);



procedure makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s689: int) returns (__ret_0_: bool);



procedure makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s735: int);



procedure Prueba_Prueba_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure Prueba_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



var result_Prueba: [Ref]Ref;

procedure {:public} recursion_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s758: int);



procedure {:public} combinations_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s912: Ref, left_s912: Ref, number_s912: int) returns (__ret_0_: Ref);



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



procedure BoogieEntry_Prueba();



procedure CorralChoice_SimpleMarketplace(this: Ref);
  modifies now, Alloc, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation CorralChoice_SimpleMarketplace(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var offerPrice_s47: int;
  var description_s94: int;
  var price_s94: int;
  var sender_s94: Ref;
  var offerPrice_s140: int;
  var combination_s310: Ref;
  var __ret_0_checkPreconditions: bool;
  var combination_s349: Ref;
  var num_s349: int;
  var __ret_0_ifPresent: bool;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc offerPrice_s47;
    havoc description_s94;
    havoc price_s94;
    havoc sender_s94;
    havoc offerPrice_s140;
    havoc combination_s310;
    havoc __ret_0_checkPreconditions;
    havoc combination_s349;
    havoc num_s349;
    havoc __ret_0_ifPresent;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != SimpleMarketplace;
    assume DType[msgsender_MSG] != Prueba;
    Alloc[msgsender_MSG] := true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 70} prueba_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s47);
    return;

  anon7_Else:
    assume {:partition} choice != 6;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 71} MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s140);
    return;

  anon8_Else:
    assume {:partition} choice != 5;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 72} Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon9_Else:
    assume {:partition} choice != 4;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 73} AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon10_Else:
    assume {:partition} choice != 3;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 74} combination_s310 := FreshRefGenerator();
    call {:si_unique_call 75} __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310);
    return;

  anon11_Else:
    assume {:partition} choice != 2;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 76} combination_s349 := FreshRefGenerator();
    call {:si_unique_call 77} __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s349, num_s349);
    return;

  anon12_Else:
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
  var description_s94: int;
  var price_s94: int;
  var sender_s94: Ref;

  anon0:
    call {:si_unique_call 78} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == SimpleMarketplace;
    call {:si_unique_call 79} SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s94, price_s94, sender_s94);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 80} CorralChoice_SimpleMarketplace(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}



procedure CorralChoice_Prueba(this: Ref);



procedure CorralEntry_Prueba();


