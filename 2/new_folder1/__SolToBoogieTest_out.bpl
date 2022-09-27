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
procedure {:public} {:inline 1} prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s65: int);
implementation prueba_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s65: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s65);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 5} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 7} (true);
assume ((((StateEnum_SimpleMarketplace[this]) == (0)) && (!(((StateEnum_SimpleMarketplace[this]) == (1))))) && (!(((StateEnum_SimpleMarketplace[this]) == (1)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 8} (true);
assume (((offerPrice_s65) != (0)) && ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this])));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 9} (true);
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s65);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 10} (true);
assert (!((((!(((StateEnum_SimpleMarketplace[this]) == (0)))) && ((StateEnum_SimpleMarketplace[this]) == (1))) && ((StateEnum_SimpleMarketplace[this]) == (1)))));
}

var InstanceOwner_SimpleMarketplace: [Ref]Ref;
var Description_SimpleMarketplace: [Ref]int;
var AskingPrice_SimpleMarketplace: [Ref]int;
var StateEnum_SimpleMarketplace: [Ref]int;
var result_SimpleMarketplace: [Ref]Ref;
var InstanceBuyer_SimpleMarketplace: [Ref]Ref;
var OfferPrice_SimpleMarketplace: [Ref]int;
procedure {:inline 1} SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s112: int, price_s112: int, sender_s112: Ref);
implementation SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s112: int, price_s112: int, sender_s112: Ref)
{
var __var_1: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_SimpleMarketplace[this] := null;
Description_SimpleMarketplace[this] := 1221810319;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s112);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s112);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s112);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 29} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 30} (true);
InstanceOwner_SimpleMarketplace[this] := sender_s112;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 31} (true);
AskingPrice_SimpleMarketplace[this] := price_s112;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 32} (true);
Description_SimpleMarketplace[this] := description_s112;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 33} (true);
StateEnum_SimpleMarketplace[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s112: int, price_s112: int, sender_s112: Ref);
implementation SimpleMarketplace_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s112: int, price_s112: int, sender_s112: Ref)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s112);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s112);
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s112);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call SimpleMarketplace_SimpleMarketplace_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s112, price_s112, sender_s112);
}

procedure {:public} {:inline 1} MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s158: int);
implementation MakeOffer_SimpleMarketplace(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s158: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s158);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 37} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 38} (true);
if ((offerPrice_s158) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 39} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 40} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 43} (true);
if ((StateEnum_SimpleMarketplace[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 44} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 45} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 48} (true);
if ((InstanceOwner_SimpleMarketplace[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 49} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 50} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 53} (true);
InstanceBuyer_SimpleMarketplace[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 54} (true);
OfferPrice_SimpleMarketplace[this] := offerPrice_s158;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_SimpleMarketplace[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 55} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 59} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 60} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 61} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 62} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 65} (true);
if ((InstanceOwner_SimpleMarketplace[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 66} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 67} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 71} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 75} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 76} (true);
if ((StateEnum_SimpleMarketplace[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 77} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 78} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 81} (true);
if ((msgsender_MSG) != (InstanceOwner_SimpleMarketplace[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 82} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 83} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 86} (true);
StateEnum_SimpleMarketplace[this] := 2;
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
var offerPrice_s65: int;
var description_s112: int;
var price_s112: int;
var sender_s112: Ref;
var offerPrice_s158: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s112, price_s112, sender_s112);
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
havoc offerPrice_s65;
havoc description_s112;
havoc price_s112;
havoc sender_s112;
havoc offerPrice_s158;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call prueba_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s65);
} else if ((choice) == (3)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s158);
} else if ((choice) == (2)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_SimpleMarketplace(this: Ref);
implementation CorralChoice_SimpleMarketplace(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var offerPrice_s65: int;
var description_s112: int;
var price_s112: int;
var sender_s112: Ref;
var offerPrice_s158: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s65;
havoc description_s112;
havoc price_s112;
havoc sender_s112;
havoc offerPrice_s158;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SimpleMarketplace));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call prueba_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s65);
} else if ((choice) == (3)) {
call MakeOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, offerPrice_s158);
} else if ((choice) == (2)) {
call Reject_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call AcceptOffer_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_SimpleMarketplace();
implementation CorralEntry_SimpleMarketplace()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var description_s112: int;
var price_s112: int;
var sender_s112: Ref;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (SimpleMarketplace));
call SimpleMarketplace_SimpleMarketplace(this, msgsender_MSG, msgvalue_MSG, description_s112, price_s112, sender_s112);
while (true)
{
call CorralChoice_SimpleMarketplace(this);
}
}


