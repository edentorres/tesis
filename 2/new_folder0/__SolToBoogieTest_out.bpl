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
procedure {:public} {:inline 1} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s271: int, inspector_s271: Ref, appraiser_s271: Ref, description_s271: int, price_s271: int);
procedure {:public} {:inline 1} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s579: int, inspector_s579: Ref, appraiser_s579: Ref, description_s579: int, price_s579: int);
procedure {:public} {:inline 1} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s849: int, inspector_s849: Ref, appraiser_s849: Ref, description_s849: int, price_s849: int);
procedure {:public} {:inline 1} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1119: int, inspector_s1119: Ref, appraiser_s1119: Ref, description_s1119: int, price_s1119: int);
procedure {:public} {:inline 1} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1387: int, inspector_s1387: Ref, appraiser_s1387: Ref, description_s1387: int, price_s1387: int);
procedure {:public} {:inline 1} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1693: int, inspector_s1693: Ref, appraiser_s1693: Ref, description_s1693: int, price_s1693: int);
procedure {:public} {:inline 1} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1961: int, inspector_s1961: Ref, appraiser_s1961: Ref, description_s1961: int, price_s1961: int);
procedure {:public} {:inline 1} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2229: int, inspector_s2229: Ref, appraiser_s2229: Ref, description_s2229: int, price_s2229: int);
procedure {:public} {:inline 1} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2495: int, inspector_s2495: Ref, appraiser_s2495: Ref, description_s2495: int, price_s2495: int);
procedure {:public} {:inline 1} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2799: int, inspector_s2799: Ref, appraiser_s2799: Ref, description_s2799: int, price_s2799: int);
procedure {:public} {:inline 1} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3065: int, inspector_s3065: Ref, appraiser_s3065: Ref, description_s3065: int, price_s3065: int);
procedure {:public} {:inline 1} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3331: int, inspector_s3331: Ref, appraiser_s3331: Ref, description_s3331: int, price_s3331: int);
procedure {:public} {:inline 1} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3597: int, inspector_s3597: Ref, appraiser_s3597: Ref, description_s3597: int, price_s3597: int);
procedure {:public} {:inline 1} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3901: int, inspector_s3901: Ref, appraiser_s3901: Ref, description_s3901: int, price_s3901: int);
procedure {:public} {:inline 1} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4167: int, inspector_s4167: Ref, appraiser_s4167: Ref, description_s4167: int, price_s4167: int);
procedure {:public} {:inline 1} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4433: int, inspector_s4433: Ref, appraiser_s4433: Ref, description_s4433: int, price_s4433: int);
procedure {:public} {:inline 1} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4695: int, inspector_s4695: Ref, appraiser_s4695: Ref, description_s4695: int, price_s4695: int);
procedure {:public} {:inline 1} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4995: int, inspector_s4995: Ref, appraiser_s4995: Ref, description_s4995: int, price_s4995: int);
procedure {:public} {:inline 1} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5257: int, inspector_s5257: Ref, appraiser_s5257: Ref, description_s5257: int, price_s5257: int);
procedure {:public} {:inline 1} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5519: int, inspector_s5519: Ref, appraiser_s5519: Ref, description_s5519: int, price_s5519: int);
implementation validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5519: int, inspector_s5519: Ref, appraiser_s5519: Ref, description_s5519: int, price_s5519: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s5519);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s5519);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s5519);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5519);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5519);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 139} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 139} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (1))))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (true)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 140} (true);
assume ((InstanceInspector_AssetTransfer[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 142} (true);
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 142} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 915159934;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5572);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5572);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 158} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 158} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 159} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s5572) >= (0));
AskingPrice_AssetTransfer[this] := price_s5572;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 160} (true);
Description_AssetTransfer[this] := description_s5572;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 161} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5572: int, price_s5572: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5572);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5572);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s5572, price_s5572);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 167} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 167} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 169} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 171} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 172} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5624: int, price_s5624: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s5624: int, price_s5624: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s5624);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s5624);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 178} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 178} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 180} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 182} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 182} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 184} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 186} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 187} (true);
Description_AssetTransfer[this] := description_s5624;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 188} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s5624) >= (0));
AskingPrice_AssetTransfer[this] := price_s5624;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s5694: Ref, appraiser_s5694: Ref, offerPrice_s5694: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s5694: Ref, appraiser_s5694: Ref, offerPrice_s5694: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s5694);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s5694);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s5694);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 194} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 194} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s5694) >= (0));
if ((((inspector_s5694) == (null)) || ((appraiser_s5694) == (null))) || ((offerPrice_s5694) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 196} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 198} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 198} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 200} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 202} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 203} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 205} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 207} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 208} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 209} (true);
InstanceInspector_AssetTransfer[this] := inspector_s5694;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 210} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s5694;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 211} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s5694) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s5694;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 212} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 218} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 218} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 220} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 222} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 222} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 224} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 226} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 227} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 233} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 233} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 235} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 237} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 237} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 239} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 241} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 242} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 243} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 249} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 249} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 251} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 253} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 254} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 258} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 260} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 261} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 265} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 267} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 268} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 270} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 270} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 272} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 272} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 274} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 276} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 276} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 281} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 281} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 283} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 283} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 285} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 287} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 287} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5918: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5918: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s5918);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 295} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 295} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 297} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 299} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 299} (true);
assume ((offerPrice_s5918) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s5918) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 301} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 303} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 304} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s5918) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s5918;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 310} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 312} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 314} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 314} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 316} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 318} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 319} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 321} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 321} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 327} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 327} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 329} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 331} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 332} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 334} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 336} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 338} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 338} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 342} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 344} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 349} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 351} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 353} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 354} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 356} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 356} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 358} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 360} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 360} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 364} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder0/CombinationsTemp0.sol"} {:sourceLine 366} (true);
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
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5572, price_s5572);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (30)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s271, inspector_s271, appraiser_s271, description_s271, price_s271);
} else if ((choice) == (29)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s579, inspector_s579, appraiser_s579, description_s579, price_s579);
} else if ((choice) == (28)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s849, inspector_s849, appraiser_s849, description_s849, price_s849);
} else if ((choice) == (27)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1119, inspector_s1119, appraiser_s1119, description_s1119, price_s1119);
} else if ((choice) == (26)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1387, inspector_s1387, appraiser_s1387, description_s1387, price_s1387);
} else if ((choice) == (25)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1693, inspector_s1693, appraiser_s1693, description_s1693, price_s1693);
} else if ((choice) == (24)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1961, inspector_s1961, appraiser_s1961, description_s1961, price_s1961);
} else if ((choice) == (23)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2229, inspector_s2229, appraiser_s2229, description_s2229, price_s2229);
} else if ((choice) == (22)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2495, inspector_s2495, appraiser_s2495, description_s2495, price_s2495);
} else if ((choice) == (21)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2799, inspector_s2799, appraiser_s2799, description_s2799, price_s2799);
} else if ((choice) == (20)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3065, inspector_s3065, appraiser_s3065, description_s3065, price_s3065);
} else if ((choice) == (19)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3331, inspector_s3331, appraiser_s3331, description_s3331, price_s3331);
} else if ((choice) == (18)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3597, inspector_s3597, appraiser_s3597, description_s3597, price_s3597);
} else if ((choice) == (17)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3901, inspector_s3901, appraiser_s3901, description_s3901, price_s3901);
} else if ((choice) == (16)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4167, inspector_s4167, appraiser_s4167, description_s4167, price_s4167);
} else if ((choice) == (15)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4433, inspector_s4433, appraiser_s4433, description_s4433, price_s4433);
} else if ((choice) == (14)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4695, inspector_s4695, appraiser_s4695, description_s4695, price_s4695);
} else if ((choice) == (13)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4995, inspector_s4995, appraiser_s4995, description_s4995, price_s4995);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5257, inspector_s5257, appraiser_s5257, description_s5257, price_s5257);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5519, inspector_s5519, appraiser_s5519, description_s5519, price_s5519);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5624, price_s5624);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s5694, appraiser_s5694, offerPrice_s5694);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5918);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (30)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s271, inspector_s271, appraiser_s271, description_s271, price_s271);
} else if ((choice) == (29)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s579, inspector_s579, appraiser_s579, description_s579, price_s579);
} else if ((choice) == (28)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s849, inspector_s849, appraiser_s849, description_s849, price_s849);
} else if ((choice) == (27)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1119, inspector_s1119, appraiser_s1119, description_s1119, price_s1119);
} else if ((choice) == (26)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1387, inspector_s1387, appraiser_s1387, description_s1387, price_s1387);
} else if ((choice) == (25)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1693, inspector_s1693, appraiser_s1693, description_s1693, price_s1693);
} else if ((choice) == (24)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1961, inspector_s1961, appraiser_s1961, description_s1961, price_s1961);
} else if ((choice) == (23)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2229, inspector_s2229, appraiser_s2229, description_s2229, price_s2229);
} else if ((choice) == (22)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2495, inspector_s2495, appraiser_s2495, description_s2495, price_s2495);
} else if ((choice) == (21)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2799, inspector_s2799, appraiser_s2799, description_s2799, price_s2799);
} else if ((choice) == (20)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3065, inspector_s3065, appraiser_s3065, description_s3065, price_s3065);
} else if ((choice) == (19)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3331, inspector_s3331, appraiser_s3331, description_s3331, price_s3331);
} else if ((choice) == (18)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3597, inspector_s3597, appraiser_s3597, description_s3597, price_s3597);
} else if ((choice) == (17)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3901, inspector_s3901, appraiser_s3901, description_s3901, price_s3901);
} else if ((choice) == (16)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4167, inspector_s4167, appraiser_s4167, description_s4167, price_s4167);
} else if ((choice) == (15)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4433, inspector_s4433, appraiser_s4433, description_s4433, price_s4433);
} else if ((choice) == (14)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4695, inspector_s4695, appraiser_s4695, description_s4695, price_s4695);
} else if ((choice) == (13)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4995, inspector_s4995, appraiser_s4995, description_s4995, price_s4995);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5257, inspector_s5257, appraiser_s5257, description_s5257, price_s5257);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5519, inspector_s5519, appraiser_s5519, description_s5519, price_s5519);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5624, price_s5624);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s5694, appraiser_s5694, offerPrice_s5694);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5918);
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
var description_s5572: int;
var price_s5572: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s5572, price_s5572);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


