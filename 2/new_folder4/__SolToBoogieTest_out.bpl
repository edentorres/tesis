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
procedure {:public} {:inline 1} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s263: int, inspector_s263: Ref, appraiser_s263: Ref, description_s263: int, price_s263: int);
procedure {:public} {:inline 1} validCombination0x0x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s525: int, inspector_s525: Ref, appraiser_s525: Ref, description_s525: int, price_s525: int);
procedure {:public} {:inline 1} validCombination0x0x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s787: int, inspector_s787: Ref, appraiser_s787: Ref, description_s787: int, price_s787: int);
procedure {:public} {:inline 1} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1087: int, inspector_s1087: Ref, appraiser_s1087: Ref, description_s1087: int, price_s1087: int);
procedure {:public} {:inline 1} validCombination0x0x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1354: int, inspector_s1354: Ref, appraiser_s1354: Ref, description_s1354: int, price_s1354: int);
procedure {:public} {:inline 1} validCombination0x0x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1616: int, inspector_s1616: Ref, appraiser_s1616: Ref, description_s1616: int, price_s1616: int);
procedure {:public} {:inline 1} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1878: int, inspector_s1878: Ref, appraiser_s1878: Ref, description_s1878: int, price_s1878: int);
procedure {:public} {:inline 1} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2140: int, inspector_s2140: Ref, appraiser_s2140: Ref, description_s2140: int, price_s2140: int);
procedure {:public} {:inline 1} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2400: int, inspector_s2400: Ref, appraiser_s2400: Ref, description_s2400: int, price_s2400: int);
procedure {:public} {:inline 1} validCombination0x1x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2660: int, inspector_s2660: Ref, appraiser_s2660: Ref, description_s2660: int, price_s2660: int);
procedure {:public} {:inline 1} validCombination0x1x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2920: int, inspector_s2920: Ref, appraiser_s2920: Ref, description_s2920: int, price_s2920: int);
procedure {:public} {:inline 1} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3218: int, inspector_s3218: Ref, appraiser_s3218: Ref, description_s3218: int, price_s3218: int);
procedure {:public} {:inline 1} validCombination0x1x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3483: int, inspector_s3483: Ref, appraiser_s3483: Ref, description_s3483: int, price_s3483: int);
procedure {:public} {:inline 1} validCombination0x1x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3743: int, inspector_s3743: Ref, appraiser_s3743: Ref, description_s3743: int, price_s3743: int);
procedure {:public} {:inline 1} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4003: int, inspector_s4003: Ref, appraiser_s4003: Ref, description_s4003: int, price_s4003: int);
procedure {:public} {:inline 1} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4263: int, inspector_s4263: Ref, appraiser_s4263: Ref, description_s4263: int, price_s4263: int);
procedure {:public} {:inline 1} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4521: int, inspector_s4521: Ref, appraiser_s4521: Ref, description_s4521: int, price_s4521: int);
procedure {:public} {:inline 1} validCombination0x2x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4779: int, inspector_s4779: Ref, appraiser_s4779: Ref, description_s4779: int, price_s4779: int);
procedure {:public} {:inline 1} validCombination0x2x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5037: int, inspector_s5037: Ref, appraiser_s5037: Ref, description_s5037: int, price_s5037: int);
procedure {:public} {:inline 1} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5333: int, inspector_s5333: Ref, appraiser_s5333: Ref, description_s5333: int, price_s5333: int);
procedure {:public} {:inline 1} validCombination0x2x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5596: int, inspector_s5596: Ref, appraiser_s5596: Ref, description_s5596: int, price_s5596: int);
procedure {:public} {:inline 1} validCombination0x2x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5854: int, inspector_s5854: Ref, appraiser_s5854: Ref, description_s5854: int, price_s5854: int);
procedure {:public} {:inline 1} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6112: int, inspector_s6112: Ref, appraiser_s6112: Ref, description_s6112: int, price_s6112: int);
procedure {:public} {:inline 1} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6370: int, inspector_s6370: Ref, appraiser_s6370: Ref, description_s6370: int, price_s6370: int);
procedure {:public} {:inline 1} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6628: int, inspector_s6628: Ref, appraiser_s6628: Ref, description_s6628: int, price_s6628: int);
procedure {:public} {:inline 1} validCombination0x3x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6886: int, inspector_s6886: Ref, appraiser_s6886: Ref, description_s6886: int, price_s6886: int);
procedure {:public} {:inline 1} validCombination0x3x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7144: int, inspector_s7144: Ref, appraiser_s7144: Ref, description_s7144: int, price_s7144: int);
procedure {:public} {:inline 1} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7440: int, inspector_s7440: Ref, appraiser_s7440: Ref, description_s7440: int, price_s7440: int);
procedure {:public} {:inline 1} validCombination0x3x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7703: int, inspector_s7703: Ref, appraiser_s7703: Ref, description_s7703: int, price_s7703: int);
procedure {:public} {:inline 1} validCombination0x3x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7961: int, inspector_s7961: Ref, appraiser_s7961: Ref, description_s7961: int, price_s7961: int);
procedure {:public} {:inline 1} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8219: int, inspector_s8219: Ref, appraiser_s8219: Ref, description_s8219: int, price_s8219: int);
procedure {:public} {:inline 1} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8477: int, inspector_s8477: Ref, appraiser_s8477: Ref, description_s8477: int, price_s8477: int);
procedure {:public} {:inline 1} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8731: int, inspector_s8731: Ref, appraiser_s8731: Ref, description_s8731: int, price_s8731: int);
procedure {:public} {:inline 1} validCombination0x4x3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8985: int, inspector_s8985: Ref, appraiser_s8985: Ref, description_s8985: int, price_s8985: int);
procedure {:public} {:inline 1} validCombination0x4x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9239: int, inspector_s9239: Ref, appraiser_s9239: Ref, description_s9239: int, price_s9239: int);
procedure {:public} {:inline 1} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9531: int, inspector_s9531: Ref, appraiser_s9531: Ref, description_s9531: int, price_s9531: int);
procedure {:public} {:inline 1} validCombination0x4x6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s9790: int, inspector_s9790: Ref, appraiser_s9790: Ref, description_s9790: int, price_s9790: int);
procedure {:public} {:inline 1} validCombination0x4x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10044: int, inspector_s10044: Ref, appraiser_s10044: Ref, description_s10044: int, price_s10044: int);
procedure {:public} {:inline 1} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10298: int, inspector_s10298: Ref, appraiser_s10298: Ref, description_s10298: int, price_s10298: int);
procedure {:public} {:inline 1} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10552: int, inspector_s10552: Ref, appraiser_s10552: Ref, description_s10552: int, price_s10552: int);
implementation validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10552: int, inspector_s10552: Ref, appraiser_s10552: Ref, description_s10552: int, price_s10552: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s10552);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s10552);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s10552);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10552);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10552);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 279} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (true)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 280} (true);
assume ((InstanceInspector_AssetTransfer[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 282} (true);
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 282} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 429043601;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10605);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10605);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 299} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 299} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 300} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s10605) >= (0));
AskingPrice_AssetTransfer[this] := price_s10605;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 301} (true);
Description_AssetTransfer[this] := description_s10605;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 302} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10605: int, price_s10605: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10605);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10605);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s10605, price_s10605);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 307} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 308} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 312} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 312} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 313} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10657: int, price_s10657: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s10657: int, price_s10657: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s10657);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s10657);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 318} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 319} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 322} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 323} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 327} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 327} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 328} (true);
Description_AssetTransfer[this] := description_s10657;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 329} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s10657) >= (0));
AskingPrice_AssetTransfer[this] := price_s10657;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s10727: Ref, appraiser_s10727: Ref, offerPrice_s10727: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s10727: Ref, appraiser_s10727: Ref, offerPrice_s10727: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s10727);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s10727);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s10727);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 334} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s10727) >= (0));
if ((((inspector_s10727) == (null)) || ((appraiser_s10727) == (null))) || ((offerPrice_s10727) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 338} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 338} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 339} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 342} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 342} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 343} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 348} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 348} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 349} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 350} (true);
InstanceInspector_AssetTransfer[this] := inspector_s10727;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 351} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s10727;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 352} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s10727) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s10727;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 353} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 358} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 359} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 362} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 363} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 367} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 367} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 368} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 373} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 373} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 377} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 377} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 378} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 382} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 383} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 384} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 389} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 389} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 394} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 394} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 395} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 401} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 401} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 402} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 408} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 409} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 410} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 410} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 412} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 413} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 415} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 416} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 417} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 421} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 421} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 423} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 424} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 426} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 427} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 428} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10951: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s10951: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s10951);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 435} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 436} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 439} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 439} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 439} (true);
assume ((offerPrice_s10951) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s10951) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 444} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 444} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 445} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s10951) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s10951;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 450} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 450} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 454} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 454} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 455} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 459} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 459} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 460} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 461} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 462} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 467} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 468} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 472} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 472} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 472} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 474} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 476} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 477} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 478} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 479} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 484} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 484} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 489} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 490} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 494} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 494} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 494} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 496} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 498} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 499} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 500} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 501} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 506} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder4/CombinationsTemp4.sol"} {:sourceLine 506} (true);
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
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10605, price_s10605);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (50)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s263, inspector_s263, appraiser_s263, description_s263, price_s263);
} else if ((choice) == (49)) {
call validCombination0x0x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s525, inspector_s525, appraiser_s525, description_s525, price_s525);
} else if ((choice) == (48)) {
call validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s787, inspector_s787, appraiser_s787, description_s787, price_s787);
} else if ((choice) == (47)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1087, inspector_s1087, appraiser_s1087, description_s1087, price_s1087);
} else if ((choice) == (46)) {
call validCombination0x0x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1354, inspector_s1354, appraiser_s1354, description_s1354, price_s1354);
} else if ((choice) == (45)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1616, inspector_s1616, appraiser_s1616, description_s1616, price_s1616);
} else if ((choice) == (44)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1878, inspector_s1878, appraiser_s1878, description_s1878, price_s1878);
} else if ((choice) == (43)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2140, inspector_s2140, appraiser_s2140, description_s2140, price_s2140);
} else if ((choice) == (42)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2400, inspector_s2400, appraiser_s2400, description_s2400, price_s2400);
} else if ((choice) == (41)) {
call validCombination0x1x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2660, inspector_s2660, appraiser_s2660, description_s2660, price_s2660);
} else if ((choice) == (40)) {
call validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2920, inspector_s2920, appraiser_s2920, description_s2920, price_s2920);
} else if ((choice) == (39)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3218, inspector_s3218, appraiser_s3218, description_s3218, price_s3218);
} else if ((choice) == (38)) {
call validCombination0x1x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3483, inspector_s3483, appraiser_s3483, description_s3483, price_s3483);
} else if ((choice) == (37)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3743, inspector_s3743, appraiser_s3743, description_s3743, price_s3743);
} else if ((choice) == (36)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4003, inspector_s4003, appraiser_s4003, description_s4003, price_s4003);
} else if ((choice) == (35)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4263, inspector_s4263, appraiser_s4263, description_s4263, price_s4263);
} else if ((choice) == (34)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4521, inspector_s4521, appraiser_s4521, description_s4521, price_s4521);
} else if ((choice) == (33)) {
call validCombination0x2x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4779, inspector_s4779, appraiser_s4779, description_s4779, price_s4779);
} else if ((choice) == (32)) {
call validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5037, inspector_s5037, appraiser_s5037, description_s5037, price_s5037);
} else if ((choice) == (31)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5333, inspector_s5333, appraiser_s5333, description_s5333, price_s5333);
} else if ((choice) == (30)) {
call validCombination0x2x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5596, inspector_s5596, appraiser_s5596, description_s5596, price_s5596);
} else if ((choice) == (29)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5854, inspector_s5854, appraiser_s5854, description_s5854, price_s5854);
} else if ((choice) == (28)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6112, inspector_s6112, appraiser_s6112, description_s6112, price_s6112);
} else if ((choice) == (27)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6370, inspector_s6370, appraiser_s6370, description_s6370, price_s6370);
} else if ((choice) == (26)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6628, inspector_s6628, appraiser_s6628, description_s6628, price_s6628);
} else if ((choice) == (25)) {
call validCombination0x3x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6886, inspector_s6886, appraiser_s6886, description_s6886, price_s6886);
} else if ((choice) == (24)) {
call validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7144, inspector_s7144, appraiser_s7144, description_s7144, price_s7144);
} else if ((choice) == (23)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7440, inspector_s7440, appraiser_s7440, description_s7440, price_s7440);
} else if ((choice) == (22)) {
call validCombination0x3x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7703, inspector_s7703, appraiser_s7703, description_s7703, price_s7703);
} else if ((choice) == (21)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7961, inspector_s7961, appraiser_s7961, description_s7961, price_s7961);
} else if ((choice) == (20)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8219, inspector_s8219, appraiser_s8219, description_s8219, price_s8219);
} else if ((choice) == (19)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8477, inspector_s8477, appraiser_s8477, description_s8477, price_s8477);
} else if ((choice) == (18)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8731, inspector_s8731, appraiser_s8731, description_s8731, price_s8731);
} else if ((choice) == (17)) {
call validCombination0x4x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8985, inspector_s8985, appraiser_s8985, description_s8985, price_s8985);
} else if ((choice) == (16)) {
call validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9239, inspector_s9239, appraiser_s9239, description_s9239, price_s9239);
} else if ((choice) == (15)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9531, inspector_s9531, appraiser_s9531, description_s9531, price_s9531);
} else if ((choice) == (14)) {
call validCombination0x4x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9790, inspector_s9790, appraiser_s9790, description_s9790, price_s9790);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10044, inspector_s10044, appraiser_s10044, description_s10044, price_s10044);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10298, inspector_s10298, appraiser_s10298, description_s10298, price_s10298);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10552, inspector_s10552, appraiser_s10552, description_s10552, price_s10552);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10657, price_s10657);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s10727, appraiser_s10727, offerPrice_s10727);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10951);
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
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (50)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s263, inspector_s263, appraiser_s263, description_s263, price_s263);
} else if ((choice) == (49)) {
call validCombination0x0x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s525, inspector_s525, appraiser_s525, description_s525, price_s525);
} else if ((choice) == (48)) {
call validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s787, inspector_s787, appraiser_s787, description_s787, price_s787);
} else if ((choice) == (47)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1087, inspector_s1087, appraiser_s1087, description_s1087, price_s1087);
} else if ((choice) == (46)) {
call validCombination0x0x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1354, inspector_s1354, appraiser_s1354, description_s1354, price_s1354);
} else if ((choice) == (45)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1616, inspector_s1616, appraiser_s1616, description_s1616, price_s1616);
} else if ((choice) == (44)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1878, inspector_s1878, appraiser_s1878, description_s1878, price_s1878);
} else if ((choice) == (43)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2140, inspector_s2140, appraiser_s2140, description_s2140, price_s2140);
} else if ((choice) == (42)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2400, inspector_s2400, appraiser_s2400, description_s2400, price_s2400);
} else if ((choice) == (41)) {
call validCombination0x1x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2660, inspector_s2660, appraiser_s2660, description_s2660, price_s2660);
} else if ((choice) == (40)) {
call validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2920, inspector_s2920, appraiser_s2920, description_s2920, price_s2920);
} else if ((choice) == (39)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3218, inspector_s3218, appraiser_s3218, description_s3218, price_s3218);
} else if ((choice) == (38)) {
call validCombination0x1x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3483, inspector_s3483, appraiser_s3483, description_s3483, price_s3483);
} else if ((choice) == (37)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3743, inspector_s3743, appraiser_s3743, description_s3743, price_s3743);
} else if ((choice) == (36)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4003, inspector_s4003, appraiser_s4003, description_s4003, price_s4003);
} else if ((choice) == (35)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4263, inspector_s4263, appraiser_s4263, description_s4263, price_s4263);
} else if ((choice) == (34)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4521, inspector_s4521, appraiser_s4521, description_s4521, price_s4521);
} else if ((choice) == (33)) {
call validCombination0x2x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4779, inspector_s4779, appraiser_s4779, description_s4779, price_s4779);
} else if ((choice) == (32)) {
call validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5037, inspector_s5037, appraiser_s5037, description_s5037, price_s5037);
} else if ((choice) == (31)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5333, inspector_s5333, appraiser_s5333, description_s5333, price_s5333);
} else if ((choice) == (30)) {
call validCombination0x2x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5596, inspector_s5596, appraiser_s5596, description_s5596, price_s5596);
} else if ((choice) == (29)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5854, inspector_s5854, appraiser_s5854, description_s5854, price_s5854);
} else if ((choice) == (28)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6112, inspector_s6112, appraiser_s6112, description_s6112, price_s6112);
} else if ((choice) == (27)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6370, inspector_s6370, appraiser_s6370, description_s6370, price_s6370);
} else if ((choice) == (26)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6628, inspector_s6628, appraiser_s6628, description_s6628, price_s6628);
} else if ((choice) == (25)) {
call validCombination0x3x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6886, inspector_s6886, appraiser_s6886, description_s6886, price_s6886);
} else if ((choice) == (24)) {
call validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7144, inspector_s7144, appraiser_s7144, description_s7144, price_s7144);
} else if ((choice) == (23)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7440, inspector_s7440, appraiser_s7440, description_s7440, price_s7440);
} else if ((choice) == (22)) {
call validCombination0x3x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7703, inspector_s7703, appraiser_s7703, description_s7703, price_s7703);
} else if ((choice) == (21)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7961, inspector_s7961, appraiser_s7961, description_s7961, price_s7961);
} else if ((choice) == (20)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8219, inspector_s8219, appraiser_s8219, description_s8219, price_s8219);
} else if ((choice) == (19)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8477, inspector_s8477, appraiser_s8477, description_s8477, price_s8477);
} else if ((choice) == (18)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8731, inspector_s8731, appraiser_s8731, description_s8731, price_s8731);
} else if ((choice) == (17)) {
call validCombination0x4x3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8985, inspector_s8985, appraiser_s8985, description_s8985, price_s8985);
} else if ((choice) == (16)) {
call validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9239, inspector_s9239, appraiser_s9239, description_s9239, price_s9239);
} else if ((choice) == (15)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9531, inspector_s9531, appraiser_s9531, description_s9531, price_s9531);
} else if ((choice) == (14)) {
call validCombination0x4x6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s9790, inspector_s9790, appraiser_s9790, description_s9790, price_s9790);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10044, inspector_s10044, appraiser_s10044, description_s10044, price_s10044);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10298, inspector_s10298, appraiser_s10298, description_s10298, price_s10298);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10552, inspector_s10552, appraiser_s10552, description_s10552, price_s10552);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10657, price_s10657);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s10727, appraiser_s10727, offerPrice_s10727);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s10951);
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
var description_s10605: int;
var price_s10605: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s10605, price_s10605);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


