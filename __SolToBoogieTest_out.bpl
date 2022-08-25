type Ref;
type ContractName;
const unique null: Ref;
const unique SimpleMarketplace: ContractName;
function ConstantToRef(x: int) returns (ret: Ref);
function BoogieRefToInt(x: Ref) returns (ret: int);
function {:bvbuiltin "mod"} modBpl(x: int, y: int) returns (ret: int);
function keccak256(x: int) returns (ret: int);
function abiEncodePacked1(x: int) returns (ret: int);
function _SumMapping_VeriSol(x: [Ref]int) returns (ret: int);
function abiEncodePacked2(x: int, y: int) returns (ret: int);
function abiEncodePacked1R(x: Ref) returns (ret: int);
function abiEncodePacked2R(x: Ref, y: int) returns (ret: int);
var Balance: [Ref]int;
var DType: [Ref]ContractName;
var Alloc: [Ref]bool;
var balance_ADDR: [Ref]int;
var M_int_int: [Ref][int]int;
var M_int_Ref: [Ref][int]Ref;
var Length: [Ref]int;
var now: int;
procedure {:inline 1} FreshRefGenerator() returns (newRef: Ref);
implementation FreshRefGenerator() returns (newRef: Ref)
{
havoc newRef;
assume ((Alloc[newRef]) == (false));
Alloc[newRef] := true;
assume ((newRef) != (null));
}

procedure {:inline 1} HavocAllocMany();
implementation HavocAllocMany()
{
var oldAlloc: [Ref]bool;
oldAlloc := Alloc;
havoc Alloc;
assume (forall  __i__0_0:Ref ::  ((oldAlloc[__i__0_0]) ==> (Alloc[__i__0_0])));
}

procedure boogie_si_record_sol2Bpl_int(x: int);
procedure boogie_si_record_sol2Bpl_ref(x: Ref);
procedure boogie_si_record_sol2Bpl_bool(x: bool);

axiom(forall  __i__0_0:int, __i__0_1:int :: {ConstantToRef(__i__0_0), ConstantToRef(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((ConstantToRef(__i__0_0)) != (ConstantToRef(__i__0_1)))));

axiom(forall  __i__0_0:int, __i__0_1:int :: {keccak256(__i__0_0), keccak256(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((keccak256(__i__0_0)) != (keccak256(__i__0_1)))));

axiom(forall  __i__0_0:int, __i__0_1:int :: {abiEncodePacked1(__i__0_0), abiEncodePacked1(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1(__i__0_0)) != (abiEncodePacked1(__i__0_1)))));

axiom(forall  __i__0_0:[Ref]int ::  ((exists __i__0_1:Ref ::  ((__i__0_0[__i__0_1]) != (0))) || ((_SumMapping_VeriSol(__i__0_0)) == (0))));

axiom(forall  __i__0_0:[Ref]int, __i__0_1:Ref, __i__0_2:int ::  ((_SumMapping_VeriSol(__i__0_0[__i__0_1 := __i__0_2])) == (((_SumMapping_VeriSol(__i__0_0)) - (__i__0_0[__i__0_1])) + (__i__0_2))));

axiom(forall  __i__0_0:int, __i__0_1:int, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2(__i__0_0, __i__1_0), abiEncodePacked2(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2(__i__0_0, __i__1_0)) != (abiEncodePacked2(__i__0_1, __i__1_1)))));

axiom(forall  __i__0_0:Ref, __i__0_1:Ref :: {abiEncodePacked1R(__i__0_0), abiEncodePacked1R(__i__0_1)} (((__i__0_0) == (__i__0_1)) || ((abiEncodePacked1R(__i__0_0)) != (abiEncodePacked1R(__i__0_1)))));

axiom(forall  __i__0_0:Ref, __i__0_1:Ref, __i__1_0:int, __i__1_1:int :: {abiEncodePacked2R(__i__0_0, __i__1_0), abiEncodePacked2R(__i__0_1, __i__1_1)} ((((__i__0_0) == (__i__0_1)) && ((__i__1_0) == (__i__1_1))) || ((abiEncodePacked2R(__i__0_0, __i__1_0)) != (abiEncodePacked2R(__i__0_1, __i__1_1)))));
var InstanceOwner_SimpleMarketplace: [Ref]Ref;
var Description_SimpleMarketplace: [Ref]int;
var AskingPrice_SimpleMarketplace: [Ref]int;
var StateEnum_SimpleMarketplace: [Ref]int;
var result_SimpleMarketplace: [Ref]Ref;
var InstanceBuyer_SimpleMarketplace: [Ref]Ref;
var OfferPrice_SimpleMarketplace: [Ref]int;
procedure {:inline 1} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref);
implementation SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_SimpleMarketplace[this] := null;
Description_SimpleMarketplace[this] := 1089970563;
AskingPrice_SimpleMarketplace[this] := 0;
// Make array/mapping vars distinct for result
call __var_1 := FreshRefGenerator();
result_SimpleMarketplace[this] := __var_1;
assume ((Length[result_SimpleMarketplace[this]]) == (0));
InstanceBuyer_SimpleMarketplace[this] := null;
OfferPrice_SimpleMarketplace[this] := 0;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s49);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s49);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s49);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 23} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 24} (true);
InstanceOwner_SimpleMarketplace[this] := sender_s49;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 25} (true);
AskingPrice_SimpleMarketplace[this] := price_s49;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 26} (true);
Description_SimpleMarketplace[this] := description_s49;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 27} (true);
StateEnum_SimpleMarketplace[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref);
implementation SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s49: int, price_s49: int, sender_s49: Ref)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s49);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s49);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s49);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s49, price_s49, sender_s49);
}

procedure {:public} {:inline 1} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s95: int);
implementation MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s95: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s95);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 31} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 32} (true);
if ((offerPrice_s95) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 33} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 34} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 37} (true);
if ((StateEnum_SimpleMarketplace[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 38} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 39} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 42} (true);
if ((InstanceOwner_SimpleMarketplace[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 43} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 44} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 47} (true);
InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 48} (true);
OfferPrice_SimpleMarketplace[this] := offerPrice_s95;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 49} (true);
StateEnum_SimpleMarketplace[this] := 1;
}

procedure {:public} {:inline 1} Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Reject_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 53} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 54} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 55} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 56} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 59} (true);
if ((InstanceOwner_SimpleMarketplace[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 60} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 61} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 65} (true);
StateEnum_SimpleMarketplace[this] := 0;
}

procedure {:public} {:inline 1} AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 69} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 70} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 71} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 72} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 75} (true);
if ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 76} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 77} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 80} (true);
StateEnum_SimpleMarketplace[this] := 2;
}

procedure {:public} {:inline 1} SimpleMarket_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s285: int);
implementation SimpleMarket_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s285: int)
{
var states_s284: Ref;
var __var_2: Ref;
var states2_s284: Ref;
var __var_3: Ref;
var countComnbinations_s284: int;
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: int;
var i_s283: int;
var y_s265: int;
var __var_8: bool;
var __var_9: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s285);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 99} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 102} (true);
call __var_2 := FreshRefGenerator();
Length[__var_2] := 3;
states_s284 := __var_2;
states_s284 := states_s284;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 103} (true);
M_int_int[states_s284][0] := 1;
call  {:cexpr "states[0]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s284][0]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 104} (true);
M_int_int[states_s284][1] := 2;
call  {:cexpr "states[1]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s284][1]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 105} (true);
M_int_int[states_s284][2] := 3;
call  {:cexpr "states[2]"} boogie_si_record_sol2Bpl_int(M_int_int[states_s284][2]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 107} (true);
call __var_3 := FreshRefGenerator();
Length[__var_3] := 3;
states2_s284 := __var_3;
states2_s284 := states2_s284;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 108} (true);
M_int_int[states2_s284][0] := 1;
call  {:cexpr "states2[0]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s284][0]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 109} (true);
M_int_int[states2_s284][1] := 2;
call  {:cexpr "states2[1]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s284][1]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 110} (true);
M_int_int[states2_s284][2] := 3;
call  {:cexpr "states2[2]"} boogie_si_record_sol2Bpl_int(M_int_int[states2_s284][2]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 112} (true);
assume ((countComnbinations_s284) >= (0));
countComnbinations_s284 := 8;
call  {:cexpr "countComnbinations"} boogie_si_record_sol2Bpl_int(countComnbinations_s284);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 114} (true);
call __var_5 := FreshRefGenerator();
assume ((countComnbinations_s284) >= (0));
Length[__var_5] := countComnbinations_s284;
__var_4 := __var_5;
result_SimpleMarketplace[this] := __var_4;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 116} (true);
assume ((__var_7) >= (0));
__var_7 := 0;
assume ((0) >= (0));
call __var_6 := combinations_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, states_s284, states2_s284, 0);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 120} (true);
assume ((i_s283) >= (0));
assume ((Length[result_SimpleMarketplace[this]]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 120} (true);
assume ((i_s283) >= (0));
i_s283 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s283);
while ((i_s283) < (Length[result_SimpleMarketplace[this]]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 120} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 122} (true);
assume ((y_s265) >= (0));
assume ((i_s283) >= (0));
assume ((Length[M_int_Ref[result_SimpleMarketplace[this]][i_s283]]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 122} (true);
assume ((y_s265) >= (0));
y_s265 := 0;
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s265);
while ((y_s265) < (Length[M_int_Ref[result_SimpleMarketplace[this]][i_s283]]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 122} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 122} (true);
assume ((y_s265) >= (0));
y_s265 := (y_s265) + (1);
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s265);
assume ((y_s265) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 127} (true);
assume ((i_s283) >= (0));
call __var_8 := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[result_SimpleMarketplace[this]][i_s283]);
assume (__var_8);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 128} (true);
assume ((i_s283) >= (0));
call __var_9 := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, M_int_Ref[result_SimpleMarketplace[this]][i_s283]);
assert (__var_9);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 120} (true);
assume ((i_s283) >= (0));
i_s283 := (i_s283) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s283);
assume ((i_s283) >= (0));
}
}

procedure {:inline 1} combinations_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s439: Ref, left_s439: Ref, number_s439: int) returns (__ret_0_: Ref);
implementation combinations_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s439: Ref, left_s439: Ref, number_s439: int) returns (__ret_0_: Ref)
{
var count_s438: int;
var i_s387: int;
var partialResult_s386: Ref;
var __var_10: Ref;
var y_s363: int;
var leftNew_s438: Ref;
var __var_11: Ref;
var z_s423: int;
var numberNew_s438: int;
var __var_12: Ref;
var __var_13: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "number"} boogie_si_record_sol2Bpl_int(number_s439);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 175} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 178} (true);
assume ((Length[left_s439]) >= (0));
if ((Length[left_s439]) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 179} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 179} (true);
__ret_0_ := result_SimpleMarketplace[this];
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 181} (true);
assume ((count_s438) >= (0));
assume ((number_s439) >= (0));
count_s438 := number_s439;
call  {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_s438);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 182} (true);
assume ((i_s387) >= (0));
assume ((number_s439) >= (0));
assume ((number_s439) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 182} (true);
assume ((i_s387) >= (0));
i_s387 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s387);
while ((i_s387) < (number_s439))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 183} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 183} (true);
call __var_10 := FreshRefGenerator();
assume ((Length[list_s439]) >= (0));
Length[__var_10] := Length[list_s439];
partialResult_s386 := __var_10;
partialResult_s386 := partialResult_s386;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 184} (true);
assume ((i_s387) >= (0));
assume ((number_s439) >= (0));
assume ((number_s439) >= (0));
assume (((number_s439) - (1)) >= (0));
if ((i_s387) != ((number_s439) - (1))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 185} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 185} (true);
assume ((y_s363) >= (0));
assume ((number_s439) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 185} (true);
assume ((y_s363) >= (0));
y_s363 := 0;
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s363);
while ((y_s363) < (number_s439))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 186} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 186} (true);
assume ((y_s363) >= (0));
assume ((y_s363) >= (0));
assume ((i_s387) >= (0));
M_int_int[partialResult_s386][y_s363] := M_int_int[M_int_Ref[result_SimpleMarketplace[this]][i_s387]][y_s363];
call  {:cexpr "partialResult[y]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s386][y_s363]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 185} (true);
assume ((y_s363) >= (0));
y_s363 := (y_s363) + (1);
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s363);
assume ((y_s363) >= (0));
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 189} (true);
assume ((number_s439) >= (0));
M_int_int[partialResult_s386][number_s439] := M_int_int[left_s439][0];
call  {:cexpr "partialResult[number]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s386][number_s439]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 190} (true);
assume ((number_s439) >= (0));
assume ((number_s439) >= (0));
assume (((number_s439) - (1)) >= (0));
assume ((i_s387) >= (0));
assume ((((number_s439) - (1)) + (i_s387)) >= (0));
M_int_Ref[result_SimpleMarketplace[this]][((number_s439) - (1)) + (i_s387)] := partialResult_s386;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 182} (true);
assume ((i_s387) >= (0));
i_s387 := (i_s387) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s387);
assume ((i_s387) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 192} (true);
call __var_11 := FreshRefGenerator();
assume ((Length[left_s439]) >= (0));
assume (((Length[left_s439]) - (1)) >= (0));
Length[__var_11] := (Length[left_s439]) - (1);
leftNew_s438 := __var_11;
leftNew_s438 := leftNew_s438;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 194} (true);
assume ((z_s423) >= (0));
assume ((Length[left_s439]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 194} (true);
assume ((z_s423) >= (0));
z_s423 := 1;
call  {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s423);
while ((z_s423) < (Length[left_s439]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 195} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 195} (true);
assume ((z_s423) >= (0));
assume (((z_s423) - (1)) >= (0));
assume ((z_s423) >= (0));
M_int_int[leftNew_s438][(z_s423) - (1)] := M_int_int[left_s439][z_s423];
call  {:cexpr "leftNew[z - 1]"} boogie_si_record_sol2Bpl_int(M_int_int[leftNew_s438][(z_s423) - (1)]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 194} (true);
assume ((z_s423) >= (0));
z_s423 := (z_s423) + (1);
call  {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s423);
assume ((z_s423) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 198} (true);
assume ((numberNew_s438) >= (0));
assume ((number_s439) >= (0));
assume (((number_s439) + (1)) >= (0));
numberNew_s438 := (number_s439) + (1);
call  {:cexpr "numberNew"} boogie_si_record_sol2Bpl_int(numberNew_s438);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 200} (true);
assume ((__var_13) >= (0));
assume ((numberNew_s438) >= (0));
__var_13 := numberNew_s438;
assume ((numberNew_s438) >= (0));
call __var_12 := combinations_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, list_s439, leftNew_s438, numberNew_s438);
}

procedure {:public} {:inline 1} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s529: Ref) returns (__ret_0_: bool);
implementation checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s529: Ref) returns (__ret_0_: bool)
{
var result_s528: bool;
var __var_14: bool;
var __var_15: bool;
var __var_16: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 204} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 204} (true);
result_s528 := true;
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 205} (true);
call __var_14 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s529, 1);
if (__var_14) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 206} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 206} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 208} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 208} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) != (0));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 211} (true);
call __var_15 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s529, 2);
if (__var_15) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 212} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 212} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) == (1));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 214} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 214} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) != (1));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 217} (true);
call __var_16 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s529, 1);
if (__var_16) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 218} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 218} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) == (1));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 220} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 220} (true);
result_s528 := (result_s528) && ((StateEnum_SimpleMarketplace[this]) != (1));
call  {:cexpr "result"} boogie_si_record_sol2Bpl_bool(result_s528);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 222} (true);
__ret_0_ := result_s528;
return;
}

procedure {:public} {:inline 1} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s568: Ref, num_s568: int) returns (__ret_0_: bool);
implementation ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s568: Ref, num_s568: int) returns (__ret_0_: bool)
{
var arrayLength_s567: int;
var i_s564: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s568);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 226} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 226} (true);
assume ((arrayLength_s567) >= (0));
assume ((Length[combination_s568]) >= (0));
arrayLength_s567 := Length[combination_s568];
call  {:cexpr "arrayLength"} boogie_si_record_sol2Bpl_int(arrayLength_s567);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} (true);
assume ((i_s564) >= (0));
assume ((arrayLength_s567) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} (true);
assume ((i_s564) >= (0));
i_s564 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s564);
while ((i_s564) < (arrayLength_s567))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 228} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 228} (true);
assume ((i_s564) >= (0));
if ((M_int_int[combination_s568][i_s564]) == (num_s568)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 229} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 229} (true);
__ret_0_ := true;
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 227} (true);
assume ((i_s564) >= (0));
i_s564 := (i_s564) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s564);
assume ((i_s564) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 232} (true);
__ret_0_ := false;
return;
}

procedure {:inline 1} rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s613: int);
implementation rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s613: int)
{
var predA_s612: bool;
var prA_s612: bool;
var rb_s612: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s613);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 236} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 237} (true);
predA_s612 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s612);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 238} (true);
prA_s612 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s612);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 239} (true);
assume ((predA_s612) && (prA_s612));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 241} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 242} (true);
rb_s612 := ((StateEnum_SimpleMarketplace[this]) == (0)) && ((offerPrice_s613) != (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s612);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 243} (true);
assert (!(rb_s612));
}

procedure {:inline 1} rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s645: bool;
var prA_s645: bool;
var rb_s645: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 248} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 249} (true);
predA_s645 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s645);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 250} (true);
prA_s645 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s645);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 253} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 254} (true);
rb_s645 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s645);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 255} (true);
assert (!(rb_s645));
}

procedure {:inline 1} rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s684: bool;
var prA_s684: bool;
var rb_s684: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 260} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 261} (true);
predA_s684 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s684);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 262} (true);
prA_s684 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s684);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 263} (true);
assume ((predA_s684) && (prA_s684));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 265} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 266} (true);
rb_s684 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s684);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 267} (true);
assert (!(rb_s684));
}

procedure {:inline 1} acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s723: bool;
var prA_s723: bool;
var rb_s723: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 272} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 273} (true);
predA_s723 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s723);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 274} (true);
prA_s723 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s723);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 275} (true);
assume ((predA_s723) && (prA_s723));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 277} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 278} (true);
rb_s723 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s723);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 279} (true);
assert (!(rb_s723));
}

procedure {:inline 1} acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s769: int);
implementation acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s769: int)
{
var predA_s768: bool;
var prA_s768: bool;
var rb_s768: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s769);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 284} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 285} (true);
predA_s768 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s768);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 286} (true);
prA_s768 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s768);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 287} (true);
assume ((predA_s768) && (prA_s768));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 289} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 290} (true);
rb_s768 := ((offerPrice_s769) != (0)) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s768);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 291} (true);
assert (!(rb_s768));
}

procedure {:inline 1} acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s807: bool;
var prA_s807: bool;
var rb_s807: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 296} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 297} (true);
predA_s807 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s807);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 298} (true);
prA_s807 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s807);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 299} (true);
assume ((predA_s807) && (prA_s807));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 301} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 302} (true);
rb_s807 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s807);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 303} (true);
assert (!(rb_s807));
}

procedure {:inline 1} makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s860: int) returns (__ret_0_: bool);
implementation makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s860: int) returns (__ret_0_: bool)
{
var predA_s859: bool;
var prA_s859: bool;
var rb_s859: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s860);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 308} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 309} (true);
predA_s859 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s859);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 310} (true);
prA_s859 := ((offerPrice_s860) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s859);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 311} (true);
assume ((predA_s859) && (prA_s859));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 313} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s860);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 314} (true);
rb_s859 := ((offerPrice_s860) != (0)) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s859);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 315} (true);
assert (!(rb_s859));
}

procedure {:inline 1} makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s908: int) returns (__ret_0_: bool);
implementation makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s908: int) returns (__ret_0_: bool)
{
var predA_s907: bool;
var prA_s907: bool;
var rb_s907: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s908);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 320} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 321} (true);
predA_s907 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s907);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 322} (true);
prA_s907 := ((offerPrice_s908) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s907);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 323} (true);
assume ((predA_s907) && (prA_s907));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 325} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s908);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 326} (true);
rb_s907 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s907);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 327} (true);
assert (!(rb_s907));
}

procedure {:inline 1} makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s954: int);
implementation makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s954: int)
{
var predA_s953: bool;
var prA_s953: bool;
var rb_s953: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s954);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 332} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 333} (true);
predA_s953 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s953);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 334} (true);
prA_s953 := ((offerPrice_s954) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s953);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 335} (true);
assume ((predA_s953) && (prA_s953));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 337} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s954);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 338} (true);
rb_s953 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s953);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 339} (true);
assert (!(rb_s953));
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (SimpleMarketplace)) {
assume ((amount) == (0));
} else {
call Fallback_UnknownType(from, to, amount);
}
}

procedure {:inline 1} Fallback_UnknownType(from: Ref, to: Ref, amount: int);
implementation Fallback_UnknownType(from: Ref, to: Ref, amount: int)
{
// ---- Logic for payable function START 
assume ((Balance[from]) >= (amount));
Balance[from] := (Balance[from]) - (amount);
Balance[to] := (Balance[to]) + (amount);
// ---- Logic for payable function END 
}

procedure {:inline 1} send(from: Ref, to: Ref, amount: int) returns (success: bool);
implementation send(from: Ref, to: Ref, amount: int) returns (success: bool)
{
if ((Balance[from]) >= (amount)) {
call FallbackDispatch(from, to, amount);
success := true;
} else {
success := false;
}
}

const {:existential true} HoudiniB1_SimpleMarketplace: bool;
const {:existential true} HoudiniB2_SimpleMarketplace: bool;
const {:existential true} HoudiniB3_SimpleMarketplace: bool;
const {:existential true} HoudiniB4_SimpleMarketplace: bool;
const {:existential true} HoudiniB5_SimpleMarketplace: bool;
const {:existential true} HoudiniB6_SimpleMarketplace: bool;
procedure BoogieEntry_SimpleMarketplace();
implementation BoogieEntry_SimpleMarketplace()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var description_s49: int;
var price_s49: int;
var sender_s49: Ref;
var offerPrice_s95: int;
var offerPrice_s285: int;
var combination_s529: Ref;
var __ret_0_checkPreconditions: bool;
var combination_s568: Ref;
var num_s568: int;
var __ret_0_ifPresent: bool;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s49, price_s49, sender_s49);
while (true)
  invariant (HoudiniB1_SimpleMarketplace) ==> ((InstanceOwner_SimpleMarketplace[this]) == (null));
  invariant (HoudiniB2_SimpleMarketplace) ==> ((InstanceOwner_SimpleMarketplace[this]) != (null));
  invariant (HoudiniB3_SimpleMarketplace) ==> ((InstanceBuyer_SimpleMarketplace[this]) == (null));
  invariant (HoudiniB4_SimpleMarketplace) ==> ((InstanceBuyer_SimpleMarketplace[this]) != (null));
  invariant (HoudiniB5_SimpleMarketplace) ==> ((InstanceOwner_SimpleMarketplace[this]) == (InstanceBuyer_SimpleMarketplace[this]));
  invariant (HoudiniB6_SimpleMarketplace) ==> ((InstanceOwner_SimpleMarketplace[this]) != (InstanceBuyer_SimpleMarketplace[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc description_s49;
havoc price_s49;
havoc sender_s49;
havoc offerPrice_s95;
havoc offerPrice_s285;
havoc combination_s529;
havoc __ret_0_checkPreconditions;
havoc combination_s568;
havoc num_s568;
havoc __ret_0_ifPresent;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s95);
} else if ((choice) == (5)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call SimpleMarket_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s285);
} else if ((choice) == (2)) {
call combination_s529 := FreshRefGenerator();
call __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s529);
} else if ((choice) == (1)) {
call combination_s568 := FreshRefGenerator();
call __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s568, num_s568);
}
}
}

procedure CorralChoice_SimpleMarketplace(this: Ref);
implementation CorralChoice_SimpleMarketplace(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var description_s49: int;
var price_s49: int;
var sender_s49: Ref;
var offerPrice_s95: int;
var offerPrice_s285: int;
var combination_s529: Ref;
var __ret_0_checkPreconditions: bool;
var combination_s568: Ref;
var num_s568: int;
var __ret_0_ifPresent: bool;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc description_s49;
havoc price_s49;
havoc sender_s49;
havoc offerPrice_s95;
havoc offerPrice_s285;
havoc combination_s529;
havoc __ret_0_checkPreconditions;
havoc combination_s568;
havoc num_s568;
havoc __ret_0_ifPresent;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s95);
} else if ((choice) == (5)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call SimpleMarket_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s285);
} else if ((choice) == (2)) {
call combination_s529 := FreshRefGenerator();
call __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s529);
} else if ((choice) == (1)) {
call combination_s568 := FreshRefGenerator();
call __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s568, num_s568);
}
}

procedure CorralEntry_SimpleMarketplace();
implementation CorralEntry_SimpleMarketplace()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var description_s49: int;
var price_s49: int;
var sender_s49: Ref;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s49, price_s49, sender_s49);
while (true)
{
call CorralChoice_SimpleMarketplace(this);
}
}


