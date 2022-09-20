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

var InstanceOwner_SimpleMarketplace: [Ref]Ref;

var Description_SimpleMarketplace: [Ref]int;

var AskingPrice_SimpleMarketplace: [Ref]int;

var StateEnum_SimpleMarketplace: [Ref]int;

var result_SimpleMarketplace: [Ref]Ref;

var InstanceBuyer_SimpleMarketplace: [Ref]Ref;

var OfferPrice_SimpleMarketplace: [Ref]int;

procedure SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref)
{
  var __var_1: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    InstanceOwner_SimpleMarketplace[this] := null;
    Description_SimpleMarketplace[this] := 316497738;
    AskingPrice_SimpleMarketplace[this] := 0;
    call {:si_unique_call 0} __var_1 := FreshRefGenerator();
    result_SimpleMarketplace[this] := __var_1;
    assume Length[result_SimpleMarketplace[this]] == 0;
    InstanceBuyer_SimpleMarketplace[this] := null;
    OfferPrice_SimpleMarketplace[this] := 0;
    call {:si_unique_call 1} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 2} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 3} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 4} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 5} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s49);
    call {:si_unique_call 6} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s49);
    call {:si_unique_call 7} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s49);
    call {:si_unique_call 8} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 23} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 24} true;
    InstanceOwner_SimpleMarketplace[this] := sender_s49;
    call {:si_unique_call 9} {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 25} true;
    AskingPrice_SimpleMarketplace[this] := price_s49;
    call {:si_unique_call 10} {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 26} true;
    Description_SimpleMarketplace[this] := description_s49;
    call {:si_unique_call 11} {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 27} true;
    StateEnum_SimpleMarketplace[this] := 0;
    return;
}



procedure {:constructor} {:public} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref);
  modifies Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, Alloc, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 12} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 13} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 14} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 15} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 16} {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s49);
    call {:si_unique_call 17} {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s49);
    call {:si_unique_call 18} {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s49);
    call {:si_unique_call 19} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 20} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s49, price_s49, sender_s49);
    return;
}



procedure {:public} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s95: int);
  modifies InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace;



implementation {:ForceInline} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s95: int)
{

  anon0:
    call {:si_unique_call 21} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 22} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 23} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 24} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 25} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s95);
    call {:si_unique_call 26} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 31} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 32} true;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} offerPrice_s95 == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 33} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 34} true;
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} offerPrice_s95 != 0;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 37} true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 38} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 39} true;
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 0;
    goto anon4;

  anon4:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 42} true;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] == msgsender_MSG;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 43} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 44} true;
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    goto anon6;

  anon6:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 47} true;
    InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
    call {:si_unique_call 27} {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 48} true;
    OfferPrice_SimpleMarketplace[this] := offerPrice_s95;
    call {:si_unique_call 28} {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 49} true;
    StateEnum_SimpleMarketplace[this] := 1;
    return;
}



procedure {:public} Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 29} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 30} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 31} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 32} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 33} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 53} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 54} true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 55} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 56} true;
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 59} true;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] != msgsender_MSG;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 60} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 61} true;
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} InstanceOwner_SimpleMarketplace[this] == msgsender_MSG;
    goto anon4;

  anon4:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 65} true;
    StateEnum_SimpleMarketplace[this] := 0;
    return;
}



procedure {:public} AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies StateEnum_SimpleMarketplace;



implementation {:ForceInline} AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 69} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 70} true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} StateEnum_SimpleMarketplace[this] != 1;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 71} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 72} true;
    assume false;
    goto anon2;

  anon5_Else:
    assume {:partition} StateEnum_SimpleMarketplace[this] == 1;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 75} true;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} msgsender_MSG != InstanceOwner_SimpleMarketplace[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 76} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 77} true;
    assume false;
    goto anon4;

  anon6_Else:
    assume {:partition} msgsender_MSG == InstanceOwner_SimpleMarketplace[this];
    goto anon4;

  anon4:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 80} true;
    StateEnum_SimpleMarketplace[this] := 2;
    return;
}



procedure {:public} SimpleMarket_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s535: int);
  modifies Balance, Alloc, Length, M_int_int, result_SimpleMarketplace, M_int_Ref;



implementation {:ForceInline} SimpleMarket_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s535: int)
{
  var states_s534: Ref;
  var __var_2: Ref;
  var states2_s534: Ref;
  var __var_3: Ref;
  var countComnbinations_s534: int;
  var __var_4: Ref;
  var __var_5: Ref;
  var state0_s534: Ref;
  var __var_6: Ref;
  var state1_s534: Ref;
  var __var_7: Ref;
  var state2_s534: Ref;
  var __var_8: Ref;
  var state3_s534: Ref;
  var __var_9: Ref;
  var state4_s534: Ref;
  var __var_10: Ref;
  var state5_s534: Ref;
  var __var_11: Ref;
  var state6_s534: Ref;
  var __var_12: Ref;
  var state7_s534: Ref;
  var __var_13: Ref;
  var p_s534: Ref;
  var __var_14: int;
  var __var_15: Ref;
  var __var_16: int;
  var __var_17: int;

  anon0:
    call {:si_unique_call 39} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 40} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 41} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 42} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 43} {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s535);
    call {:si_unique_call 44} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 99} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 101} true;
    call {:si_unique_call 45} __var_2 := FreshRefGenerator();
    Length[__var_2] := 3;
    states_s534 := __var_2;
    states_s534 := states_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 102} true;
    M_int_int[states_s534][0] := 1;
    call {:si_unique_call 46} {:cexpr "states[0]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 103} true;
    M_int_int[states_s534][1] := 2;
    call {:si_unique_call 47} {:cexpr "states[1]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 104} true;
    M_int_int[states_s534][2] := 3;
    call {:si_unique_call 48} {:cexpr "states[2]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 106} true;
    call {:si_unique_call 49} __var_3 := FreshRefGenerator();
    Length[__var_3] := 3;
    states2_s534 := __var_3;
    states2_s534 := states2_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 107} true;
    M_int_int[states2_s534][0] := 1;
    call {:si_unique_call 50} {:cexpr "states2[0]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 108} true;
    M_int_int[states2_s534][1] := 2;
    call {:si_unique_call 51} {:cexpr "states2[1]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 109} true;
    M_int_int[states2_s534][2] := 3;
    call {:si_unique_call 52} {:cexpr "states2[2]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 111} true;
    assume countComnbinations_s534 >= 0;
    countComnbinations_s534 := 8;
    call {:si_unique_call 53} {:cexpr "countComnbinations"} boogie_si_record_sol2Bpl_int(countComnbinations_s534);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 114} true;
    call {:si_unique_call 54} __var_5 := FreshRefGenerator();
    assume countComnbinations_s534 >= 0;
    Length[__var_5] := countComnbinations_s534;
    __var_4 := __var_5;
    result_SimpleMarketplace[this] := __var_4;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 119} true;
    call {:si_unique_call 55} __var_6 := FreshRefGenerator();
    Length[__var_6] := 3;
    state0_s534 := __var_6;
    state0_s534 := state0_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 120} true;
    M_int_int[state0_s534][0] := 0;
    call {:si_unique_call 56} {:cexpr "state0[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state0_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 121} true;
    M_int_int[state0_s534][1] := 0;
    call {:si_unique_call 57} {:cexpr "state0[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state0_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 122} true;
    M_int_int[state0_s534][2] := 0;
    call {:si_unique_call 58} {:cexpr "state0[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state0_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 124} true;
    call {:si_unique_call 59} __var_7 := FreshRefGenerator();
    Length[__var_7] := 3;
    state1_s534 := __var_7;
    state1_s534 := state1_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 125} true;
    M_int_int[state1_s534][0] := 1;
    call {:si_unique_call 60} {:cexpr "state1[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state1_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 126} true;
    M_int_int[state1_s534][1] := 0;
    call {:si_unique_call 61} {:cexpr "state1[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state1_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 127} true;
    M_int_int[state1_s534][2] := 0;
    call {:si_unique_call 62} {:cexpr "state1[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state1_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 129} true;
    call {:si_unique_call 63} __var_8 := FreshRefGenerator();
    Length[__var_8] := 3;
    state2_s534 := __var_8;
    state2_s534 := state2_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 130} true;
    M_int_int[state2_s534][0] := 1;
    call {:si_unique_call 64} {:cexpr "state2[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state2_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 131} true;
    M_int_int[state2_s534][1] := 2;
    call {:si_unique_call 65} {:cexpr "state2[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state2_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 132} true;
    M_int_int[state2_s534][2] := 0;
    call {:si_unique_call 66} {:cexpr "state2[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state2_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 134} true;
    call {:si_unique_call 67} __var_9 := FreshRefGenerator();
    Length[__var_9] := 3;
    state3_s534 := __var_9;
    state3_s534 := state3_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 135} true;
    M_int_int[state3_s534][0] := 0;
    call {:si_unique_call 68} {:cexpr "state3[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state3_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 136} true;
    M_int_int[state3_s534][1] := 2;
    call {:si_unique_call 69} {:cexpr "state3[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state3_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 137} true;
    M_int_int[state3_s534][2] := 0;
    call {:si_unique_call 70} {:cexpr "state3[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state3_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 139} true;
    call {:si_unique_call 71} __var_10 := FreshRefGenerator();
    Length[__var_10] := 3;
    state4_s534 := __var_10;
    state4_s534 := state4_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 140} true;
    M_int_int[state4_s534][0] := 1;
    call {:si_unique_call 72} {:cexpr "state4[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state4_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 141} true;
    M_int_int[state4_s534][1] := 0;
    call {:si_unique_call 73} {:cexpr "state4[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state4_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 142} true;
    M_int_int[state4_s534][2] := 3;
    call {:si_unique_call 74} {:cexpr "state4[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state4_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 144} true;
    call {:si_unique_call 75} __var_11 := FreshRefGenerator();
    Length[__var_11] := 3;
    state5_s534 := __var_11;
    state5_s534 := state5_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 145} true;
    M_int_int[state5_s534][0] := 1;
    call {:si_unique_call 76} {:cexpr "state5[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state5_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 146} true;
    M_int_int[state5_s534][1] := 2;
    call {:si_unique_call 77} {:cexpr "state5[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state5_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 147} true;
    M_int_int[state5_s534][2] := 3;
    call {:si_unique_call 78} {:cexpr "state5[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state5_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 149} true;
    call {:si_unique_call 79} __var_12 := FreshRefGenerator();
    Length[__var_12] := 3;
    state6_s534 := __var_12;
    state6_s534 := state6_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 150} true;
    M_int_int[state6_s534][0] := 0;
    call {:si_unique_call 80} {:cexpr "state6[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state6_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 151} true;
    M_int_int[state6_s534][1] := 2;
    call {:si_unique_call 81} {:cexpr "state6[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state6_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 152} true;
    M_int_int[state6_s534][2] := 3;
    call {:si_unique_call 82} {:cexpr "state6[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state6_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 154} true;
    call {:si_unique_call 83} __var_13 := FreshRefGenerator();
    Length[__var_13] := 3;
    state7_s534 := __var_13;
    state7_s534 := state7_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 155} true;
    M_int_int[state7_s534][0] := 0;
    call {:si_unique_call 84} {:cexpr "state7[0]"} boogie_si_record_sol2Bpl_int(M_int_int[state7_s534][0]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 156} true;
    M_int_int[state7_s534][1] := 0;
    call {:si_unique_call 85} {:cexpr "state7[1]"} boogie_si_record_sol2Bpl_int(M_int_int[state7_s534][1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 157} true;
    M_int_int[state7_s534][2] := 3;
    call {:si_unique_call 86} {:cexpr "state7[2]"} boogie_si_record_sol2Bpl_int(M_int_int[state7_s534][2]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 160} true;
    M_int_Ref[result_SimpleMarketplace[this]][0] := state0_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 161} true;
    M_int_Ref[result_SimpleMarketplace[this]][1] := state1_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 162} true;
    M_int_Ref[result_SimpleMarketplace[this]][2] := state2_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 163} true;
    M_int_Ref[result_SimpleMarketplace[this]][3] := state3_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 164} true;
    M_int_Ref[result_SimpleMarketplace[this]][4] := state4_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 165} true;
    M_int_Ref[result_SimpleMarketplace[this]][5] := state5_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 166} true;
    M_int_Ref[result_SimpleMarketplace[this]][6] := state6_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 167} true;
    M_int_Ref[result_SimpleMarketplace[this]][7] := state7_s534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 173} true;
    assume DType[0] == Prueba;
    p_s534 := 0;
    call {:si_unique_call 87} {:cexpr "p"} boogie_si_record_sol2Bpl_ref(p_s534);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 174} true;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[p_s534] == Prueba;
    call {:si_unique_call 88} recursion_Prueba(p_s534, this, __var_14, 0);
    goto anon4;

  anon9_Else:
    assume {:partition} DType[p_s534] != Prueba;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} DType[p_s534] == SimpleMarketplace;
    call {:si_unique_call 89} recursion_SimpleMarketplace(p_s534, this, __var_14, 0);
    goto anon4;

  anon10_Else:
    assume {:partition} DType[p_s534] != SimpleMarketplace;
    assume false;
    goto anon4;

  anon4:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 175} true;
    assert false;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 176} true;
    assume __var_17 >= 0;
    __var_17 := 0;
    assume 0 >= 0;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} DType[p_s534] == Prueba;
    call {:si_unique_call 90} __var_15 := combinations_Prueba(p_s534, this, __var_16, states_s534, states2_s534, 0);
    goto anon8;

  anon11_Else:
    assume {:partition} DType[p_s534] != Prueba;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} DType[p_s534] == SimpleMarketplace;
    call {:si_unique_call 91} __var_15 := combinations_SimpleMarketplace(p_s534, this, __var_16, states_s534, states2_s534, 0);
    goto anon8;

  anon12_Else:
    assume {:partition} DType[p_s534] != SimpleMarketplace;
    assume false;
    goto anon8;

  anon8:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 177} true;
    assert false;
    return;
}



procedure recursion_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s557: int);



implementation {:ForceInline} recursion_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s557: int)
{

  anon0:
    call {:si_unique_call 92} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 93} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 94} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 95} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 96} {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s557);
    call {:si_unique_call 97} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 208} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 209} true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} num_s557 == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 209} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 210} true;
    assert false;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 211} true;
    return;

  anon5_Else:
    assume {:partition} num_s557 != 0;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 213} true;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == SimpleMarketplace;
    call {:si_unique_call 98} recursion_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, num_s557 - 1);
    return;

  anon6_Else:
    assume {:partition} DType[this] != SimpleMarketplace;
    assume false;
    return;
}



procedure combinations_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s711: Ref, left_s711: Ref, number_s711: int) returns (__ret_0_: Ref);
  modifies Alloc, Length, M_int_int, M_int_Ref;



implementation {:ForceInline} combinations_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s711: Ref, left_s711: Ref, number_s711: int) returns (__ret_0_: Ref)
{
  var count_s710: int;
  var i_s659: int;
  var partialResult_s658: Ref;
  var __var_18: Ref;
  var y_s635: int;
  var leftNew_s710: Ref;
  var __var_19: Ref;
  var z_s695: int;
  var numberNew_s710: int;
  var __var_20: Ref;
  var __var_21: int;

  anon0:
    call {:si_unique_call 99} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 100} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 101} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 102} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 103} {:cexpr "number"} boogie_si_record_sol2Bpl_int(number_s711);
    call {:si_unique_call 104} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 216} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 220} true;
    assume Length[left_s711] >= 0;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} Length[left_s711] == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 220} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 221} true;
    __ret_0_ := result_SimpleMarketplace[this];
    return;

  anon12_Else:
    assume {:partition} Length[left_s711] != 0;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 223} true;
    assume count_s710 >= 0;
    assume number_s711 >= 0;
    count_s710 := number_s711;
    call {:si_unique_call 105} {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_s710);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 224} true;
    assume i_s659 >= 0;
    assume number_s711 >= 0;
    assume number_s711 >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 224} true;
    assume i_s659 >= 0;
    i_s659 := 0;
    call {:si_unique_call 106} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s659);
    goto anon13_LoopHead;

  anon13_LoopHead:
    goto anon13_LoopDone, anon13_LoopBody;

  anon13_LoopBody:
    assume {:partition} i_s659 < number_s711;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 224} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 225} true;
    call {:si_unique_call 107} __var_18 := FreshRefGenerator();
    assume Length[list_s711] >= 0;
    Length[__var_18] := Length[list_s711];
    partialResult_s658 := __var_18;
    partialResult_s658 := partialResult_s658;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 226} true;
    assume i_s659 >= 0;
    assume number_s711 >= 0;
    assume number_s711 >= 0;
    assume number_s711 - 1 >= 0;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} i_s659 != number_s711 - 1;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 226} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} true;
    assume y_s635 >= 0;
    assume number_s711 >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} true;
    assume y_s635 >= 0;
    y_s635 := 0;
    call {:si_unique_call 108} {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s635);
    goto anon15_LoopHead;

  anon15_LoopHead:
    goto anon15_LoopDone, anon15_LoopBody;

  anon15_LoopBody:
    assume {:partition} y_s635 < number_s711;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 228} true;
    assume y_s635 >= 0;
    assume y_s635 >= 0;
    assume i_s659 >= 0;
    M_int_int[partialResult_s658][y_s635] := M_int_int[M_int_Ref[result_SimpleMarketplace[this]][i_s659]][y_s635];
    call {:si_unique_call 109} {:cexpr "partialResult[y]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s658][y_s635]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} true;
    assume y_s635 >= 0;
    y_s635 := y_s635 + 1;
    call {:si_unique_call 110} {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s635);
    assume y_s635 >= 0;
    goto anon15_LoopHead;

  anon15_LoopDone:
    assume {:partition} number_s711 <= y_s635;
    goto anon6;

  anon14_Else:
    assume {:partition} i_s659 == number_s711 - 1;
    goto anon6;

  anon6:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 231} true;
    assume number_s711 >= 0;
    M_int_int[partialResult_s658][number_s711] := M_int_int[left_s711][0];
    call {:si_unique_call 111} {:cexpr "partialResult[number]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s658][number_s711]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 232} true;
    assume number_s711 >= 0;
    assume number_s711 >= 0;
    assume number_s711 - 1 >= 0;
    assume i_s659 >= 0;
    assume number_s711 - 1 + i_s659 >= 0;
    M_int_Ref[result_SimpleMarketplace[this]][number_s711 - 1 + i_s659] := partialResult_s658;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 224} true;
    assume i_s659 >= 0;
    i_s659 := i_s659 + 1;
    call {:si_unique_call 112} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s659);
    assume i_s659 >= 0;
    goto anon13_LoopHead;

  anon13_LoopDone:
    assume {:partition} number_s711 <= i_s659;
    goto anon7;

  anon7:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 234} true;
    call {:si_unique_call 113} __var_19 := FreshRefGenerator();
    assume Length[left_s711] >= 0;
    assume Length[left_s711] - 1 >= 0;
    Length[__var_19] := Length[left_s711] - 1;
    leftNew_s710 := __var_19;
    leftNew_s710 := leftNew_s710;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 236} true;
    assume z_s695 >= 0;
    assume Length[left_s711] >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 236} true;
    assume z_s695 >= 0;
    z_s695 := 1;
    call {:si_unique_call 114} {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s695);
    goto anon16_LoopHead;

  anon16_LoopHead:
    goto anon16_LoopDone, anon16_LoopBody;

  anon16_LoopBody:
    assume {:partition} z_s695 < Length[left_s711];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 236} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 237} true;
    assume z_s695 >= 0;
    assume z_s695 - 1 >= 0;
    assume z_s695 >= 0;
    M_int_int[leftNew_s710][z_s695 - 1] := M_int_int[left_s711][z_s695];
    call {:si_unique_call 115} {:cexpr "leftNew[z - 1]"} boogie_si_record_sol2Bpl_int(M_int_int[leftNew_s710][z_s695 - 1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 236} true;
    assume z_s695 >= 0;
    z_s695 := z_s695 + 1;
    call {:si_unique_call 116} {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s695);
    assume z_s695 >= 0;
    goto anon16_LoopHead;

  anon16_LoopDone:
    assume {:partition} Length[left_s711] <= z_s695;
    goto anon9;

  anon9:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 240} true;
    assume numberNew_s710 >= 0;
    assume number_s711 >= 0;
    assume number_s711 + 1 >= 0;
    numberNew_s710 := number_s711 + 1;
    call {:si_unique_call 117} {:cexpr "numberNew"} boogie_si_record_sol2Bpl_int(numberNew_s710);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 242} true;
    assume __var_21 >= 0;
    assume numberNew_s710 >= 0;
    __var_21 := numberNew_s710;
    assume numberNew_s710 >= 0;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} DType[this] == SimpleMarketplace;
    call {:si_unique_call 118} __var_20 := combinations_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, list_s711, leftNew_s710, numberNew_s710);
    return;

  anon17_Else:
    assume {:partition} DType[this] != SimpleMarketplace;
    assume false;
    return;
}



procedure {:public} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s805: Ref) returns (__ret_0_: bool);



implementation {:ForceInline} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s805: Ref) returns (__ret_0_: bool)
{
  var resultBool_s804: bool;
  var __var_22: bool;
  var __var_23: bool;
  var __var_24: bool;

  anon0:
    call {:si_unique_call 119} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 120} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 121} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 122} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 123} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 245} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 246} true;
    resultBool_s804 := true;
    call {:si_unique_call 124} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 247} true;
    call {:si_unique_call 125} __var_22 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s805, 1);
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} __var_22;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 247} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 248} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] == 0;
    call {:si_unique_call 126} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon3;

  anon10_Else:
    assume {:partition} !__var_22;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 249} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 250} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] != 0;
    call {:si_unique_call 127} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon3;

  anon3:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 253} true;
    call {:si_unique_call 128} __var_23 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s805, 2);
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} __var_23;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 253} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 254} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] == 1;
    call {:si_unique_call 129} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon6;

  anon11_Else:
    assume {:partition} !__var_23;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 255} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 256} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] != 1;
    call {:si_unique_call 130} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon6;

  anon6:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 259} true;
    call {:si_unique_call 131} __var_24 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s805, 3);
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} __var_24;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 259} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 260} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] == 1;
    call {:si_unique_call 132} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon9;

  anon12_Else:
    assume {:partition} !__var_24;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 261} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 262} true;
    resultBool_s804 := resultBool_s804 && StateEnum_SimpleMarketplace[this] != 1;
    call {:si_unique_call 133} {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s804);
    goto anon9;

  anon9:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 264} true;
    assume resultBool_s804;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 265} true;
    __ret_0_ := resultBool_s804;
    return;
}



procedure {:public} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s844: Ref, num_s844: int) returns (__ret_0_: bool);



implementation {:ForceInline} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s844: Ref, num_s844: int) returns (__ret_0_: bool)
{
  var arrayLength_s843: int;
  var i_s840: int;

  anon0:
    call {:si_unique_call 134} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 135} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 136} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 137} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 138} {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s844);
    call {:si_unique_call 139} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 268} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 269} true;
    assume arrayLength_s843 >= 0;
    assume Length[combination_s844] >= 0;
    arrayLength_s843 := Length[combination_s844];
    call {:si_unique_call 140} {:cexpr "arrayLength"} boogie_si_record_sol2Bpl_int(arrayLength_s843);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 270} true;
    assume i_s840 >= 0;
    assume arrayLength_s843 >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 270} true;
    assume i_s840 >= 0;
    i_s840 := 0;
    call {:si_unique_call 141} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s840);
    goto anon5_LoopHead;

  anon5_LoopHead:
    goto anon5_LoopDone, anon5_LoopBody;

  anon5_LoopBody:
    assume {:partition} i_s840 < arrayLength_s843;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 270} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 271} true;
    assume i_s840 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} M_int_int[combination_s844][i_s840] == num_s844;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 271} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 272} true;
    __ret_0_ := true;
    return;

  anon6_Else:
    assume {:partition} M_int_int[combination_s844][i_s840] != num_s844;
    goto anon3;

  anon3:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 270} true;
    assume i_s840 >= 0;
    i_s840 := i_s840 + 1;
    call {:si_unique_call 142} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s840);
    assume i_s840 >= 0;
    goto anon5_LoopHead;

  anon5_LoopDone:
    assume {:partition} arrayLength_s843 <= i_s840;
    goto anon4;

  anon4:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 275} true;
    __ret_0_ := false;
    return;
}



procedure rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s889: int);



procedure rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1045: int);



procedure acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1136: int) returns (__ret_0_: bool);



procedure makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1184: int) returns (__ret_0_: bool);



procedure makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1230: int);



procedure Prueba_Prueba_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure Prueba_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



var result_Prueba: [Ref]Ref;

procedure {:public} recursion_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s1253: int);



implementation {:ForceInline} recursion_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s1253: int)
{

  anon0:
    call {:si_unique_call 143} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 144} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 145} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 146} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 147} {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s1253);
    call {:si_unique_call 148} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 391} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 391} true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} num_s1253 == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 392} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 394} true;
    return;

  anon5_Else:
    assume {:partition} num_s1253 != 0;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 395} true;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == Prueba;
    call {:si_unique_call 149} recursion_Prueba(this, msgsender_MSG, msgvalue_MSG, num_s1253 - 1);
    return;

  anon6_Else:
    assume {:partition} DType[this] != Prueba;
    assume false;
    return;
}



procedure {:public} combinations_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s1407: Ref, left_s1407: Ref, number_s1407: int) returns (__ret_0_: Ref);
  modifies Alloc, Length, M_int_int, M_int_Ref;



implementation {:ForceInline} combinations_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s1407: Ref, left_s1407: Ref, number_s1407: int) returns (__ret_0_: Ref)
{
  var count_s1406: int;
  var i_s1355: int;
  var partialResult_s1354: Ref;
  var __var_26: Ref;
  var y_s1331: int;
  var leftNew_s1406: Ref;
  var __var_27: Ref;
  var z_s1391: int;
  var numberNew_s1406: int;
  var __var_28: Ref;
  var __var_29: int;

  anon0:
    call {:si_unique_call 150} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 151} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 152} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 153} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 154} {:cexpr "number"} boogie_si_record_sol2Bpl_int(number_s1407);
    call {:si_unique_call 155} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 400} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 402} true;
    assume Length[left_s1407] >= 0;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} Length[left_s1407] == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 403} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 403} true;
    __ret_0_ := result_Prueba[this];
    return;

  anon12_Else:
    assume {:partition} Length[left_s1407] != 0;
    goto anon2;

  anon2:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 405} true;
    assume count_s1406 >= 0;
    assume number_s1407 >= 0;
    count_s1406 := number_s1407;
    call {:si_unique_call 156} {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_s1406);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 406} true;
    assume i_s1355 >= 0;
    assume number_s1407 >= 0;
    assume number_s1407 >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 406} true;
    assume i_s1355 >= 0;
    i_s1355 := 0;
    call {:si_unique_call 157} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s1355);
    goto anon13_LoopHead;

  anon13_LoopHead:
    goto anon13_LoopDone, anon13_LoopBody;

  anon13_LoopBody:
    assume {:partition} i_s1355 < number_s1407;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 407} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 407} true;
    call {:si_unique_call 158} __var_26 := FreshRefGenerator();
    assume Length[list_s1407] >= 0;
    Length[__var_26] := Length[list_s1407];
    partialResult_s1354 := __var_26;
    partialResult_s1354 := partialResult_s1354;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 408} true;
    assume i_s1355 >= 0;
    assume number_s1407 >= 0;
    assume number_s1407 >= 0;
    assume number_s1407 - 1 >= 0;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} i_s1355 != number_s1407 - 1;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 409} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 409} true;
    assume y_s1331 >= 0;
    assume number_s1407 >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 409} true;
    assume y_s1331 >= 0;
    y_s1331 := 0;
    call {:si_unique_call 159} {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s1331);
    goto anon15_LoopHead;

  anon15_LoopHead:
    goto anon15_LoopDone, anon15_LoopBody;

  anon15_LoopBody:
    assume {:partition} y_s1331 < number_s1407;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 410} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 410} true;
    assume y_s1331 >= 0;
    assume y_s1331 >= 0;
    assume i_s1355 >= 0;
    M_int_int[partialResult_s1354][y_s1331] := M_int_int[M_int_Ref[result_Prueba[this]][i_s1355]][y_s1331];
    call {:si_unique_call 160} {:cexpr "partialResult[y]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s1354][y_s1331]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 410} true;
    assume y_s1331 >= 0;
    y_s1331 := y_s1331 + 1;
    call {:si_unique_call 161} {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s1331);
    assume y_s1331 >= 0;
    goto anon15_LoopHead;

  anon15_LoopDone:
    assume {:partition} number_s1407 <= y_s1331;
    goto anon6;

  anon14_Else:
    assume {:partition} i_s1355 == number_s1407 - 1;
    goto anon6;

  anon6:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 413} true;
    assume number_s1407 >= 0;
    M_int_int[partialResult_s1354][number_s1407] := M_int_int[left_s1407][0];
    call {:si_unique_call 162} {:cexpr "partialResult[number]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s1354][number_s1407]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 414} true;
    assume number_s1407 >= 0;
    assume number_s1407 >= 0;
    assume number_s1407 - 1 >= 0;
    assume i_s1355 >= 0;
    assume number_s1407 - 1 + i_s1355 >= 0;
    M_int_Ref[result_Prueba[this]][number_s1407 - 1 + i_s1355] := partialResult_s1354;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 407} true;
    assume i_s1355 >= 0;
    i_s1355 := i_s1355 + 1;
    call {:si_unique_call 163} {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s1355);
    assume i_s1355 >= 0;
    goto anon13_LoopHead;

  anon13_LoopDone:
    assume {:partition} number_s1407 <= i_s1355;
    goto anon7;

  anon7:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 416} true;
    call {:si_unique_call 164} __var_27 := FreshRefGenerator();
    assume Length[left_s1407] >= 0;
    assume Length[left_s1407] - 1 >= 0;
    Length[__var_27] := Length[left_s1407] - 1;
    leftNew_s1406 := __var_27;
    leftNew_s1406 := leftNew_s1406;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 418} true;
    assume z_s1391 >= 0;
    assume Length[left_s1407] >= 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 418} true;
    assume z_s1391 >= 0;
    z_s1391 := 1;
    call {:si_unique_call 165} {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s1391);
    goto anon16_LoopHead;

  anon16_LoopHead:
    goto anon16_LoopDone, anon16_LoopBody;

  anon16_LoopBody:
    assume {:partition} z_s1391 < Length[left_s1407];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 419} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 419} true;
    assume z_s1391 >= 0;
    assume z_s1391 - 1 >= 0;
    assume z_s1391 >= 0;
    M_int_int[leftNew_s1406][z_s1391 - 1] := M_int_int[left_s1407][z_s1391];
    call {:si_unique_call 166} {:cexpr "leftNew[z - 1]"} boogie_si_record_sol2Bpl_int(M_int_int[leftNew_s1406][z_s1391 - 1]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 419} true;
    assume z_s1391 >= 0;
    z_s1391 := z_s1391 + 1;
    call {:si_unique_call 167} {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s1391);
    assume z_s1391 >= 0;
    goto anon16_LoopHead;

  anon16_LoopDone:
    assume {:partition} Length[left_s1407] <= z_s1391;
    goto anon9;

  anon9:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 422} true;
    assume numberNew_s1406 >= 0;
    assume number_s1407 >= 0;
    assume number_s1407 + 1 >= 0;
    numberNew_s1406 := number_s1407 + 1;
    call {:si_unique_call 168} {:cexpr "numberNew"} boogie_si_record_sol2Bpl_int(numberNew_s1406);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 424} true;
    assume __var_29 >= 0;
    assume numberNew_s1406 >= 0;
    __var_29 := numberNew_s1406;
    assume numberNew_s1406 >= 0;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} DType[this] == Prueba;
    call {:si_unique_call 169} __var_28 := combinations_Prueba(this, msgsender_MSG, msgvalue_MSG, list_s1407, leftNew_s1406, numberNew_s1406);
    return;

  anon17_Else:
    assume {:partition} DType[this] != Prueba;
    assume false;
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



procedure BoogieEntry_Prueba();



procedure CorralChoice_SimpleMarketplace(this: Ref);
  modifies now, Alloc, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace, Balance, Length, M_int_int, result_SimpleMarketplace, M_int_Ref;



implementation CorralChoice_SimpleMarketplace(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var description_s49: int;
  var price_s49: int;
  var sender_s49: Ref;
  var offerPrice_s95: int;
  var offerPrice_s535: int;
  var combination_s805: Ref;
  var __ret_0_checkPreconditions: bool;
  var combination_s844: Ref;
  var num_s844: int;
  var __ret_0_ifPresent: bool;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc description_s49;
    havoc price_s49;
    havoc sender_s49;
    havoc offerPrice_s95;
    havoc offerPrice_s535;
    havoc combination_s805;
    havoc __ret_0_checkPreconditions;
    havoc combination_s844;
    havoc num_s844;
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
    call {:si_unique_call 170} MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s95);
    return;

  anon7_Else:
    assume {:partition} choice != 6;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 171} Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon8_Else:
    assume {:partition} choice != 5;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 172} AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon9_Else:
    assume {:partition} choice != 4;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 173} SimpleMarket_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s535);
    return;

  anon10_Else:
    assume {:partition} choice != 3;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 174} combination_s805 := FreshRefGenerator();
    call {:si_unique_call 175} __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s805);
    return;

  anon11_Else:
    assume {:partition} choice != 2;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 176} combination_s844 := FreshRefGenerator();
    call {:si_unique_call 177} __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s844, num_s844);
    return;

  anon12_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_SimpleMarketplace();
  modifies Alloc, Balance, InstanceOwner_SimpleMarketplace, Description_SimpleMarketplace, AskingPrice_SimpleMarketplace, result_SimpleMarketplace, InstanceBuyer_SimpleMarketplace, OfferPrice_SimpleMarketplace, StateEnum_SimpleMarketplace, now, Length, M_int_int, M_int_Ref;



implementation CorralEntry_SimpleMarketplace()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var description_s49: int;
  var price_s49: int;
  var sender_s49: Ref;

  anon0:
    call {:si_unique_call 178} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == SimpleMarketplace;
    call {:si_unique_call 179} SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s49, price_s49, sender_s49);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 180} CorralChoice_SimpleMarketplace(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}



procedure CorralChoice_Prueba(this: Ref);



procedure CorralEntry_Prueba();


