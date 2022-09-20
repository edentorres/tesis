type Ref;
type ContractName;
const unique null: Ref;
const unique SimpleMarketplace: ContractName;
const unique Prueba: ContractName;
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
procedure {:public} {:inline 1} prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s47: int);
implementation prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s47: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s47);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 6} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 8} (true);
assume ((((StateEnum_SimpleMarketplace[this]) == (0)) && ((StateEnum_SimpleMarketplace[this]) == (1))) && ((StateEnum_SimpleMarketplace[this]) == (1)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 9} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 10} (true);
assert (!(((((StateEnum_SimpleMarketplace[this]) == (0)) && ((StateEnum_SimpleMarketplace[this]) == (1))) && ((StateEnum_SimpleMarketplace[this]) == (1)))));
}

var InstanceOwner_SimpleMarketplace: [Ref]Ref;
var Description_SimpleMarketplace: [Ref]int;
var AskingPrice_SimpleMarketplace: [Ref]int;
var StateEnum_SimpleMarketplace: [Ref]int;
var result_SimpleMarketplace: [Ref]Ref;
var InstanceBuyer_SimpleMarketplace: [Ref]Ref;
var OfferPrice_SimpleMarketplace: [Ref]int;
procedure {:inline 1} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref);
implementation SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_SimpleMarketplace[this] := null;
Description_SimpleMarketplace[this] := 1573500472;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s94);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s94);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s94);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 28} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 29} (true);
InstanceOwner_SimpleMarketplace[this] := sender_s94;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 30} (true);
AskingPrice_SimpleMarketplace[this] := price_s94;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 31} (true);
Description_SimpleMarketplace[this] := description_s94;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 32} (true);
StateEnum_SimpleMarketplace[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref);
implementation SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s94: int, price_s94: int, sender_s94: Ref)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s94);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s94);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s94);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s94, price_s94, sender_s94);
}

procedure {:public} {:inline 1} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s140: int);
implementation MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s140: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s140);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 36} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 37} (true);
if ((offerPrice_s140) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 38} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 39} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 42} (true);
if ((StateEnum_SimpleMarketplace[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 43} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 44} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 47} (true);
if ((InstanceOwner_SimpleMarketplace[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 48} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 49} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 52} (true);
InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 53} (true);
OfferPrice_SimpleMarketplace[this] := offerPrice_s140;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 54} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 58} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 59} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 60} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 61} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 64} (true);
if ((InstanceOwner_SimpleMarketplace[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 65} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 66} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 70} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 74} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 75} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 76} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 77} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 80} (true);
if ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 81} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 82} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 85} (true);
StateEnum_SimpleMarketplace[this] := 2;
}

procedure {:inline 1} recursion_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s216: int);
implementation recursion_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s216: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s216);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 228} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 228} (true);
if ((num_s216) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 229} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 229} (true);
assert (false);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 230} (true);
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 232} (true);
if ((DType[this]) == (SimpleMarketplace)) {
call recursion_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, (num_s216) - (1));
} else {
assume (false);
}
}

procedure {:public} {:inline 1} checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s310: Ref) returns (__ret_0_: bool);
implementation checkPreconditions_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s310: Ref) returns (__ret_0_: bool)
{
var resultBool_s309: bool;
var __var_2: bool;
var __var_3: bool;
var __var_4: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 265} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 265} (true);
resultBool_s309 := true;
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 266} (true);
call __var_2 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 1);
if (__var_2) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 267} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 267} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 269} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 269} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) != (0));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 272} (true);
call __var_3 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 2);
if (__var_3) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 273} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 273} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) == (1));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 275} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 275} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) != (1));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 278} (true);
call __var_4 := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310, 3);
if (__var_4) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 279} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) == (1));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 281} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 281} (true);
resultBool_s309 := (resultBool_s309) && ((StateEnum_SimpleMarketplace[this]) != (1));
call  {:cexpr "resultBool"} boogie_si_record_sol2Bpl_bool(resultBool_s309);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 283} (true);
assume (resultBool_s309);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 284} (true);
__ret_0_ := resultBool_s309;
return;
}

procedure {:public} {:inline 1} ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s349: Ref, num_s349: int) returns (__ret_0_: bool);
implementation ifPresent_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, combination_s349: Ref, num_s349: int) returns (__ret_0_: bool)
{
var arrayLength_s348: int;
var i_s345: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s349);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 288} (true);
assume ((arrayLength_s348) >= (0));
assume ((Length[combination_s349]) >= (0));
arrayLength_s348 := Length[combination_s349];
call  {:cexpr "arrayLength"} boogie_si_record_sol2Bpl_int(arrayLength_s348);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 289} (true);
assume ((i_s345) >= (0));
assume ((arrayLength_s348) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 289} (true);
assume ((i_s345) >= (0));
i_s345 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s345);
while ((i_s345) < (arrayLength_s348))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 290} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 290} (true);
assume ((i_s345) >= (0));
if ((M_int_int[combination_s349][i_s345]) == (num_s349)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 291} (true);
__ret_0_ := true;
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 289} (true);
assume ((i_s345) >= (0));
i_s345 := (i_s345) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s345);
assume ((i_s345) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 294} (true);
__ret_0_ := false;
return;
}

procedure {:inline 1} rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s394: int);
implementation rejectOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s394: int)
{
var predA_s393: bool;
var prA_s393: bool;
var rb_s393: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s394);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 298} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 299} (true);
predA_s393 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s393);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 300} (true);
prA_s393 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s393);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 301} (true);
assume ((predA_s393) && (prA_s393));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 303} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 304} (true);
rb_s393 := ((StateEnum_SimpleMarketplace[this]) == (0)) && ((offerPrice_s394) != (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s393);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 305} (true);
assert (!(rb_s393));
}

procedure {:inline 1} rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation rejectOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s426: bool;
var prA_s426: bool;
var rb_s426: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 311} (true);
predA_s426 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s426);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 312} (true);
prA_s426 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s426);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 315} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 316} (true);
rb_s426 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s426);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 317} (true);
assert (!(rb_s426));
}

procedure {:inline 1} rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation rejectOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s465: bool;
var prA_s465: bool;
var rb_s465: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 323} (true);
predA_s465 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s465);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 324} (true);
prA_s465 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s465);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 325} (true);
assume ((predA_s465) && (prA_s465));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 327} (true);
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 328} (true);
rb_s465 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s465);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 329} (true);
assert (!(rb_s465));
}

procedure {:inline 1} acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation acceptOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s504: bool;
var prA_s504: bool;
var rb_s504: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 335} (true);
predA_s504 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s504);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 336} (true);
prA_s504 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s504);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 337} (true);
assume ((predA_s504) && (prA_s504));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 339} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 340} (true);
rb_s504 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s504);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 341} (true);
assert (!(rb_s504));
}

procedure {:inline 1} acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s550: int);
implementation acceptOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s550: int)
{
var predA_s549: bool;
var prA_s549: bool;
var rb_s549: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s550);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 346} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 347} (true);
predA_s549 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s549);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 348} (true);
prA_s549 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s549);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 349} (true);
assume ((predA_s549) && (prA_s549));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 351} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 352} (true);
rb_s549 := ((offerPrice_s550) != (0)) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s549);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 353} (true);
assert (!(rb_s549));
}

procedure {:inline 1} acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation acceptOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var predA_s588: bool;
var prA_s588: bool;
var rb_s588: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 358} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 359} (true);
predA_s588 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s588);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 360} (true);
prA_s588 := (msgsender_MSG) == (InstanceOwner_SimpleMarketplace[this]);
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s588);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 361} (true);
assume ((predA_s588) && (prA_s588));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 363} (true);
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 364} (true);
rb_s588 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s588);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 365} (true);
assert (!(rb_s588));
}

procedure {:inline 1} makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s641: int) returns (__ret_0_: bool);
implementation makeOffer_MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s641: int) returns (__ret_0_: bool)
{
var predA_s640: bool;
var prA_s640: bool;
var rb_s640: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s641);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 370} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 371} (true);
predA_s640 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s640);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 372} (true);
prA_s640 := ((offerPrice_s641) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s640);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 373} (true);
assume ((predA_s640) && (prA_s640));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 375} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s641);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 376} (true);
rb_s640 := ((offerPrice_s641) != (0)) && ((StateEnum_SimpleMarketplace[this]) == (0));
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s640);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 377} (true);
assert (!(rb_s640));
}

procedure {:inline 1} makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s689: int) returns (__ret_0_: bool);
implementation makeOffer_RejectOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s689: int) returns (__ret_0_: bool)
{
var predA_s688: bool;
var prA_s688: bool;
var rb_s688: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s689);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 383} (true);
predA_s688 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s688);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 384} (true);
prA_s688 := ((offerPrice_s689) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s688);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 385} (true);
assume ((predA_s688) && (prA_s688));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 387} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s689);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 388} (true);
rb_s688 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s688);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 389} (true);
assert (!(rb_s688));
}

procedure {:inline 1} makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s735: int);
implementation makeOffer_AcceptOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s735: int)
{
var predA_s734: bool;
var prA_s734: bool;
var rb_s734: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s735);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 394} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 395} (true);
predA_s734 := (StateEnum_SimpleMarketplace[this]) == (0);
call  {:cexpr "predA"} boogie_si_record_sol2Bpl_bool(predA_s734);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 396} (true);
prA_s734 := ((offerPrice_s735) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this]));
call  {:cexpr "prA"} boogie_si_record_sol2Bpl_bool(prA_s734);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 397} (true);
assume ((predA_s734) && (prA_s734));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 399} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s735);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 400} (true);
rb_s734 := (StateEnum_SimpleMarketplace[this]) == (1);
call  {:cexpr "rb"} boogie_si_record_sol2Bpl_bool(rb_s734);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 401} (true);
assert (!(rb_s734));
}

procedure {:inline 1} Prueba_Prueba_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Prueba_Prueba_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_5: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for result
call __var_5 := FreshRefGenerator();
result_Prueba[this] := __var_5;
assume ((Length[result_Prueba[this]]) == (0));
// end of initialization
}

procedure {:inline 1} Prueba_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Prueba_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 406} (true);
call Prueba_Prueba_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

var result_Prueba: [Ref]Ref;
procedure {:public} {:inline 1} recursion_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s758: int);
implementation recursion_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, num_s758: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "num"} boogie_si_record_sol2Bpl_int(num_s758);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 410} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 410} (true);
if ((num_s758) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 411} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 413} (true);
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 414} (true);
if ((DType[this]) == (Prueba)) {
call recursion_Prueba(this, msgsender_MSG, msgvalue_MSG, (num_s758) - (1));
} else {
assume (false);
}
}

procedure {:public} {:inline 1} combinations_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s912: Ref, left_s912: Ref, number_s912: int) returns (__ret_0_: Ref);
implementation combinations_Prueba(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, list_s912: Ref, left_s912: Ref, number_s912: int) returns (__ret_0_: Ref)
{
var count_s911: int;
var i_s860: int;
var partialResult_s859: Ref;
var __var_6: Ref;
var y_s836: int;
var leftNew_s911: Ref;
var __var_7: Ref;
var z_s896: int;
var numberNew_s911: int;
var __var_8: Ref;
var __var_9: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "number"} boogie_si_record_sol2Bpl_int(number_s912);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 419} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 421} (true);
assume ((Length[left_s912]) >= (0));
if ((Length[left_s912]) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 422} (true);
__ret_0_ := result_Prueba[this];
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 424} (true);
assume ((count_s911) >= (0));
assume ((number_s912) >= (0));
count_s911 := number_s912;
call  {:cexpr "count"} boogie_si_record_sol2Bpl_int(count_s911);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 425} (true);
assume ((i_s860) >= (0));
assume ((number_s912) >= (0));
assume ((number_s912) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 425} (true);
assume ((i_s860) >= (0));
i_s860 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s860);
while ((i_s860) < (number_s912))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 426} (true);
call __var_6 := FreshRefGenerator();
assume ((Length[list_s912]) >= (0));
Length[__var_6] := Length[list_s912];
partialResult_s859 := __var_6;
partialResult_s859 := partialResult_s859;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 427} (true);
assume ((i_s860) >= (0));
assume ((number_s912) >= (0));
assume ((number_s912) >= (0));
assume (((number_s912) - (1)) >= (0));
if ((i_s860) != ((number_s912) - (1))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 428} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 428} (true);
assume ((y_s836) >= (0));
assume ((number_s912) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 428} (true);
assume ((y_s836) >= (0));
y_s836 := 0;
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s836);
while ((y_s836) < (number_s912))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 429} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 429} (true);
assume ((y_s836) >= (0));
assume ((y_s836) >= (0));
assume ((i_s860) >= (0));
M_int_int[partialResult_s859][y_s836] := M_int_int[M_int_Ref[result_Prueba[this]][i_s860]][y_s836];
call  {:cexpr "partialResult[y]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s859][y_s836]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 429} (true);
assume ((y_s836) >= (0));
y_s836 := (y_s836) + (1);
call  {:cexpr "y"} boogie_si_record_sol2Bpl_int(y_s836);
assume ((y_s836) >= (0));
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 432} (true);
assume ((number_s912) >= (0));
M_int_int[partialResult_s859][number_s912] := M_int_int[left_s912][0];
call  {:cexpr "partialResult[number]"} boogie_si_record_sol2Bpl_int(M_int_int[partialResult_s859][number_s912]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 433} (true);
assume ((number_s912) >= (0));
assume ((number_s912) >= (0));
assume (((number_s912) - (1)) >= (0));
assume ((i_s860) >= (0));
assume ((((number_s912) - (1)) + (i_s860)) >= (0));
M_int_Ref[result_Prueba[this]][((number_s912) - (1)) + (i_s860)] := partialResult_s859;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 426} (true);
assume ((i_s860) >= (0));
i_s860 := (i_s860) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s860);
assume ((i_s860) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 435} (true);
call __var_7 := FreshRefGenerator();
assume ((Length[left_s912]) >= (0));
assume (((Length[left_s912]) - (1)) >= (0));
Length[__var_7] := (Length[left_s912]) - (1);
leftNew_s911 := __var_7;
leftNew_s911 := leftNew_s911;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 437} (true);
assume ((z_s896) >= (0));
assume ((Length[left_s912]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 437} (true);
assume ((z_s896) >= (0));
z_s896 := 1;
call  {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s896);
while ((z_s896) < (Length[left_s912]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 438} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 438} (true);
assume ((z_s896) >= (0));
assume (((z_s896) - (1)) >= (0));
assume ((z_s896) >= (0));
M_int_int[leftNew_s911][(z_s896) - (1)] := M_int_int[left_s912][z_s896];
call  {:cexpr "leftNew[z - 1]"} boogie_si_record_sol2Bpl_int(M_int_int[leftNew_s911][(z_s896) - (1)]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 438} (true);
assume ((z_s896) >= (0));
z_s896 := (z_s896) + (1);
call  {:cexpr "z"} boogie_si_record_sol2Bpl_int(z_s896);
assume ((z_s896) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 441} (true);
assume ((numberNew_s911) >= (0));
assume ((number_s912) >= (0));
assume (((number_s912) + (1)) >= (0));
numberNew_s911 := (number_s912) + (1);
call  {:cexpr "numberNew"} boogie_si_record_sol2Bpl_int(numberNew_s911);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/SimpleMarketplace.sol"} {:sourceLine 443} (true);
assume ((__var_9) >= (0));
assume ((numberNew_s911) >= (0));
__var_9 := numberNew_s911;
assume ((numberNew_s911) >= (0));
call __var_8 := combinations_Prueba(this, msgsender_MSG, msgvalue_MSG, list_s912, leftNew_s911, numberNew_s911);
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (Prueba)) {
assume ((amount) == (0));
} else if ((DType[to]) == (SimpleMarketplace)) {
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
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s94, price_s94, sender_s94);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
assume ((DType[msgsender_MSG]) != (Prueba));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call prueba_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s47);
} else if ((choice) == (5)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s140);
} else if ((choice) == (4)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call combination_s310 := FreshRefGenerator();
call __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310);
} else if ((choice) == (1)) {
call combination_s349 := FreshRefGenerator();
call __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s349, num_s349);
}
}
}

procedure BoogieEntry_Prueba();
implementation BoogieEntry_Prueba()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var num_s758: int;
var list_s912: Ref;
var left_s912: Ref;
var number_s912: int;
var __ret_0_combinations: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (Prueba));
call Prueba_Prueba(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc num_s758;
havoc list_s912;
havoc left_s912;
havoc number_s912;
havoc __ret_0_combinations;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
assume ((DType[msgsender_MSG]) != (Prueba));
Alloc[msgsender_MSG] := true;
if ((choice) == (2)) {
call recursion_Prueba(this, msgsender_MSG, msgvalue_MSG, num_s758);
} else if ((choice) == (1)) {
call list_s912 := FreshRefGenerator();
call left_s912 := FreshRefGenerator();
call __ret_0_combinations := combinations_Prueba(this, msgsender_MSG, msgvalue_MSG, list_s912, left_s912, number_s912);
}
}
}

procedure CorralChoice_SimpleMarketplace(this: Ref);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
assume ((DType[msgsender_MSG]) != (Prueba));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call prueba_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s47);
} else if ((choice) == (5)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s140);
} else if ((choice) == (4)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call combination_s310 := FreshRefGenerator();
call __ret_0_checkPreconditions := checkPreconditions_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s310);
} else if ((choice) == (1)) {
call combination_s349 := FreshRefGenerator();
call __ret_0_ifPresent := ifPresent_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, combination_s349, num_s349);
}
}

procedure CorralEntry_SimpleMarketplace();
implementation CorralEntry_SimpleMarketplace()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var description_s94: int;
var price_s94: int;
var sender_s94: Ref;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s94, price_s94, sender_s94);
while (true)
{
call CorralChoice_SimpleMarketplace(this);
}
}

procedure CorralChoice_Prueba(this: Ref);
implementation CorralChoice_Prueba(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var num_s758: int;
var list_s912: Ref;
var left_s912: Ref;
var number_s912: int;
var __ret_0_combinations: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc num_s758;
havoc list_s912;
havoc left_s912;
havoc number_s912;
havoc __ret_0_combinations;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
assume ((DType[msgsender_MSG]) != (Prueba));
Alloc[msgsender_MSG] := true;
if ((choice) == (2)) {
call recursion_Prueba(this, msgsender_MSG, msgvalue_MSG, num_s758);
} else if ((choice) == (1)) {
call list_s912 := FreshRefGenerator();
call left_s912 := FreshRefGenerator();
call __ret_0_combinations := combinations_Prueba(this, msgsender_MSG, msgvalue_MSG, list_s912, left_s912, number_s912);
}
}

procedure CorralEntry_Prueba();
implementation CorralEntry_Prueba()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (Prueba));
call Prueba_Prueba(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_Prueba(this);
}
}


