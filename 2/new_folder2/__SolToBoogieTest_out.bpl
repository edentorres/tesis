type Ref;
type ContractName;
const unique null: Ref;
const unique AssetTransfer: ContractName;
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
procedure {:public} {:inline 1} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s267: int, inspector_s267: Ref, appraiser_s267: Ref, description_s267: int, price_s267: int);
procedure {:public} {:inline 1} validCombination0x0x1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s535: int, inspector_s535: Ref, appraiser_s535: Ref, description_s535: int, price_s535: int);
procedure {:public} {:inline 1} validCombination0x0x2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s820: int, inspector_s820: Ref, appraiser_s820: Ref, description_s820: int, price_s820: int);
procedure {:public} {:inline 1} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1124: int, inspector_s1124: Ref, appraiser_s1124: Ref, description_s1124: int, price_s1124: int);
procedure {:public} {:inline 1} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1390: int, inspector_s1390: Ref, appraiser_s1390: Ref, description_s1390: int, price_s1390: int);
procedure {:public} {:inline 1} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1656: int, inspector_s1656: Ref, appraiser_s1656: Ref, description_s1656: int, price_s1656: int);
procedure {:public} {:inline 1} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1920: int, inspector_s1920: Ref, appraiser_s1920: Ref, description_s1920: int, price_s1920: int);
procedure {:public} {:inline 1} validCombination0x1x1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2186: int, inspector_s2186: Ref, appraiser_s2186: Ref, description_s2186: int, price_s2186: int);
procedure {:public} {:inline 1} validCombination0x1x2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2469: int, inspector_s2469: Ref, appraiser_s2469: Ref, description_s2469: int, price_s2469: int);
procedure {:public} {:inline 1} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2771: int, inspector_s2771: Ref, appraiser_s2771: Ref, description_s2771: int, price_s2771: int);
procedure {:public} {:inline 1} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3035: int, inspector_s3035: Ref, appraiser_s3035: Ref, description_s3035: int, price_s3035: int);
procedure {:public} {:inline 1} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3299: int, inspector_s3299: Ref, appraiser_s3299: Ref, description_s3299: int, price_s3299: int);
procedure {:public} {:inline 1} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3561: int, inspector_s3561: Ref, appraiser_s3561: Ref, description_s3561: int, price_s3561: int);
procedure {:public} {:inline 1} validCombination0x2x1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3825: int, inspector_s3825: Ref, appraiser_s3825: Ref, description_s3825: int, price_s3825: int);
procedure {:public} {:inline 1} validCombination0x2x2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4106: int, inspector_s4106: Ref, appraiser_s4106: Ref, description_s4106: int, price_s4106: int);
procedure {:public} {:inline 1} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4406: int, inspector_s4406: Ref, appraiser_s4406: Ref, description_s4406: int, price_s4406: int);
procedure {:public} {:inline 1} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4668: int, inspector_s4668: Ref, appraiser_s4668: Ref, description_s4668: int, price_s4668: int);
procedure {:public} {:inline 1} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4930: int, inspector_s4930: Ref, appraiser_s4930: Ref, description_s4930: int, price_s4930: int);
procedure {:public} {:inline 1} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5192: int, inspector_s5192: Ref, appraiser_s5192: Ref, description_s5192: int, price_s5192: int);
procedure {:public} {:inline 1} validCombination0x3x1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5456: int, inspector_s5456: Ref, appraiser_s5456: Ref, description_s5456: int, price_s5456: int);
procedure {:public} {:inline 1} validCombination0x3x2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5737: int, inspector_s5737: Ref, appraiser_s5737: Ref, description_s5737: int, price_s5737: int);
procedure {:public} {:inline 1} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6037: int, inspector_s6037: Ref, appraiser_s6037: Ref, description_s6037: int, price_s6037: int);
procedure {:public} {:inline 1} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6299: int, inspector_s6299: Ref, appraiser_s6299: Ref, description_s6299: int, price_s6299: int);
procedure {:public} {:inline 1} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6561: int, inspector_s6561: Ref, appraiser_s6561: Ref, description_s6561: int, price_s6561: int);
procedure {:public} {:inline 1} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6819: int, inspector_s6819: Ref, appraiser_s6819: Ref, description_s6819: int, price_s6819: int);
procedure {:public} {:inline 1} validCombination0x4x1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7079: int, inspector_s7079: Ref, appraiser_s7079: Ref, description_s7079: int, price_s7079: int);
procedure {:public} {:inline 1} validCombination0x4x2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7356: int, inspector_s7356: Ref, appraiser_s7356: Ref, description_s7356: int, price_s7356: int);
procedure {:public} {:inline 1} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7652: int, inspector_s7652: Ref, appraiser_s7652: Ref, description_s7652: int, price_s7652: int);
procedure {:public} {:inline 1} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7910: int, inspector_s7910: Ref, appraiser_s7910: Ref, description_s7910: int, price_s7910: int);
procedure {:public} {:inline 1} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8168: int, inspector_s8168: Ref, appraiser_s8168: Ref, description_s8168: int, price_s8168: int);
implementation validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8168: int, inspector_s8168: Ref, appraiser_s8168: Ref, description_s8168: int, price_s8168: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8168);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s8168);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s8168);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8168);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8168);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 209} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 209} (true);
assume ((((((((((true) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (true)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 210} (true);
assume ((InstanceInspector_AssetTransfer[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 212} (true);
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 212} (true);
assert (!(((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (true)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
}

var InstanceOwner_AssetTransfer: [Ref]Ref;
var Description_AssetTransfer: [Ref]int;
var AskingPrice_AssetTransfer: [Ref]int;
var State_AssetTransfer: [Ref]int;
var InstanceBuyer_AssetTransfer: [Ref]Ref;
var OfferPrice_AssetTransfer: [Ref]int;
var InstanceInspector_AssetTransfer: [Ref]Ref;
var InstanceAppraiser_AssetTransfer: [Ref]Ref;
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8221: int, price_s8221: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8221: int, price_s8221: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -1289256223;
AskingPrice_AssetTransfer[this] := 0;
InstanceBuyer_AssetTransfer[this] := null;
OfferPrice_AssetTransfer[this] := 0;
InstanceInspector_AssetTransfer[this] := null;
InstanceAppraiser_AssetTransfer[this] := null;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8221);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8221);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 228} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 229} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 230} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s8221) >= (0));
AskingPrice_AssetTransfer[this] := price_s8221;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 231} (true);
Description_AssetTransfer[this] := description_s8221;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 232} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8221: int, price_s8221: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8221: int, price_s8221: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8221);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8221);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s8221, price_s8221);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 237} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 240} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 242} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 243} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8273: int, price_s8273: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8273: int, price_s8273: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8273);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8273);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 248} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 248} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 251} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 252} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 252} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 255} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 257} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 258} (true);
Description_AssetTransfer[this] := description_s8273;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 259} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s8273) >= (0));
AskingPrice_AssetTransfer[this] := price_s8273;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8343: Ref, appraiser_s8343: Ref, offerPrice_s8343: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8343: Ref, appraiser_s8343: Ref, offerPrice_s8343: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s8343);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s8343);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8343);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 264} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 264} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s8343) >= (0));
if ((((inspector_s8343) == (null)) || ((appraiser_s8343) == (null))) || ((offerPrice_s8343) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 267} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 268} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 268} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 272} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 273} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 276} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 278} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 279} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 279} (true);
InstanceInspector_AssetTransfer[this] := inspector_s8343;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 280} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s8343;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 282} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s8343) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s8343;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 282} (true);
State_AssetTransfer[this] := 1;
}

procedure {:public} {:inline 1} AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation AcceptOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 288} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 292} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 292} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 295} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 297} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 297} (true);
State_AssetTransfer[this] := 2;
}

procedure {:public} {:inline 1} Reject_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Reject_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_3: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 303} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 303} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 306} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 307} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 307} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 312} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 313} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 314} (true);
State_AssetTransfer[this] := 0;
}

procedure {:public} {:inline 1} Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Accept_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 319} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 319} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 324} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 324} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 329} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 331} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 331} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 336} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 338} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 338} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 340} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 340} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 342} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 342} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 344} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 346} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 347} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 351} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 351} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 353} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 353} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 355} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 357} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 358} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8567: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8567: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8567);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 365} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 368} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 369} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 369} (true);
assume ((offerPrice_s8567) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s8567) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 372} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 374} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 375} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s8567) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s8567;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation RescindOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_4: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 380} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 380} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 383} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 384} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 384} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 387} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 389} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 390} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 391} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 392} (true);
State_AssetTransfer[this] := 0;
}

procedure {:public} {:inline 1} MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation MarkAppraised_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 397} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 397} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 400} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 402} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 402} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 404} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 405} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 406} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 408} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 413} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 414} (true);
assume (false);
}
}
}

procedure {:public} {:inline 1} MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation MarkInspected_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 419} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 419} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 424} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 424} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 427} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 428} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 430} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 430} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 435} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder2/CombinationsTemp2.sol"} {:sourceLine 436} (true);
assume (false);
}
}
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (AssetTransfer)) {
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
implementation BoogieEntry_AssetTransfer()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var offerPrice_s267: int;
var inspector_s267: Ref;
var appraiser_s267: Ref;
var description_s267: int;
var price_s267: int;
var offerPrice_s535: int;
var inspector_s535: Ref;
var appraiser_s535: Ref;
var description_s535: int;
var price_s535: int;
var offerPrice_s820: int;
var inspector_s820: Ref;
var appraiser_s820: Ref;
var description_s820: int;
var price_s820: int;
var offerPrice_s1124: int;
var inspector_s1124: Ref;
var appraiser_s1124: Ref;
var description_s1124: int;
var price_s1124: int;
var offerPrice_s1390: int;
var inspector_s1390: Ref;
var appraiser_s1390: Ref;
var description_s1390: int;
var price_s1390: int;
var offerPrice_s1656: int;
var inspector_s1656: Ref;
var appraiser_s1656: Ref;
var description_s1656: int;
var price_s1656: int;
var offerPrice_s1920: int;
var inspector_s1920: Ref;
var appraiser_s1920: Ref;
var description_s1920: int;
var price_s1920: int;
var offerPrice_s2186: int;
var inspector_s2186: Ref;
var appraiser_s2186: Ref;
var description_s2186: int;
var price_s2186: int;
var offerPrice_s2469: int;
var inspector_s2469: Ref;
var appraiser_s2469: Ref;
var description_s2469: int;
var price_s2469: int;
var offerPrice_s2771: int;
var inspector_s2771: Ref;
var appraiser_s2771: Ref;
var description_s2771: int;
var price_s2771: int;
var offerPrice_s3035: int;
var inspector_s3035: Ref;
var appraiser_s3035: Ref;
var description_s3035: int;
var price_s3035: int;
var offerPrice_s3299: int;
var inspector_s3299: Ref;
var appraiser_s3299: Ref;
var description_s3299: int;
var price_s3299: int;
var offerPrice_s3561: int;
var inspector_s3561: Ref;
var appraiser_s3561: Ref;
var description_s3561: int;
var price_s3561: int;
var offerPrice_s3825: int;
var inspector_s3825: Ref;
var appraiser_s3825: Ref;
var description_s3825: int;
var price_s3825: int;
var offerPrice_s4106: int;
var inspector_s4106: Ref;
var appraiser_s4106: Ref;
var description_s4106: int;
var price_s4106: int;
var offerPrice_s4406: int;
var inspector_s4406: Ref;
var appraiser_s4406: Ref;
var description_s4406: int;
var price_s4406: int;
var offerPrice_s4668: int;
var inspector_s4668: Ref;
var appraiser_s4668: Ref;
var description_s4668: int;
var price_s4668: int;
var offerPrice_s4930: int;
var inspector_s4930: Ref;
var appraiser_s4930: Ref;
var description_s4930: int;
var price_s4930: int;
var offerPrice_s5192: int;
var inspector_s5192: Ref;
var appraiser_s5192: Ref;
var description_s5192: int;
var price_s5192: int;
var offerPrice_s5456: int;
var inspector_s5456: Ref;
var appraiser_s5456: Ref;
var description_s5456: int;
var price_s5456: int;
var offerPrice_s5737: int;
var inspector_s5737: Ref;
var appraiser_s5737: Ref;
var description_s5737: int;
var price_s5737: int;
var offerPrice_s6037: int;
var inspector_s6037: Ref;
var appraiser_s6037: Ref;
var description_s6037: int;
var price_s6037: int;
var offerPrice_s6299: int;
var inspector_s6299: Ref;
var appraiser_s6299: Ref;
var description_s6299: int;
var price_s6299: int;
var offerPrice_s6561: int;
var inspector_s6561: Ref;
var appraiser_s6561: Ref;
var description_s6561: int;
var price_s6561: int;
var offerPrice_s6819: int;
var inspector_s6819: Ref;
var appraiser_s6819: Ref;
var description_s6819: int;
var price_s6819: int;
var offerPrice_s7079: int;
var inspector_s7079: Ref;
var appraiser_s7079: Ref;
var description_s7079: int;
var price_s7079: int;
var offerPrice_s7356: int;
var inspector_s7356: Ref;
var appraiser_s7356: Ref;
var description_s7356: int;
var price_s7356: int;
var offerPrice_s7652: int;
var inspector_s7652: Ref;
var appraiser_s7652: Ref;
var description_s7652: int;
var price_s7652: int;
var offerPrice_s7910: int;
var inspector_s7910: Ref;
var appraiser_s7910: Ref;
var description_s7910: int;
var price_s7910: int;
var offerPrice_s8168: int;
var inspector_s8168: Ref;
var appraiser_s8168: Ref;
var description_s8168: int;
var price_s8168: int;
var description_s8221: int;
var price_s8221: int;
var description_s8273: int;
var price_s8273: int;
var inspector_s8343: Ref;
var appraiser_s8343: Ref;
var offerPrice_s8343: int;
var offerPrice_s8567: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8221, price_s8221);
while (true)
  invariant (HoudiniB1_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) == (null));
  invariant (HoudiniB2_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) != (null));
  invariant (HoudiniB3_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) == (null));
  invariant (HoudiniB4_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) != (null));
  invariant (HoudiniB5_AssetTransfer) ==> ((InstanceInspector_AssetTransfer[this]) == (null));
  invariant (HoudiniB6_AssetTransfer) ==> ((InstanceInspector_AssetTransfer[this]) != (null));
  invariant (HoudiniB7_AssetTransfer) ==> ((InstanceAppraiser_AssetTransfer[this]) == (null));
  invariant (HoudiniB8_AssetTransfer) ==> ((InstanceAppraiser_AssetTransfer[this]) != (null));
  invariant (HoudiniB9_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) == (InstanceBuyer_AssetTransfer[this]));
  invariant (HoudiniB10_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) != (InstanceBuyer_AssetTransfer[this]));
  invariant (HoudiniB11_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) == (InstanceInspector_AssetTransfer[this]));
  invariant (HoudiniB12_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) != (InstanceInspector_AssetTransfer[this]));
  invariant (HoudiniB13_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) == (InstanceAppraiser_AssetTransfer[this]));
  invariant (HoudiniB14_AssetTransfer) ==> ((InstanceOwner_AssetTransfer[this]) != (InstanceAppraiser_AssetTransfer[this]));
  invariant (HoudiniB15_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) == (InstanceInspector_AssetTransfer[this]));
  invariant (HoudiniB16_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) != (InstanceInspector_AssetTransfer[this]));
  invariant (HoudiniB17_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) == (InstanceAppraiser_AssetTransfer[this]));
  invariant (HoudiniB18_AssetTransfer) ==> ((InstanceBuyer_AssetTransfer[this]) != (InstanceAppraiser_AssetTransfer[this]));
  invariant (HoudiniB19_AssetTransfer) ==> ((InstanceInspector_AssetTransfer[this]) == (InstanceAppraiser_AssetTransfer[this]));
  invariant (HoudiniB20_AssetTransfer) ==> ((InstanceInspector_AssetTransfer[this]) != (InstanceAppraiser_AssetTransfer[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s267;
havoc inspector_s267;
havoc appraiser_s267;
havoc description_s267;
havoc price_s267;
havoc offerPrice_s535;
havoc inspector_s535;
havoc appraiser_s535;
havoc description_s535;
havoc price_s535;
havoc offerPrice_s820;
havoc inspector_s820;
havoc appraiser_s820;
havoc description_s820;
havoc price_s820;
havoc offerPrice_s1124;
havoc inspector_s1124;
havoc appraiser_s1124;
havoc description_s1124;
havoc price_s1124;
havoc offerPrice_s1390;
havoc inspector_s1390;
havoc appraiser_s1390;
havoc description_s1390;
havoc price_s1390;
havoc offerPrice_s1656;
havoc inspector_s1656;
havoc appraiser_s1656;
havoc description_s1656;
havoc price_s1656;
havoc offerPrice_s1920;
havoc inspector_s1920;
havoc appraiser_s1920;
havoc description_s1920;
havoc price_s1920;
havoc offerPrice_s2186;
havoc inspector_s2186;
havoc appraiser_s2186;
havoc description_s2186;
havoc price_s2186;
havoc offerPrice_s2469;
havoc inspector_s2469;
havoc appraiser_s2469;
havoc description_s2469;
havoc price_s2469;
havoc offerPrice_s2771;
havoc inspector_s2771;
havoc appraiser_s2771;
havoc description_s2771;
havoc price_s2771;
havoc offerPrice_s3035;
havoc inspector_s3035;
havoc appraiser_s3035;
havoc description_s3035;
havoc price_s3035;
havoc offerPrice_s3299;
havoc inspector_s3299;
havoc appraiser_s3299;
havoc description_s3299;
havoc price_s3299;
havoc offerPrice_s3561;
havoc inspector_s3561;
havoc appraiser_s3561;
havoc description_s3561;
havoc price_s3561;
havoc offerPrice_s3825;
havoc inspector_s3825;
havoc appraiser_s3825;
havoc description_s3825;
havoc price_s3825;
havoc offerPrice_s4106;
havoc inspector_s4106;
havoc appraiser_s4106;
havoc description_s4106;
havoc price_s4106;
havoc offerPrice_s4406;
havoc inspector_s4406;
havoc appraiser_s4406;
havoc description_s4406;
havoc price_s4406;
havoc offerPrice_s4668;
havoc inspector_s4668;
havoc appraiser_s4668;
havoc description_s4668;
havoc price_s4668;
havoc offerPrice_s4930;
havoc inspector_s4930;
havoc appraiser_s4930;
havoc description_s4930;
havoc price_s4930;
havoc offerPrice_s5192;
havoc inspector_s5192;
havoc appraiser_s5192;
havoc description_s5192;
havoc price_s5192;
havoc offerPrice_s5456;
havoc inspector_s5456;
havoc appraiser_s5456;
havoc description_s5456;
havoc price_s5456;
havoc offerPrice_s5737;
havoc inspector_s5737;
havoc appraiser_s5737;
havoc description_s5737;
havoc price_s5737;
havoc offerPrice_s6037;
havoc inspector_s6037;
havoc appraiser_s6037;
havoc description_s6037;
havoc price_s6037;
havoc offerPrice_s6299;
havoc inspector_s6299;
havoc appraiser_s6299;
havoc description_s6299;
havoc price_s6299;
havoc offerPrice_s6561;
havoc inspector_s6561;
havoc appraiser_s6561;
havoc description_s6561;
havoc price_s6561;
havoc offerPrice_s6819;
havoc inspector_s6819;
havoc appraiser_s6819;
havoc description_s6819;
havoc price_s6819;
havoc offerPrice_s7079;
havoc inspector_s7079;
havoc appraiser_s7079;
havoc description_s7079;
havoc price_s7079;
havoc offerPrice_s7356;
havoc inspector_s7356;
havoc appraiser_s7356;
havoc description_s7356;
havoc price_s7356;
havoc offerPrice_s7652;
havoc inspector_s7652;
havoc appraiser_s7652;
havoc description_s7652;
havoc price_s7652;
havoc offerPrice_s7910;
havoc inspector_s7910;
havoc appraiser_s7910;
havoc description_s7910;
havoc price_s7910;
havoc offerPrice_s8168;
havoc inspector_s8168;
havoc appraiser_s8168;
havoc description_s8168;
havoc price_s8168;
havoc description_s8221;
havoc price_s8221;
havoc description_s8273;
havoc price_s8273;
havoc inspector_s8343;
havoc appraiser_s8343;
havoc offerPrice_s8343;
havoc offerPrice_s8567;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (40)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s267, inspector_s267, appraiser_s267, description_s267, price_s267);
} else if ((choice) == (39)) {
call validCombination0x0x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s535, inspector_s535, appraiser_s535, description_s535, price_s535);
} else if ((choice) == (38)) {
call validCombination0x0x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s820, inspector_s820, appraiser_s820, description_s820, price_s820);
} else if ((choice) == (37)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1124, inspector_s1124, appraiser_s1124, description_s1124, price_s1124);
} else if ((choice) == (36)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1390, inspector_s1390, appraiser_s1390, description_s1390, price_s1390);
} else if ((choice) == (35)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1656, inspector_s1656, appraiser_s1656, description_s1656, price_s1656);
} else if ((choice) == (34)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1920, inspector_s1920, appraiser_s1920, description_s1920, price_s1920);
} else if ((choice) == (33)) {
call validCombination0x1x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2186, inspector_s2186, appraiser_s2186, description_s2186, price_s2186);
} else if ((choice) == (32)) {
call validCombination0x1x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2469, inspector_s2469, appraiser_s2469, description_s2469, price_s2469);
} else if ((choice) == (31)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2771, inspector_s2771, appraiser_s2771, description_s2771, price_s2771);
} else if ((choice) == (30)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3035, inspector_s3035, appraiser_s3035, description_s3035, price_s3035);
} else if ((choice) == (29)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3299, inspector_s3299, appraiser_s3299, description_s3299, price_s3299);
} else if ((choice) == (28)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3561, inspector_s3561, appraiser_s3561, description_s3561, price_s3561);
} else if ((choice) == (27)) {
call validCombination0x2x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3825, inspector_s3825, appraiser_s3825, description_s3825, price_s3825);
} else if ((choice) == (26)) {
call validCombination0x2x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4106, inspector_s4106, appraiser_s4106, description_s4106, price_s4106);
} else if ((choice) == (25)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4406, inspector_s4406, appraiser_s4406, description_s4406, price_s4406);
} else if ((choice) == (24)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4668, inspector_s4668, appraiser_s4668, description_s4668, price_s4668);
} else if ((choice) == (23)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4930, inspector_s4930, appraiser_s4930, description_s4930, price_s4930);
} else if ((choice) == (22)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5192, inspector_s5192, appraiser_s5192, description_s5192, price_s5192);
} else if ((choice) == (21)) {
call validCombination0x3x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5456, inspector_s5456, appraiser_s5456, description_s5456, price_s5456);
} else if ((choice) == (20)) {
call validCombination0x3x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5737, inspector_s5737, appraiser_s5737, description_s5737, price_s5737);
} else if ((choice) == (19)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6037, inspector_s6037, appraiser_s6037, description_s6037, price_s6037);
} else if ((choice) == (18)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6299, inspector_s6299, appraiser_s6299, description_s6299, price_s6299);
} else if ((choice) == (17)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6561, inspector_s6561, appraiser_s6561, description_s6561, price_s6561);
} else if ((choice) == (16)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6819, inspector_s6819, appraiser_s6819, description_s6819, price_s6819);
} else if ((choice) == (15)) {
call validCombination0x4x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7079, inspector_s7079, appraiser_s7079, description_s7079, price_s7079);
} else if ((choice) == (14)) {
call validCombination0x4x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7356, inspector_s7356, appraiser_s7356, description_s7356, price_s7356);
} else if ((choice) == (13)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7652, inspector_s7652, appraiser_s7652, description_s7652, price_s7652);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7910, inspector_s7910, appraiser_s7910, description_s7910, price_s7910);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8168, inspector_s8168, appraiser_s8168, description_s8168, price_s8168);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8273, price_s8273);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s8343, appraiser_s8343, offerPrice_s8343);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8567);
} else if ((choice) == (3)) {
call RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_AssetTransfer(this: Ref);
implementation CorralChoice_AssetTransfer(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var offerPrice_s267: int;
var inspector_s267: Ref;
var appraiser_s267: Ref;
var description_s267: int;
var price_s267: int;
var offerPrice_s535: int;
var inspector_s535: Ref;
var appraiser_s535: Ref;
var description_s535: int;
var price_s535: int;
var offerPrice_s820: int;
var inspector_s820: Ref;
var appraiser_s820: Ref;
var description_s820: int;
var price_s820: int;
var offerPrice_s1124: int;
var inspector_s1124: Ref;
var appraiser_s1124: Ref;
var description_s1124: int;
var price_s1124: int;
var offerPrice_s1390: int;
var inspector_s1390: Ref;
var appraiser_s1390: Ref;
var description_s1390: int;
var price_s1390: int;
var offerPrice_s1656: int;
var inspector_s1656: Ref;
var appraiser_s1656: Ref;
var description_s1656: int;
var price_s1656: int;
var offerPrice_s1920: int;
var inspector_s1920: Ref;
var appraiser_s1920: Ref;
var description_s1920: int;
var price_s1920: int;
var offerPrice_s2186: int;
var inspector_s2186: Ref;
var appraiser_s2186: Ref;
var description_s2186: int;
var price_s2186: int;
var offerPrice_s2469: int;
var inspector_s2469: Ref;
var appraiser_s2469: Ref;
var description_s2469: int;
var price_s2469: int;
var offerPrice_s2771: int;
var inspector_s2771: Ref;
var appraiser_s2771: Ref;
var description_s2771: int;
var price_s2771: int;
var offerPrice_s3035: int;
var inspector_s3035: Ref;
var appraiser_s3035: Ref;
var description_s3035: int;
var price_s3035: int;
var offerPrice_s3299: int;
var inspector_s3299: Ref;
var appraiser_s3299: Ref;
var description_s3299: int;
var price_s3299: int;
var offerPrice_s3561: int;
var inspector_s3561: Ref;
var appraiser_s3561: Ref;
var description_s3561: int;
var price_s3561: int;
var offerPrice_s3825: int;
var inspector_s3825: Ref;
var appraiser_s3825: Ref;
var description_s3825: int;
var price_s3825: int;
var offerPrice_s4106: int;
var inspector_s4106: Ref;
var appraiser_s4106: Ref;
var description_s4106: int;
var price_s4106: int;
var offerPrice_s4406: int;
var inspector_s4406: Ref;
var appraiser_s4406: Ref;
var description_s4406: int;
var price_s4406: int;
var offerPrice_s4668: int;
var inspector_s4668: Ref;
var appraiser_s4668: Ref;
var description_s4668: int;
var price_s4668: int;
var offerPrice_s4930: int;
var inspector_s4930: Ref;
var appraiser_s4930: Ref;
var description_s4930: int;
var price_s4930: int;
var offerPrice_s5192: int;
var inspector_s5192: Ref;
var appraiser_s5192: Ref;
var description_s5192: int;
var price_s5192: int;
var offerPrice_s5456: int;
var inspector_s5456: Ref;
var appraiser_s5456: Ref;
var description_s5456: int;
var price_s5456: int;
var offerPrice_s5737: int;
var inspector_s5737: Ref;
var appraiser_s5737: Ref;
var description_s5737: int;
var price_s5737: int;
var offerPrice_s6037: int;
var inspector_s6037: Ref;
var appraiser_s6037: Ref;
var description_s6037: int;
var price_s6037: int;
var offerPrice_s6299: int;
var inspector_s6299: Ref;
var appraiser_s6299: Ref;
var description_s6299: int;
var price_s6299: int;
var offerPrice_s6561: int;
var inspector_s6561: Ref;
var appraiser_s6561: Ref;
var description_s6561: int;
var price_s6561: int;
var offerPrice_s6819: int;
var inspector_s6819: Ref;
var appraiser_s6819: Ref;
var description_s6819: int;
var price_s6819: int;
var offerPrice_s7079: int;
var inspector_s7079: Ref;
var appraiser_s7079: Ref;
var description_s7079: int;
var price_s7079: int;
var offerPrice_s7356: int;
var inspector_s7356: Ref;
var appraiser_s7356: Ref;
var description_s7356: int;
var price_s7356: int;
var offerPrice_s7652: int;
var inspector_s7652: Ref;
var appraiser_s7652: Ref;
var description_s7652: int;
var price_s7652: int;
var offerPrice_s7910: int;
var inspector_s7910: Ref;
var appraiser_s7910: Ref;
var description_s7910: int;
var price_s7910: int;
var offerPrice_s8168: int;
var inspector_s8168: Ref;
var appraiser_s8168: Ref;
var description_s8168: int;
var price_s8168: int;
var description_s8221: int;
var price_s8221: int;
var description_s8273: int;
var price_s8273: int;
var inspector_s8343: Ref;
var appraiser_s8343: Ref;
var offerPrice_s8343: int;
var offerPrice_s8567: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s267;
havoc inspector_s267;
havoc appraiser_s267;
havoc description_s267;
havoc price_s267;
havoc offerPrice_s535;
havoc inspector_s535;
havoc appraiser_s535;
havoc description_s535;
havoc price_s535;
havoc offerPrice_s820;
havoc inspector_s820;
havoc appraiser_s820;
havoc description_s820;
havoc price_s820;
havoc offerPrice_s1124;
havoc inspector_s1124;
havoc appraiser_s1124;
havoc description_s1124;
havoc price_s1124;
havoc offerPrice_s1390;
havoc inspector_s1390;
havoc appraiser_s1390;
havoc description_s1390;
havoc price_s1390;
havoc offerPrice_s1656;
havoc inspector_s1656;
havoc appraiser_s1656;
havoc description_s1656;
havoc price_s1656;
havoc offerPrice_s1920;
havoc inspector_s1920;
havoc appraiser_s1920;
havoc description_s1920;
havoc price_s1920;
havoc offerPrice_s2186;
havoc inspector_s2186;
havoc appraiser_s2186;
havoc description_s2186;
havoc price_s2186;
havoc offerPrice_s2469;
havoc inspector_s2469;
havoc appraiser_s2469;
havoc description_s2469;
havoc price_s2469;
havoc offerPrice_s2771;
havoc inspector_s2771;
havoc appraiser_s2771;
havoc description_s2771;
havoc price_s2771;
havoc offerPrice_s3035;
havoc inspector_s3035;
havoc appraiser_s3035;
havoc description_s3035;
havoc price_s3035;
havoc offerPrice_s3299;
havoc inspector_s3299;
havoc appraiser_s3299;
havoc description_s3299;
havoc price_s3299;
havoc offerPrice_s3561;
havoc inspector_s3561;
havoc appraiser_s3561;
havoc description_s3561;
havoc price_s3561;
havoc offerPrice_s3825;
havoc inspector_s3825;
havoc appraiser_s3825;
havoc description_s3825;
havoc price_s3825;
havoc offerPrice_s4106;
havoc inspector_s4106;
havoc appraiser_s4106;
havoc description_s4106;
havoc price_s4106;
havoc offerPrice_s4406;
havoc inspector_s4406;
havoc appraiser_s4406;
havoc description_s4406;
havoc price_s4406;
havoc offerPrice_s4668;
havoc inspector_s4668;
havoc appraiser_s4668;
havoc description_s4668;
havoc price_s4668;
havoc offerPrice_s4930;
havoc inspector_s4930;
havoc appraiser_s4930;
havoc description_s4930;
havoc price_s4930;
havoc offerPrice_s5192;
havoc inspector_s5192;
havoc appraiser_s5192;
havoc description_s5192;
havoc price_s5192;
havoc offerPrice_s5456;
havoc inspector_s5456;
havoc appraiser_s5456;
havoc description_s5456;
havoc price_s5456;
havoc offerPrice_s5737;
havoc inspector_s5737;
havoc appraiser_s5737;
havoc description_s5737;
havoc price_s5737;
havoc offerPrice_s6037;
havoc inspector_s6037;
havoc appraiser_s6037;
havoc description_s6037;
havoc price_s6037;
havoc offerPrice_s6299;
havoc inspector_s6299;
havoc appraiser_s6299;
havoc description_s6299;
havoc price_s6299;
havoc offerPrice_s6561;
havoc inspector_s6561;
havoc appraiser_s6561;
havoc description_s6561;
havoc price_s6561;
havoc offerPrice_s6819;
havoc inspector_s6819;
havoc appraiser_s6819;
havoc description_s6819;
havoc price_s6819;
havoc offerPrice_s7079;
havoc inspector_s7079;
havoc appraiser_s7079;
havoc description_s7079;
havoc price_s7079;
havoc offerPrice_s7356;
havoc inspector_s7356;
havoc appraiser_s7356;
havoc description_s7356;
havoc price_s7356;
havoc offerPrice_s7652;
havoc inspector_s7652;
havoc appraiser_s7652;
havoc description_s7652;
havoc price_s7652;
havoc offerPrice_s7910;
havoc inspector_s7910;
havoc appraiser_s7910;
havoc description_s7910;
havoc price_s7910;
havoc offerPrice_s8168;
havoc inspector_s8168;
havoc appraiser_s8168;
havoc description_s8168;
havoc price_s8168;
havoc description_s8221;
havoc price_s8221;
havoc description_s8273;
havoc price_s8273;
havoc inspector_s8343;
havoc appraiser_s8343;
havoc offerPrice_s8343;
havoc offerPrice_s8567;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (40)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s267, inspector_s267, appraiser_s267, description_s267, price_s267);
} else if ((choice) == (39)) {
call validCombination0x0x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s535, inspector_s535, appraiser_s535, description_s535, price_s535);
} else if ((choice) == (38)) {
call validCombination0x0x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s820, inspector_s820, appraiser_s820, description_s820, price_s820);
} else if ((choice) == (37)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1124, inspector_s1124, appraiser_s1124, description_s1124, price_s1124);
} else if ((choice) == (36)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1390, inspector_s1390, appraiser_s1390, description_s1390, price_s1390);
} else if ((choice) == (35)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1656, inspector_s1656, appraiser_s1656, description_s1656, price_s1656);
} else if ((choice) == (34)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1920, inspector_s1920, appraiser_s1920, description_s1920, price_s1920);
} else if ((choice) == (33)) {
call validCombination0x1x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2186, inspector_s2186, appraiser_s2186, description_s2186, price_s2186);
} else if ((choice) == (32)) {
call validCombination0x1x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2469, inspector_s2469, appraiser_s2469, description_s2469, price_s2469);
} else if ((choice) == (31)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2771, inspector_s2771, appraiser_s2771, description_s2771, price_s2771);
} else if ((choice) == (30)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3035, inspector_s3035, appraiser_s3035, description_s3035, price_s3035);
} else if ((choice) == (29)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3299, inspector_s3299, appraiser_s3299, description_s3299, price_s3299);
} else if ((choice) == (28)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3561, inspector_s3561, appraiser_s3561, description_s3561, price_s3561);
} else if ((choice) == (27)) {
call validCombination0x2x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3825, inspector_s3825, appraiser_s3825, description_s3825, price_s3825);
} else if ((choice) == (26)) {
call validCombination0x2x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4106, inspector_s4106, appraiser_s4106, description_s4106, price_s4106);
} else if ((choice) == (25)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4406, inspector_s4406, appraiser_s4406, description_s4406, price_s4406);
} else if ((choice) == (24)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4668, inspector_s4668, appraiser_s4668, description_s4668, price_s4668);
} else if ((choice) == (23)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4930, inspector_s4930, appraiser_s4930, description_s4930, price_s4930);
} else if ((choice) == (22)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5192, inspector_s5192, appraiser_s5192, description_s5192, price_s5192);
} else if ((choice) == (21)) {
call validCombination0x3x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5456, inspector_s5456, appraiser_s5456, description_s5456, price_s5456);
} else if ((choice) == (20)) {
call validCombination0x3x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5737, inspector_s5737, appraiser_s5737, description_s5737, price_s5737);
} else if ((choice) == (19)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6037, inspector_s6037, appraiser_s6037, description_s6037, price_s6037);
} else if ((choice) == (18)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6299, inspector_s6299, appraiser_s6299, description_s6299, price_s6299);
} else if ((choice) == (17)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6561, inspector_s6561, appraiser_s6561, description_s6561, price_s6561);
} else if ((choice) == (16)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6819, inspector_s6819, appraiser_s6819, description_s6819, price_s6819);
} else if ((choice) == (15)) {
call validCombination0x4x1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7079, inspector_s7079, appraiser_s7079, description_s7079, price_s7079);
} else if ((choice) == (14)) {
call validCombination0x4x2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7356, inspector_s7356, appraiser_s7356, description_s7356, price_s7356);
} else if ((choice) == (13)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7652, inspector_s7652, appraiser_s7652, description_s7652, price_s7652);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7910, inspector_s7910, appraiser_s7910, description_s7910, price_s7910);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8168, inspector_s8168, appraiser_s8168, description_s8168, price_s8168);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8273, price_s8273);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s8343, appraiser_s8343, offerPrice_s8343);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8567);
} else if ((choice) == (3)) {
call RescindOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call MarkAppraised_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_AssetTransfer();
implementation CorralEntry_AssetTransfer()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var description_s8221: int;
var price_s8221: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8221, price_s8221);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


