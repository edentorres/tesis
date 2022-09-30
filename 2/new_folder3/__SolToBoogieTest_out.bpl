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
procedure {:public} {:inline 1} validCombination0x0x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s533: int, inspector_s533: Ref, appraiser_s533: Ref, description_s533: int, price_s533: int);
procedure {:public} {:inline 1} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s837: int, inspector_s837: Ref, appraiser_s837: Ref, description_s837: int, price_s837: int);
procedure {:public} {:inline 1} validCombination0x0x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1103: int, inspector_s1103: Ref, appraiser_s1103: Ref, description_s1103: int, price_s1103: int);
procedure {:public} {:inline 1} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1369: int, inspector_s1369: Ref, appraiser_s1369: Ref, description_s1369: int, price_s1369: int);
procedure {:public} {:inline 1} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1635: int, inspector_s1635: Ref, appraiser_s1635: Ref, description_s1635: int, price_s1635: int);
procedure {:public} {:inline 1} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1899: int, inspector_s1899: Ref, appraiser_s1899: Ref, description_s1899: int, price_s1899: int);
procedure {:public} {:inline 1} validCombination0x1x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2163: int, inspector_s2163: Ref, appraiser_s2163: Ref, description_s2163: int, price_s2163: int);
procedure {:public} {:inline 1} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2465: int, inspector_s2465: Ref, appraiser_s2465: Ref, description_s2465: int, price_s2465: int);
procedure {:public} {:inline 1} validCombination0x1x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2729: int, inspector_s2729: Ref, appraiser_s2729: Ref, description_s2729: int, price_s2729: int);
procedure {:public} {:inline 1} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2993: int, inspector_s2993: Ref, appraiser_s2993: Ref, description_s2993: int, price_s2993: int);
procedure {:public} {:inline 1} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3257: int, inspector_s3257: Ref, appraiser_s3257: Ref, description_s3257: int, price_s3257: int);
procedure {:public} {:inline 1} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3519: int, inspector_s3519: Ref, appraiser_s3519: Ref, description_s3519: int, price_s3519: int);
procedure {:public} {:inline 1} validCombination0x2x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3781: int, inspector_s3781: Ref, appraiser_s3781: Ref, description_s3781: int, price_s3781: int);
procedure {:public} {:inline 1} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4081: int, inspector_s4081: Ref, appraiser_s4081: Ref, description_s4081: int, price_s4081: int);
procedure {:public} {:inline 1} validCombination0x2x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4343: int, inspector_s4343: Ref, appraiser_s4343: Ref, description_s4343: int, price_s4343: int);
procedure {:public} {:inline 1} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4605: int, inspector_s4605: Ref, appraiser_s4605: Ref, description_s4605: int, price_s4605: int);
procedure {:public} {:inline 1} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4867: int, inspector_s4867: Ref, appraiser_s4867: Ref, description_s4867: int, price_s4867: int);
procedure {:public} {:inline 1} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5129: int, inspector_s5129: Ref, appraiser_s5129: Ref, description_s5129: int, price_s5129: int);
procedure {:public} {:inline 1} validCombination0x3x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5391: int, inspector_s5391: Ref, appraiser_s5391: Ref, description_s5391: int, price_s5391: int);
procedure {:public} {:inline 1} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5691: int, inspector_s5691: Ref, appraiser_s5691: Ref, description_s5691: int, price_s5691: int);
procedure {:public} {:inline 1} validCombination0x3x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5953: int, inspector_s5953: Ref, appraiser_s5953: Ref, description_s5953: int, price_s5953: int);
procedure {:public} {:inline 1} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6215: int, inspector_s6215: Ref, appraiser_s6215: Ref, description_s6215: int, price_s6215: int);
procedure {:public} {:inline 1} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6477: int, inspector_s6477: Ref, appraiser_s6477: Ref, description_s6477: int, price_s6477: int);
procedure {:public} {:inline 1} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6735: int, inspector_s6735: Ref, appraiser_s6735: Ref, description_s6735: int, price_s6735: int);
procedure {:public} {:inline 1} validCombination0x4x4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6993: int, inspector_s6993: Ref, appraiser_s6993: Ref, description_s6993: int, price_s6993: int);
procedure {:public} {:inline 1} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7289: int, inspector_s7289: Ref, appraiser_s7289: Ref, description_s7289: int, price_s7289: int);
procedure {:public} {:inline 1} validCombination0x4x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7547: int, inspector_s7547: Ref, appraiser_s7547: Ref, description_s7547: int, price_s7547: int);
procedure {:public} {:inline 1} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7805: int, inspector_s7805: Ref, appraiser_s7805: Ref, description_s7805: int, price_s7805: int);
procedure {:public} {:inline 1} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8063: int, inspector_s8063: Ref, appraiser_s8063: Ref, description_s8063: int, price_s8063: int);
implementation validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8063: int, inspector_s8063: Ref, appraiser_s8063: Ref, description_s8063: int, price_s8063: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8063);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s8063);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s8063);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8063);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8063);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 209} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 209} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (true)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 210} (true);
assume ((InstanceInspector_AssetTransfer[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 212} (true);
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 212} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 545043050;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8116);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8116);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 228} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 229} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 230} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s8116) >= (0));
AskingPrice_AssetTransfer[this] := price_s8116;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 231} (true);
Description_AssetTransfer[this] := description_s8116;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 232} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8116: int, price_s8116: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8116);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8116);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s8116, price_s8116);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 237} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 240} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 242} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 243} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8168: int, price_s8168: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s8168: int, price_s8168: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s8168);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s8168);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 248} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 248} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 251} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 252} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 252} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 255} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 257} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 258} (true);
Description_AssetTransfer[this] := description_s8168;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 259} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s8168) >= (0));
AskingPrice_AssetTransfer[this] := price_s8168;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8238: Ref, appraiser_s8238: Ref, offerPrice_s8238: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s8238: Ref, appraiser_s8238: Ref, offerPrice_s8238: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s8238);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s8238);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8238);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 264} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 264} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s8238) >= (0));
if ((((inspector_s8238) == (null)) || ((appraiser_s8238) == (null))) || ((offerPrice_s8238) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 267} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 268} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 268} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 272} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 273} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 276} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 278} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 279} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 279} (true);
InstanceInspector_AssetTransfer[this] := inspector_s8238;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 280} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s8238;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 282} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s8238) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s8238;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 282} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 288} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 292} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 292} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 295} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 297} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 297} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 303} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 303} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 306} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 307} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 307} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 312} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 313} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 314} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 319} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 319} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 324} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 324} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 329} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 331} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 331} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 336} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 338} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 338} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 340} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 340} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 342} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 342} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 344} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 346} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 347} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 351} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 351} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 353} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 353} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 355} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 357} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 358} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8462: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s8462: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s8462);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 365} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 368} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 369} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 369} (true);
assume ((offerPrice_s8462) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s8462) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 372} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 374} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 375} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s8462) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s8462;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 380} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 380} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 383} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 384} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 384} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 387} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 389} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 390} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 391} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 392} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 397} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 397} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 400} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 402} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 402} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 404} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 405} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 406} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 408} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 413} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 414} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 419} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 419} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 424} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 424} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 427} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 428} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 430} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 430} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 435} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder3/CombinationsTemp3.sol"} {:sourceLine 436} (true);
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
var offerPrice_s533: int;
var inspector_s533: Ref;
var appraiser_s533: Ref;
var description_s533: int;
var price_s533: int;
var offerPrice_s837: int;
var inspector_s837: Ref;
var appraiser_s837: Ref;
var description_s837: int;
var price_s837: int;
var offerPrice_s1103: int;
var inspector_s1103: Ref;
var appraiser_s1103: Ref;
var description_s1103: int;
var price_s1103: int;
var offerPrice_s1369: int;
var inspector_s1369: Ref;
var appraiser_s1369: Ref;
var description_s1369: int;
var price_s1369: int;
var offerPrice_s1635: int;
var inspector_s1635: Ref;
var appraiser_s1635: Ref;
var description_s1635: int;
var price_s1635: int;
var offerPrice_s1899: int;
var inspector_s1899: Ref;
var appraiser_s1899: Ref;
var description_s1899: int;
var price_s1899: int;
var offerPrice_s2163: int;
var inspector_s2163: Ref;
var appraiser_s2163: Ref;
var description_s2163: int;
var price_s2163: int;
var offerPrice_s2465: int;
var inspector_s2465: Ref;
var appraiser_s2465: Ref;
var description_s2465: int;
var price_s2465: int;
var offerPrice_s2729: int;
var inspector_s2729: Ref;
var appraiser_s2729: Ref;
var description_s2729: int;
var price_s2729: int;
var offerPrice_s2993: int;
var inspector_s2993: Ref;
var appraiser_s2993: Ref;
var description_s2993: int;
var price_s2993: int;
var offerPrice_s3257: int;
var inspector_s3257: Ref;
var appraiser_s3257: Ref;
var description_s3257: int;
var price_s3257: int;
var offerPrice_s3519: int;
var inspector_s3519: Ref;
var appraiser_s3519: Ref;
var description_s3519: int;
var price_s3519: int;
var offerPrice_s3781: int;
var inspector_s3781: Ref;
var appraiser_s3781: Ref;
var description_s3781: int;
var price_s3781: int;
var offerPrice_s4081: int;
var inspector_s4081: Ref;
var appraiser_s4081: Ref;
var description_s4081: int;
var price_s4081: int;
var offerPrice_s4343: int;
var inspector_s4343: Ref;
var appraiser_s4343: Ref;
var description_s4343: int;
var price_s4343: int;
var offerPrice_s4605: int;
var inspector_s4605: Ref;
var appraiser_s4605: Ref;
var description_s4605: int;
var price_s4605: int;
var offerPrice_s4867: int;
var inspector_s4867: Ref;
var appraiser_s4867: Ref;
var description_s4867: int;
var price_s4867: int;
var offerPrice_s5129: int;
var inspector_s5129: Ref;
var appraiser_s5129: Ref;
var description_s5129: int;
var price_s5129: int;
var offerPrice_s5391: int;
var inspector_s5391: Ref;
var appraiser_s5391: Ref;
var description_s5391: int;
var price_s5391: int;
var offerPrice_s5691: int;
var inspector_s5691: Ref;
var appraiser_s5691: Ref;
var description_s5691: int;
var price_s5691: int;
var offerPrice_s5953: int;
var inspector_s5953: Ref;
var appraiser_s5953: Ref;
var description_s5953: int;
var price_s5953: int;
var offerPrice_s6215: int;
var inspector_s6215: Ref;
var appraiser_s6215: Ref;
var description_s6215: int;
var price_s6215: int;
var offerPrice_s6477: int;
var inspector_s6477: Ref;
var appraiser_s6477: Ref;
var description_s6477: int;
var price_s6477: int;
var offerPrice_s6735: int;
var inspector_s6735: Ref;
var appraiser_s6735: Ref;
var description_s6735: int;
var price_s6735: int;
var offerPrice_s6993: int;
var inspector_s6993: Ref;
var appraiser_s6993: Ref;
var description_s6993: int;
var price_s6993: int;
var offerPrice_s7289: int;
var inspector_s7289: Ref;
var appraiser_s7289: Ref;
var description_s7289: int;
var price_s7289: int;
var offerPrice_s7547: int;
var inspector_s7547: Ref;
var appraiser_s7547: Ref;
var description_s7547: int;
var price_s7547: int;
var offerPrice_s7805: int;
var inspector_s7805: Ref;
var appraiser_s7805: Ref;
var description_s7805: int;
var price_s7805: int;
var offerPrice_s8063: int;
var inspector_s8063: Ref;
var appraiser_s8063: Ref;
var description_s8063: int;
var price_s8063: int;
var description_s8116: int;
var price_s8116: int;
var description_s8168: int;
var price_s8168: int;
var inspector_s8238: Ref;
var appraiser_s8238: Ref;
var offerPrice_s8238: int;
var offerPrice_s8462: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8116, price_s8116);
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
havoc offerPrice_s533;
havoc inspector_s533;
havoc appraiser_s533;
havoc description_s533;
havoc price_s533;
havoc offerPrice_s837;
havoc inspector_s837;
havoc appraiser_s837;
havoc description_s837;
havoc price_s837;
havoc offerPrice_s1103;
havoc inspector_s1103;
havoc appraiser_s1103;
havoc description_s1103;
havoc price_s1103;
havoc offerPrice_s1369;
havoc inspector_s1369;
havoc appraiser_s1369;
havoc description_s1369;
havoc price_s1369;
havoc offerPrice_s1635;
havoc inspector_s1635;
havoc appraiser_s1635;
havoc description_s1635;
havoc price_s1635;
havoc offerPrice_s1899;
havoc inspector_s1899;
havoc appraiser_s1899;
havoc description_s1899;
havoc price_s1899;
havoc offerPrice_s2163;
havoc inspector_s2163;
havoc appraiser_s2163;
havoc description_s2163;
havoc price_s2163;
havoc offerPrice_s2465;
havoc inspector_s2465;
havoc appraiser_s2465;
havoc description_s2465;
havoc price_s2465;
havoc offerPrice_s2729;
havoc inspector_s2729;
havoc appraiser_s2729;
havoc description_s2729;
havoc price_s2729;
havoc offerPrice_s2993;
havoc inspector_s2993;
havoc appraiser_s2993;
havoc description_s2993;
havoc price_s2993;
havoc offerPrice_s3257;
havoc inspector_s3257;
havoc appraiser_s3257;
havoc description_s3257;
havoc price_s3257;
havoc offerPrice_s3519;
havoc inspector_s3519;
havoc appraiser_s3519;
havoc description_s3519;
havoc price_s3519;
havoc offerPrice_s3781;
havoc inspector_s3781;
havoc appraiser_s3781;
havoc description_s3781;
havoc price_s3781;
havoc offerPrice_s4081;
havoc inspector_s4081;
havoc appraiser_s4081;
havoc description_s4081;
havoc price_s4081;
havoc offerPrice_s4343;
havoc inspector_s4343;
havoc appraiser_s4343;
havoc description_s4343;
havoc price_s4343;
havoc offerPrice_s4605;
havoc inspector_s4605;
havoc appraiser_s4605;
havoc description_s4605;
havoc price_s4605;
havoc offerPrice_s4867;
havoc inspector_s4867;
havoc appraiser_s4867;
havoc description_s4867;
havoc price_s4867;
havoc offerPrice_s5129;
havoc inspector_s5129;
havoc appraiser_s5129;
havoc description_s5129;
havoc price_s5129;
havoc offerPrice_s5391;
havoc inspector_s5391;
havoc appraiser_s5391;
havoc description_s5391;
havoc price_s5391;
havoc offerPrice_s5691;
havoc inspector_s5691;
havoc appraiser_s5691;
havoc description_s5691;
havoc price_s5691;
havoc offerPrice_s5953;
havoc inspector_s5953;
havoc appraiser_s5953;
havoc description_s5953;
havoc price_s5953;
havoc offerPrice_s6215;
havoc inspector_s6215;
havoc appraiser_s6215;
havoc description_s6215;
havoc price_s6215;
havoc offerPrice_s6477;
havoc inspector_s6477;
havoc appraiser_s6477;
havoc description_s6477;
havoc price_s6477;
havoc offerPrice_s6735;
havoc inspector_s6735;
havoc appraiser_s6735;
havoc description_s6735;
havoc price_s6735;
havoc offerPrice_s6993;
havoc inspector_s6993;
havoc appraiser_s6993;
havoc description_s6993;
havoc price_s6993;
havoc offerPrice_s7289;
havoc inspector_s7289;
havoc appraiser_s7289;
havoc description_s7289;
havoc price_s7289;
havoc offerPrice_s7547;
havoc inspector_s7547;
havoc appraiser_s7547;
havoc description_s7547;
havoc price_s7547;
havoc offerPrice_s7805;
havoc inspector_s7805;
havoc appraiser_s7805;
havoc description_s7805;
havoc price_s7805;
havoc offerPrice_s8063;
havoc inspector_s8063;
havoc appraiser_s8063;
havoc description_s8063;
havoc price_s8063;
havoc description_s8116;
havoc price_s8116;
havoc description_s8168;
havoc price_s8168;
havoc inspector_s8238;
havoc appraiser_s8238;
havoc offerPrice_s8238;
havoc offerPrice_s8462;
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
call validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s533, inspector_s533, appraiser_s533, description_s533, price_s533);
} else if ((choice) == (38)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s837, inspector_s837, appraiser_s837, description_s837, price_s837);
} else if ((choice) == (37)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1103, inspector_s1103, appraiser_s1103, description_s1103, price_s1103);
} else if ((choice) == (36)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1369, inspector_s1369, appraiser_s1369, description_s1369, price_s1369);
} else if ((choice) == (35)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1635, inspector_s1635, appraiser_s1635, description_s1635, price_s1635);
} else if ((choice) == (34)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1899, inspector_s1899, appraiser_s1899, description_s1899, price_s1899);
} else if ((choice) == (33)) {
call validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2163, inspector_s2163, appraiser_s2163, description_s2163, price_s2163);
} else if ((choice) == (32)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2465, inspector_s2465, appraiser_s2465, description_s2465, price_s2465);
} else if ((choice) == (31)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2729, inspector_s2729, appraiser_s2729, description_s2729, price_s2729);
} else if ((choice) == (30)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2993, inspector_s2993, appraiser_s2993, description_s2993, price_s2993);
} else if ((choice) == (29)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3257, inspector_s3257, appraiser_s3257, description_s3257, price_s3257);
} else if ((choice) == (28)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3519, inspector_s3519, appraiser_s3519, description_s3519, price_s3519);
} else if ((choice) == (27)) {
call validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3781, inspector_s3781, appraiser_s3781, description_s3781, price_s3781);
} else if ((choice) == (26)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4081, inspector_s4081, appraiser_s4081, description_s4081, price_s4081);
} else if ((choice) == (25)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4343, inspector_s4343, appraiser_s4343, description_s4343, price_s4343);
} else if ((choice) == (24)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4605, inspector_s4605, appraiser_s4605, description_s4605, price_s4605);
} else if ((choice) == (23)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4867, inspector_s4867, appraiser_s4867, description_s4867, price_s4867);
} else if ((choice) == (22)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5129, inspector_s5129, appraiser_s5129, description_s5129, price_s5129);
} else if ((choice) == (21)) {
call validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5391, inspector_s5391, appraiser_s5391, description_s5391, price_s5391);
} else if ((choice) == (20)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5691, inspector_s5691, appraiser_s5691, description_s5691, price_s5691);
} else if ((choice) == (19)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5953, inspector_s5953, appraiser_s5953, description_s5953, price_s5953);
} else if ((choice) == (18)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6215, inspector_s6215, appraiser_s6215, description_s6215, price_s6215);
} else if ((choice) == (17)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6477, inspector_s6477, appraiser_s6477, description_s6477, price_s6477);
} else if ((choice) == (16)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6735, inspector_s6735, appraiser_s6735, description_s6735, price_s6735);
} else if ((choice) == (15)) {
call validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6993, inspector_s6993, appraiser_s6993, description_s6993, price_s6993);
} else if ((choice) == (14)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7289, inspector_s7289, appraiser_s7289, description_s7289, price_s7289);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7547, inspector_s7547, appraiser_s7547, description_s7547, price_s7547);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7805, inspector_s7805, appraiser_s7805, description_s7805, price_s7805);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8063, inspector_s8063, appraiser_s8063, description_s8063, price_s8063);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8168, price_s8168);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s8238, appraiser_s8238, offerPrice_s8238);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8462);
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
var offerPrice_s533: int;
var inspector_s533: Ref;
var appraiser_s533: Ref;
var description_s533: int;
var price_s533: int;
var offerPrice_s837: int;
var inspector_s837: Ref;
var appraiser_s837: Ref;
var description_s837: int;
var price_s837: int;
var offerPrice_s1103: int;
var inspector_s1103: Ref;
var appraiser_s1103: Ref;
var description_s1103: int;
var price_s1103: int;
var offerPrice_s1369: int;
var inspector_s1369: Ref;
var appraiser_s1369: Ref;
var description_s1369: int;
var price_s1369: int;
var offerPrice_s1635: int;
var inspector_s1635: Ref;
var appraiser_s1635: Ref;
var description_s1635: int;
var price_s1635: int;
var offerPrice_s1899: int;
var inspector_s1899: Ref;
var appraiser_s1899: Ref;
var description_s1899: int;
var price_s1899: int;
var offerPrice_s2163: int;
var inspector_s2163: Ref;
var appraiser_s2163: Ref;
var description_s2163: int;
var price_s2163: int;
var offerPrice_s2465: int;
var inspector_s2465: Ref;
var appraiser_s2465: Ref;
var description_s2465: int;
var price_s2465: int;
var offerPrice_s2729: int;
var inspector_s2729: Ref;
var appraiser_s2729: Ref;
var description_s2729: int;
var price_s2729: int;
var offerPrice_s2993: int;
var inspector_s2993: Ref;
var appraiser_s2993: Ref;
var description_s2993: int;
var price_s2993: int;
var offerPrice_s3257: int;
var inspector_s3257: Ref;
var appraiser_s3257: Ref;
var description_s3257: int;
var price_s3257: int;
var offerPrice_s3519: int;
var inspector_s3519: Ref;
var appraiser_s3519: Ref;
var description_s3519: int;
var price_s3519: int;
var offerPrice_s3781: int;
var inspector_s3781: Ref;
var appraiser_s3781: Ref;
var description_s3781: int;
var price_s3781: int;
var offerPrice_s4081: int;
var inspector_s4081: Ref;
var appraiser_s4081: Ref;
var description_s4081: int;
var price_s4081: int;
var offerPrice_s4343: int;
var inspector_s4343: Ref;
var appraiser_s4343: Ref;
var description_s4343: int;
var price_s4343: int;
var offerPrice_s4605: int;
var inspector_s4605: Ref;
var appraiser_s4605: Ref;
var description_s4605: int;
var price_s4605: int;
var offerPrice_s4867: int;
var inspector_s4867: Ref;
var appraiser_s4867: Ref;
var description_s4867: int;
var price_s4867: int;
var offerPrice_s5129: int;
var inspector_s5129: Ref;
var appraiser_s5129: Ref;
var description_s5129: int;
var price_s5129: int;
var offerPrice_s5391: int;
var inspector_s5391: Ref;
var appraiser_s5391: Ref;
var description_s5391: int;
var price_s5391: int;
var offerPrice_s5691: int;
var inspector_s5691: Ref;
var appraiser_s5691: Ref;
var description_s5691: int;
var price_s5691: int;
var offerPrice_s5953: int;
var inspector_s5953: Ref;
var appraiser_s5953: Ref;
var description_s5953: int;
var price_s5953: int;
var offerPrice_s6215: int;
var inspector_s6215: Ref;
var appraiser_s6215: Ref;
var description_s6215: int;
var price_s6215: int;
var offerPrice_s6477: int;
var inspector_s6477: Ref;
var appraiser_s6477: Ref;
var description_s6477: int;
var price_s6477: int;
var offerPrice_s6735: int;
var inspector_s6735: Ref;
var appraiser_s6735: Ref;
var description_s6735: int;
var price_s6735: int;
var offerPrice_s6993: int;
var inspector_s6993: Ref;
var appraiser_s6993: Ref;
var description_s6993: int;
var price_s6993: int;
var offerPrice_s7289: int;
var inspector_s7289: Ref;
var appraiser_s7289: Ref;
var description_s7289: int;
var price_s7289: int;
var offerPrice_s7547: int;
var inspector_s7547: Ref;
var appraiser_s7547: Ref;
var description_s7547: int;
var price_s7547: int;
var offerPrice_s7805: int;
var inspector_s7805: Ref;
var appraiser_s7805: Ref;
var description_s7805: int;
var price_s7805: int;
var offerPrice_s8063: int;
var inspector_s8063: Ref;
var appraiser_s8063: Ref;
var description_s8063: int;
var price_s8063: int;
var description_s8116: int;
var price_s8116: int;
var description_s8168: int;
var price_s8168: int;
var inspector_s8238: Ref;
var appraiser_s8238: Ref;
var offerPrice_s8238: int;
var offerPrice_s8462: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s267;
havoc inspector_s267;
havoc appraiser_s267;
havoc description_s267;
havoc price_s267;
havoc offerPrice_s533;
havoc inspector_s533;
havoc appraiser_s533;
havoc description_s533;
havoc price_s533;
havoc offerPrice_s837;
havoc inspector_s837;
havoc appraiser_s837;
havoc description_s837;
havoc price_s837;
havoc offerPrice_s1103;
havoc inspector_s1103;
havoc appraiser_s1103;
havoc description_s1103;
havoc price_s1103;
havoc offerPrice_s1369;
havoc inspector_s1369;
havoc appraiser_s1369;
havoc description_s1369;
havoc price_s1369;
havoc offerPrice_s1635;
havoc inspector_s1635;
havoc appraiser_s1635;
havoc description_s1635;
havoc price_s1635;
havoc offerPrice_s1899;
havoc inspector_s1899;
havoc appraiser_s1899;
havoc description_s1899;
havoc price_s1899;
havoc offerPrice_s2163;
havoc inspector_s2163;
havoc appraiser_s2163;
havoc description_s2163;
havoc price_s2163;
havoc offerPrice_s2465;
havoc inspector_s2465;
havoc appraiser_s2465;
havoc description_s2465;
havoc price_s2465;
havoc offerPrice_s2729;
havoc inspector_s2729;
havoc appraiser_s2729;
havoc description_s2729;
havoc price_s2729;
havoc offerPrice_s2993;
havoc inspector_s2993;
havoc appraiser_s2993;
havoc description_s2993;
havoc price_s2993;
havoc offerPrice_s3257;
havoc inspector_s3257;
havoc appraiser_s3257;
havoc description_s3257;
havoc price_s3257;
havoc offerPrice_s3519;
havoc inspector_s3519;
havoc appraiser_s3519;
havoc description_s3519;
havoc price_s3519;
havoc offerPrice_s3781;
havoc inspector_s3781;
havoc appraiser_s3781;
havoc description_s3781;
havoc price_s3781;
havoc offerPrice_s4081;
havoc inspector_s4081;
havoc appraiser_s4081;
havoc description_s4081;
havoc price_s4081;
havoc offerPrice_s4343;
havoc inspector_s4343;
havoc appraiser_s4343;
havoc description_s4343;
havoc price_s4343;
havoc offerPrice_s4605;
havoc inspector_s4605;
havoc appraiser_s4605;
havoc description_s4605;
havoc price_s4605;
havoc offerPrice_s4867;
havoc inspector_s4867;
havoc appraiser_s4867;
havoc description_s4867;
havoc price_s4867;
havoc offerPrice_s5129;
havoc inspector_s5129;
havoc appraiser_s5129;
havoc description_s5129;
havoc price_s5129;
havoc offerPrice_s5391;
havoc inspector_s5391;
havoc appraiser_s5391;
havoc description_s5391;
havoc price_s5391;
havoc offerPrice_s5691;
havoc inspector_s5691;
havoc appraiser_s5691;
havoc description_s5691;
havoc price_s5691;
havoc offerPrice_s5953;
havoc inspector_s5953;
havoc appraiser_s5953;
havoc description_s5953;
havoc price_s5953;
havoc offerPrice_s6215;
havoc inspector_s6215;
havoc appraiser_s6215;
havoc description_s6215;
havoc price_s6215;
havoc offerPrice_s6477;
havoc inspector_s6477;
havoc appraiser_s6477;
havoc description_s6477;
havoc price_s6477;
havoc offerPrice_s6735;
havoc inspector_s6735;
havoc appraiser_s6735;
havoc description_s6735;
havoc price_s6735;
havoc offerPrice_s6993;
havoc inspector_s6993;
havoc appraiser_s6993;
havoc description_s6993;
havoc price_s6993;
havoc offerPrice_s7289;
havoc inspector_s7289;
havoc appraiser_s7289;
havoc description_s7289;
havoc price_s7289;
havoc offerPrice_s7547;
havoc inspector_s7547;
havoc appraiser_s7547;
havoc description_s7547;
havoc price_s7547;
havoc offerPrice_s7805;
havoc inspector_s7805;
havoc appraiser_s7805;
havoc description_s7805;
havoc price_s7805;
havoc offerPrice_s8063;
havoc inspector_s8063;
havoc appraiser_s8063;
havoc description_s8063;
havoc price_s8063;
havoc description_s8116;
havoc price_s8116;
havoc description_s8168;
havoc price_s8168;
havoc inspector_s8238;
havoc appraiser_s8238;
havoc offerPrice_s8238;
havoc offerPrice_s8462;
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
call validCombination0x0x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s533, inspector_s533, appraiser_s533, description_s533, price_s533);
} else if ((choice) == (38)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s837, inspector_s837, appraiser_s837, description_s837, price_s837);
} else if ((choice) == (37)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1103, inspector_s1103, appraiser_s1103, description_s1103, price_s1103);
} else if ((choice) == (36)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1369, inspector_s1369, appraiser_s1369, description_s1369, price_s1369);
} else if ((choice) == (35)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1635, inspector_s1635, appraiser_s1635, description_s1635, price_s1635);
} else if ((choice) == (34)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1899, inspector_s1899, appraiser_s1899, description_s1899, price_s1899);
} else if ((choice) == (33)) {
call validCombination0x1x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2163, inspector_s2163, appraiser_s2163, description_s2163, price_s2163);
} else if ((choice) == (32)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2465, inspector_s2465, appraiser_s2465, description_s2465, price_s2465);
} else if ((choice) == (31)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2729, inspector_s2729, appraiser_s2729, description_s2729, price_s2729);
} else if ((choice) == (30)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2993, inspector_s2993, appraiser_s2993, description_s2993, price_s2993);
} else if ((choice) == (29)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3257, inspector_s3257, appraiser_s3257, description_s3257, price_s3257);
} else if ((choice) == (28)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3519, inspector_s3519, appraiser_s3519, description_s3519, price_s3519);
} else if ((choice) == (27)) {
call validCombination0x2x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3781, inspector_s3781, appraiser_s3781, description_s3781, price_s3781);
} else if ((choice) == (26)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4081, inspector_s4081, appraiser_s4081, description_s4081, price_s4081);
} else if ((choice) == (25)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4343, inspector_s4343, appraiser_s4343, description_s4343, price_s4343);
} else if ((choice) == (24)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4605, inspector_s4605, appraiser_s4605, description_s4605, price_s4605);
} else if ((choice) == (23)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4867, inspector_s4867, appraiser_s4867, description_s4867, price_s4867);
} else if ((choice) == (22)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5129, inspector_s5129, appraiser_s5129, description_s5129, price_s5129);
} else if ((choice) == (21)) {
call validCombination0x3x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5391, inspector_s5391, appraiser_s5391, description_s5391, price_s5391);
} else if ((choice) == (20)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5691, inspector_s5691, appraiser_s5691, description_s5691, price_s5691);
} else if ((choice) == (19)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5953, inspector_s5953, appraiser_s5953, description_s5953, price_s5953);
} else if ((choice) == (18)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6215, inspector_s6215, appraiser_s6215, description_s6215, price_s6215);
} else if ((choice) == (17)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6477, inspector_s6477, appraiser_s6477, description_s6477, price_s6477);
} else if ((choice) == (16)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6735, inspector_s6735, appraiser_s6735, description_s6735, price_s6735);
} else if ((choice) == (15)) {
call validCombination0x4x4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6993, inspector_s6993, appraiser_s6993, description_s6993, price_s6993);
} else if ((choice) == (14)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7289, inspector_s7289, appraiser_s7289, description_s7289, price_s7289);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7547, inspector_s7547, appraiser_s7547, description_s7547, price_s7547);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7805, inspector_s7805, appraiser_s7805, description_s7805, price_s7805);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8063, inspector_s8063, appraiser_s8063, description_s8063, price_s8063);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8168, price_s8168);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s8238, appraiser_s8238, offerPrice_s8238);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s8462);
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
var description_s8116: int;
var price_s8116: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s8116, price_s8116);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


