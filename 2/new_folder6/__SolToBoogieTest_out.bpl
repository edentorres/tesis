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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s135: int, inspector_s135: Ref, appraiser_s135: Ref, description_s135: int, price_s135: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s269: int, inspector_s269: Ref, appraiser_s269: Ref, description_s269: int, price_s269: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s403: int, inspector_s403: Ref, appraiser_s403: Ref, description_s403: int, price_s403: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s537: int, inspector_s537: Ref, appraiser_s537: Ref, description_s537: int, price_s537: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s671: int, inspector_s671: Ref, appraiser_s671: Ref, description_s671: int, price_s671: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s805: int, inspector_s805: Ref, appraiser_s805: Ref, description_s805: int, price_s805: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s939: int, inspector_s939: Ref, appraiser_s939: Ref, description_s939: int, price_s939: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1073: int, inspector_s1073: Ref, appraiser_s1073: Ref, description_s1073: int, price_s1073: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1207: int, inspector_s1207: Ref, appraiser_s1207: Ref, description_s1207: int, price_s1207: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1341: int, inspector_s1341: Ref, appraiser_s1341: Ref, description_s1341: int, price_s1341: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1475: int, inspector_s1475: Ref, appraiser_s1475: Ref, description_s1475: int, price_s1475: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1609: int, inspector_s1609: Ref, appraiser_s1609: Ref, description_s1609: int, price_s1609: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1743: int, inspector_s1743: Ref, appraiser_s1743: Ref, description_s1743: int, price_s1743: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1877: int, inspector_s1877: Ref, appraiser_s1877: Ref, description_s1877: int, price_s1877: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2011: int, inspector_s2011: Ref, appraiser_s2011: Ref, description_s2011: int, price_s2011: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2145: int, inspector_s2145: Ref, appraiser_s2145: Ref, description_s2145: int, price_s2145: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2279: int, inspector_s2279: Ref, appraiser_s2279: Ref, description_s2279: int, price_s2279: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2413: int, inspector_s2413: Ref, appraiser_s2413: Ref, description_s2413: int, price_s2413: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2547: int, inspector_s2547: Ref, appraiser_s2547: Ref, description_s2547: int, price_s2547: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2681: int, inspector_s2681: Ref, appraiser_s2681: Ref, description_s2681: int, price_s2681: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2815: int, inspector_s2815: Ref, appraiser_s2815: Ref, description_s2815: int, price_s2815: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2949: int, inspector_s2949: Ref, appraiser_s2949: Ref, description_s2949: int, price_s2949: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3083: int, inspector_s3083: Ref, appraiser_s3083: Ref, description_s3083: int, price_s3083: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3217: int, inspector_s3217: Ref, appraiser_s3217: Ref, description_s3217: int, price_s3217: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3351: int, inspector_s3351: Ref, appraiser_s3351: Ref, description_s3351: int, price_s3351: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3485: int, inspector_s3485: Ref, appraiser_s3485: Ref, description_s3485: int, price_s3485: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3619: int, inspector_s3619: Ref, appraiser_s3619: Ref, description_s3619: int, price_s3619: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3751: int, inspector_s3751: Ref, appraiser_s3751: Ref, description_s3751: int, price_s3751: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3883: int, inspector_s3883: Ref, appraiser_s3883: Ref, description_s3883: int, price_s3883: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4015: int, inspector_s4015: Ref, appraiser_s4015: Ref, description_s4015: int, price_s4015: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4147: int, inspector_s4147: Ref, appraiser_s4147: Ref, description_s4147: int, price_s4147: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4279: int, inspector_s4279: Ref, appraiser_s4279: Ref, description_s4279: int, price_s4279: int);
implementation validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4279: int, inspector_s4279: Ref, appraiser_s4279: Ref, description_s4279: int, price_s4279: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4279);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4279);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4279);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4279);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4279);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 192} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 192} (true);
assume ((((((((((true) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (true)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 197} (true);
assert (false);
}

var InstanceOwner_AssetTransfer: [Ref]Ref;
var Description_AssetTransfer: [Ref]int;
var AskingPrice_AssetTransfer: [Ref]int;
var State_AssetTransfer: [Ref]int;
var InstanceBuyer_AssetTransfer: [Ref]Ref;
var OfferPrice_AssetTransfer: [Ref]int;
var InstanceInspector_AssetTransfer: [Ref]Ref;
var InstanceAppraiser_AssetTransfer: [Ref]Ref;
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4332: int, price_s4332: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4332: int, price_s4332: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 470718524;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4332);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4332);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 210} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 211} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 212} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4332) >= (0));
AskingPrice_AssetTransfer[this] := price_s4332;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 213} (true);
Description_AssetTransfer[this] := description_s4332;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 214} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4332: int, price_s4332: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4332: int, price_s4332: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4332);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4332);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s4332, price_s4332);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 219} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 219} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 222} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 224} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 225} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4384: int, price_s4384: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4384: int, price_s4384: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4384);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4384);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 230} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 231} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 233} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 234} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 234} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 239} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 240} (true);
Description_AssetTransfer[this] := description_s4384;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 241} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4384) >= (0));
AskingPrice_AssetTransfer[this] := price_s4384;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4454: Ref, appraiser_s4454: Ref, offerPrice_s4454: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4454: Ref, appraiser_s4454: Ref, offerPrice_s4454: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4454);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4454);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4454);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 246} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 246} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s4454) >= (0));
if ((((inspector_s4454) == (null)) || ((appraiser_s4454) == (null))) || ((offerPrice_s4454) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 249} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 250} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 251} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 253} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 254} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 255} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 258} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 260} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 261} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 262} (true);
InstanceInspector_AssetTransfer[this] := inspector_s4454;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 263} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s4454;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 264} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4454) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4454;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 265} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 270} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 270} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 273} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 274} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 274} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 277} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 279} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 279} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 285} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 285} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 289} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 289} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 292} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 295} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 296} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 301} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 301} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 304} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 306} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 306} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 311} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 313} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 313} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 318} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 320} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 322} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 324} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 324} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 326} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 328} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 329} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 333} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 333} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 335} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 335} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 337} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 340} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4678: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4678: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4678);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 347} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 347} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 350} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 351} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 351} (true);
assume ((offerPrice_s4678) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s4678) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 356} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 357} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4678) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4678;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 362} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 366} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 369} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 371} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 372} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 373} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 374} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 379} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 379} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 384} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 384} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 386} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 387} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 388} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 390} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 396} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 401} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 401} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 404} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 406} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 406} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 409} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 410} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 412} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 412} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 417} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder6/CombinationsTemp6.sol"} {:sourceLine 418} (true);
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
var offerPrice_s135: int;
var inspector_s135: Ref;
var appraiser_s135: Ref;
var description_s135: int;
var price_s135: int;
var offerPrice_s269: int;
var inspector_s269: Ref;
var appraiser_s269: Ref;
var description_s269: int;
var price_s269: int;
var offerPrice_s403: int;
var inspector_s403: Ref;
var appraiser_s403: Ref;
var description_s403: int;
var price_s403: int;
var offerPrice_s537: int;
var inspector_s537: Ref;
var appraiser_s537: Ref;
var description_s537: int;
var price_s537: int;
var offerPrice_s671: int;
var inspector_s671: Ref;
var appraiser_s671: Ref;
var description_s671: int;
var price_s671: int;
var offerPrice_s805: int;
var inspector_s805: Ref;
var appraiser_s805: Ref;
var description_s805: int;
var price_s805: int;
var offerPrice_s939: int;
var inspector_s939: Ref;
var appraiser_s939: Ref;
var description_s939: int;
var price_s939: int;
var offerPrice_s1073: int;
var inspector_s1073: Ref;
var appraiser_s1073: Ref;
var description_s1073: int;
var price_s1073: int;
var offerPrice_s1207: int;
var inspector_s1207: Ref;
var appraiser_s1207: Ref;
var description_s1207: int;
var price_s1207: int;
var offerPrice_s1341: int;
var inspector_s1341: Ref;
var appraiser_s1341: Ref;
var description_s1341: int;
var price_s1341: int;
var offerPrice_s1475: int;
var inspector_s1475: Ref;
var appraiser_s1475: Ref;
var description_s1475: int;
var price_s1475: int;
var offerPrice_s1609: int;
var inspector_s1609: Ref;
var appraiser_s1609: Ref;
var description_s1609: int;
var price_s1609: int;
var offerPrice_s1743: int;
var inspector_s1743: Ref;
var appraiser_s1743: Ref;
var description_s1743: int;
var price_s1743: int;
var offerPrice_s1877: int;
var inspector_s1877: Ref;
var appraiser_s1877: Ref;
var description_s1877: int;
var price_s1877: int;
var offerPrice_s2011: int;
var inspector_s2011: Ref;
var appraiser_s2011: Ref;
var description_s2011: int;
var price_s2011: int;
var offerPrice_s2145: int;
var inspector_s2145: Ref;
var appraiser_s2145: Ref;
var description_s2145: int;
var price_s2145: int;
var offerPrice_s2279: int;
var inspector_s2279: Ref;
var appraiser_s2279: Ref;
var description_s2279: int;
var price_s2279: int;
var offerPrice_s2413: int;
var inspector_s2413: Ref;
var appraiser_s2413: Ref;
var description_s2413: int;
var price_s2413: int;
var offerPrice_s2547: int;
var inspector_s2547: Ref;
var appraiser_s2547: Ref;
var description_s2547: int;
var price_s2547: int;
var offerPrice_s2681: int;
var inspector_s2681: Ref;
var appraiser_s2681: Ref;
var description_s2681: int;
var price_s2681: int;
var offerPrice_s2815: int;
var inspector_s2815: Ref;
var appraiser_s2815: Ref;
var description_s2815: int;
var price_s2815: int;
var offerPrice_s2949: int;
var inspector_s2949: Ref;
var appraiser_s2949: Ref;
var description_s2949: int;
var price_s2949: int;
var offerPrice_s3083: int;
var inspector_s3083: Ref;
var appraiser_s3083: Ref;
var description_s3083: int;
var price_s3083: int;
var offerPrice_s3217: int;
var inspector_s3217: Ref;
var appraiser_s3217: Ref;
var description_s3217: int;
var price_s3217: int;
var offerPrice_s3351: int;
var inspector_s3351: Ref;
var appraiser_s3351: Ref;
var description_s3351: int;
var price_s3351: int;
var offerPrice_s3485: int;
var inspector_s3485: Ref;
var appraiser_s3485: Ref;
var description_s3485: int;
var price_s3485: int;
var offerPrice_s3619: int;
var inspector_s3619: Ref;
var appraiser_s3619: Ref;
var description_s3619: int;
var price_s3619: int;
var offerPrice_s3751: int;
var inspector_s3751: Ref;
var appraiser_s3751: Ref;
var description_s3751: int;
var price_s3751: int;
var offerPrice_s3883: int;
var inspector_s3883: Ref;
var appraiser_s3883: Ref;
var description_s3883: int;
var price_s3883: int;
var offerPrice_s4015: int;
var inspector_s4015: Ref;
var appraiser_s4015: Ref;
var description_s4015: int;
var price_s4015: int;
var offerPrice_s4147: int;
var inspector_s4147: Ref;
var appraiser_s4147: Ref;
var description_s4147: int;
var price_s4147: int;
var offerPrice_s4279: int;
var inspector_s4279: Ref;
var appraiser_s4279: Ref;
var description_s4279: int;
var price_s4279: int;
var description_s4332: int;
var price_s4332: int;
var description_s4384: int;
var price_s4384: int;
var inspector_s4454: Ref;
var appraiser_s4454: Ref;
var offerPrice_s4454: int;
var offerPrice_s4678: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4332, price_s4332);
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
havoc offerPrice_s135;
havoc inspector_s135;
havoc appraiser_s135;
havoc description_s135;
havoc price_s135;
havoc offerPrice_s269;
havoc inspector_s269;
havoc appraiser_s269;
havoc description_s269;
havoc price_s269;
havoc offerPrice_s403;
havoc inspector_s403;
havoc appraiser_s403;
havoc description_s403;
havoc price_s403;
havoc offerPrice_s537;
havoc inspector_s537;
havoc appraiser_s537;
havoc description_s537;
havoc price_s537;
havoc offerPrice_s671;
havoc inspector_s671;
havoc appraiser_s671;
havoc description_s671;
havoc price_s671;
havoc offerPrice_s805;
havoc inspector_s805;
havoc appraiser_s805;
havoc description_s805;
havoc price_s805;
havoc offerPrice_s939;
havoc inspector_s939;
havoc appraiser_s939;
havoc description_s939;
havoc price_s939;
havoc offerPrice_s1073;
havoc inspector_s1073;
havoc appraiser_s1073;
havoc description_s1073;
havoc price_s1073;
havoc offerPrice_s1207;
havoc inspector_s1207;
havoc appraiser_s1207;
havoc description_s1207;
havoc price_s1207;
havoc offerPrice_s1341;
havoc inspector_s1341;
havoc appraiser_s1341;
havoc description_s1341;
havoc price_s1341;
havoc offerPrice_s1475;
havoc inspector_s1475;
havoc appraiser_s1475;
havoc description_s1475;
havoc price_s1475;
havoc offerPrice_s1609;
havoc inspector_s1609;
havoc appraiser_s1609;
havoc description_s1609;
havoc price_s1609;
havoc offerPrice_s1743;
havoc inspector_s1743;
havoc appraiser_s1743;
havoc description_s1743;
havoc price_s1743;
havoc offerPrice_s1877;
havoc inspector_s1877;
havoc appraiser_s1877;
havoc description_s1877;
havoc price_s1877;
havoc offerPrice_s2011;
havoc inspector_s2011;
havoc appraiser_s2011;
havoc description_s2011;
havoc price_s2011;
havoc offerPrice_s2145;
havoc inspector_s2145;
havoc appraiser_s2145;
havoc description_s2145;
havoc price_s2145;
havoc offerPrice_s2279;
havoc inspector_s2279;
havoc appraiser_s2279;
havoc description_s2279;
havoc price_s2279;
havoc offerPrice_s2413;
havoc inspector_s2413;
havoc appraiser_s2413;
havoc description_s2413;
havoc price_s2413;
havoc offerPrice_s2547;
havoc inspector_s2547;
havoc appraiser_s2547;
havoc description_s2547;
havoc price_s2547;
havoc offerPrice_s2681;
havoc inspector_s2681;
havoc appraiser_s2681;
havoc description_s2681;
havoc price_s2681;
havoc offerPrice_s2815;
havoc inspector_s2815;
havoc appraiser_s2815;
havoc description_s2815;
havoc price_s2815;
havoc offerPrice_s2949;
havoc inspector_s2949;
havoc appraiser_s2949;
havoc description_s2949;
havoc price_s2949;
havoc offerPrice_s3083;
havoc inspector_s3083;
havoc appraiser_s3083;
havoc description_s3083;
havoc price_s3083;
havoc offerPrice_s3217;
havoc inspector_s3217;
havoc appraiser_s3217;
havoc description_s3217;
havoc price_s3217;
havoc offerPrice_s3351;
havoc inspector_s3351;
havoc appraiser_s3351;
havoc description_s3351;
havoc price_s3351;
havoc offerPrice_s3485;
havoc inspector_s3485;
havoc appraiser_s3485;
havoc description_s3485;
havoc price_s3485;
havoc offerPrice_s3619;
havoc inspector_s3619;
havoc appraiser_s3619;
havoc description_s3619;
havoc price_s3619;
havoc offerPrice_s3751;
havoc inspector_s3751;
havoc appraiser_s3751;
havoc description_s3751;
havoc price_s3751;
havoc offerPrice_s3883;
havoc inspector_s3883;
havoc appraiser_s3883;
havoc description_s3883;
havoc price_s3883;
havoc offerPrice_s4015;
havoc inspector_s4015;
havoc appraiser_s4015;
havoc description_s4015;
havoc price_s4015;
havoc offerPrice_s4147;
havoc inspector_s4147;
havoc appraiser_s4147;
havoc description_s4147;
havoc price_s4147;
havoc offerPrice_s4279;
havoc inspector_s4279;
havoc appraiser_s4279;
havoc description_s4279;
havoc price_s4279;
havoc description_s4332;
havoc price_s4332;
havoc description_s4384;
havoc price_s4384;
havoc inspector_s4454;
havoc appraiser_s4454;
havoc offerPrice_s4454;
havoc offerPrice_s4678;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s135, inspector_s135, appraiser_s135, description_s135, price_s135);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s269, inspector_s269, appraiser_s269, description_s269, price_s269);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s403, inspector_s403, appraiser_s403, description_s403, price_s403);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s537, inspector_s537, appraiser_s537, description_s537, price_s537);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s671, inspector_s671, appraiser_s671, description_s671, price_s671);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s805, inspector_s805, appraiser_s805, description_s805, price_s805);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s939, inspector_s939, appraiser_s939, description_s939, price_s939);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1073, inspector_s1073, appraiser_s1073, description_s1073, price_s1073);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1207, inspector_s1207, appraiser_s1207, description_s1207, price_s1207);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1341, inspector_s1341, appraiser_s1341, description_s1341, price_s1341);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1475, inspector_s1475, appraiser_s1475, description_s1475, price_s1475);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1609, inspector_s1609, appraiser_s1609, description_s1609, price_s1609);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1743, inspector_s1743, appraiser_s1743, description_s1743, price_s1743);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1877, inspector_s1877, appraiser_s1877, description_s1877, price_s1877);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2011, inspector_s2011, appraiser_s2011, description_s2011, price_s2011);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2145, inspector_s2145, appraiser_s2145, description_s2145, price_s2145);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2279, inspector_s2279, appraiser_s2279, description_s2279, price_s2279);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2413, inspector_s2413, appraiser_s2413, description_s2413, price_s2413);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2547, inspector_s2547, appraiser_s2547, description_s2547, price_s2547);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2681, inspector_s2681, appraiser_s2681, description_s2681, price_s2681);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2815, inspector_s2815, appraiser_s2815, description_s2815, price_s2815);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2949, inspector_s2949, appraiser_s2949, description_s2949, price_s2949);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3083, inspector_s3083, appraiser_s3083, description_s3083, price_s3083);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3217, inspector_s3217, appraiser_s3217, description_s3217, price_s3217);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3351, inspector_s3351, appraiser_s3351, description_s3351, price_s3351);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3485, inspector_s3485, appraiser_s3485, description_s3485, price_s3485);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3619, inspector_s3619, appraiser_s3619, description_s3619, price_s3619);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3751, inspector_s3751, appraiser_s3751, description_s3751, price_s3751);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3883, inspector_s3883, appraiser_s3883, description_s3883, price_s3883);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4015, inspector_s4015, appraiser_s4015, description_s4015, price_s4015);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4147, inspector_s4147, appraiser_s4147, description_s4147, price_s4147);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4279, inspector_s4279, appraiser_s4279, description_s4279, price_s4279);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4384, price_s4384);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4454, appraiser_s4454, offerPrice_s4454);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4678);
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
var offerPrice_s135: int;
var inspector_s135: Ref;
var appraiser_s135: Ref;
var description_s135: int;
var price_s135: int;
var offerPrice_s269: int;
var inspector_s269: Ref;
var appraiser_s269: Ref;
var description_s269: int;
var price_s269: int;
var offerPrice_s403: int;
var inspector_s403: Ref;
var appraiser_s403: Ref;
var description_s403: int;
var price_s403: int;
var offerPrice_s537: int;
var inspector_s537: Ref;
var appraiser_s537: Ref;
var description_s537: int;
var price_s537: int;
var offerPrice_s671: int;
var inspector_s671: Ref;
var appraiser_s671: Ref;
var description_s671: int;
var price_s671: int;
var offerPrice_s805: int;
var inspector_s805: Ref;
var appraiser_s805: Ref;
var description_s805: int;
var price_s805: int;
var offerPrice_s939: int;
var inspector_s939: Ref;
var appraiser_s939: Ref;
var description_s939: int;
var price_s939: int;
var offerPrice_s1073: int;
var inspector_s1073: Ref;
var appraiser_s1073: Ref;
var description_s1073: int;
var price_s1073: int;
var offerPrice_s1207: int;
var inspector_s1207: Ref;
var appraiser_s1207: Ref;
var description_s1207: int;
var price_s1207: int;
var offerPrice_s1341: int;
var inspector_s1341: Ref;
var appraiser_s1341: Ref;
var description_s1341: int;
var price_s1341: int;
var offerPrice_s1475: int;
var inspector_s1475: Ref;
var appraiser_s1475: Ref;
var description_s1475: int;
var price_s1475: int;
var offerPrice_s1609: int;
var inspector_s1609: Ref;
var appraiser_s1609: Ref;
var description_s1609: int;
var price_s1609: int;
var offerPrice_s1743: int;
var inspector_s1743: Ref;
var appraiser_s1743: Ref;
var description_s1743: int;
var price_s1743: int;
var offerPrice_s1877: int;
var inspector_s1877: Ref;
var appraiser_s1877: Ref;
var description_s1877: int;
var price_s1877: int;
var offerPrice_s2011: int;
var inspector_s2011: Ref;
var appraiser_s2011: Ref;
var description_s2011: int;
var price_s2011: int;
var offerPrice_s2145: int;
var inspector_s2145: Ref;
var appraiser_s2145: Ref;
var description_s2145: int;
var price_s2145: int;
var offerPrice_s2279: int;
var inspector_s2279: Ref;
var appraiser_s2279: Ref;
var description_s2279: int;
var price_s2279: int;
var offerPrice_s2413: int;
var inspector_s2413: Ref;
var appraiser_s2413: Ref;
var description_s2413: int;
var price_s2413: int;
var offerPrice_s2547: int;
var inspector_s2547: Ref;
var appraiser_s2547: Ref;
var description_s2547: int;
var price_s2547: int;
var offerPrice_s2681: int;
var inspector_s2681: Ref;
var appraiser_s2681: Ref;
var description_s2681: int;
var price_s2681: int;
var offerPrice_s2815: int;
var inspector_s2815: Ref;
var appraiser_s2815: Ref;
var description_s2815: int;
var price_s2815: int;
var offerPrice_s2949: int;
var inspector_s2949: Ref;
var appraiser_s2949: Ref;
var description_s2949: int;
var price_s2949: int;
var offerPrice_s3083: int;
var inspector_s3083: Ref;
var appraiser_s3083: Ref;
var description_s3083: int;
var price_s3083: int;
var offerPrice_s3217: int;
var inspector_s3217: Ref;
var appraiser_s3217: Ref;
var description_s3217: int;
var price_s3217: int;
var offerPrice_s3351: int;
var inspector_s3351: Ref;
var appraiser_s3351: Ref;
var description_s3351: int;
var price_s3351: int;
var offerPrice_s3485: int;
var inspector_s3485: Ref;
var appraiser_s3485: Ref;
var description_s3485: int;
var price_s3485: int;
var offerPrice_s3619: int;
var inspector_s3619: Ref;
var appraiser_s3619: Ref;
var description_s3619: int;
var price_s3619: int;
var offerPrice_s3751: int;
var inspector_s3751: Ref;
var appraiser_s3751: Ref;
var description_s3751: int;
var price_s3751: int;
var offerPrice_s3883: int;
var inspector_s3883: Ref;
var appraiser_s3883: Ref;
var description_s3883: int;
var price_s3883: int;
var offerPrice_s4015: int;
var inspector_s4015: Ref;
var appraiser_s4015: Ref;
var description_s4015: int;
var price_s4015: int;
var offerPrice_s4147: int;
var inspector_s4147: Ref;
var appraiser_s4147: Ref;
var description_s4147: int;
var price_s4147: int;
var offerPrice_s4279: int;
var inspector_s4279: Ref;
var appraiser_s4279: Ref;
var description_s4279: int;
var price_s4279: int;
var description_s4332: int;
var price_s4332: int;
var description_s4384: int;
var price_s4384: int;
var inspector_s4454: Ref;
var appraiser_s4454: Ref;
var offerPrice_s4454: int;
var offerPrice_s4678: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s135;
havoc inspector_s135;
havoc appraiser_s135;
havoc description_s135;
havoc price_s135;
havoc offerPrice_s269;
havoc inspector_s269;
havoc appraiser_s269;
havoc description_s269;
havoc price_s269;
havoc offerPrice_s403;
havoc inspector_s403;
havoc appraiser_s403;
havoc description_s403;
havoc price_s403;
havoc offerPrice_s537;
havoc inspector_s537;
havoc appraiser_s537;
havoc description_s537;
havoc price_s537;
havoc offerPrice_s671;
havoc inspector_s671;
havoc appraiser_s671;
havoc description_s671;
havoc price_s671;
havoc offerPrice_s805;
havoc inspector_s805;
havoc appraiser_s805;
havoc description_s805;
havoc price_s805;
havoc offerPrice_s939;
havoc inspector_s939;
havoc appraiser_s939;
havoc description_s939;
havoc price_s939;
havoc offerPrice_s1073;
havoc inspector_s1073;
havoc appraiser_s1073;
havoc description_s1073;
havoc price_s1073;
havoc offerPrice_s1207;
havoc inspector_s1207;
havoc appraiser_s1207;
havoc description_s1207;
havoc price_s1207;
havoc offerPrice_s1341;
havoc inspector_s1341;
havoc appraiser_s1341;
havoc description_s1341;
havoc price_s1341;
havoc offerPrice_s1475;
havoc inspector_s1475;
havoc appraiser_s1475;
havoc description_s1475;
havoc price_s1475;
havoc offerPrice_s1609;
havoc inspector_s1609;
havoc appraiser_s1609;
havoc description_s1609;
havoc price_s1609;
havoc offerPrice_s1743;
havoc inspector_s1743;
havoc appraiser_s1743;
havoc description_s1743;
havoc price_s1743;
havoc offerPrice_s1877;
havoc inspector_s1877;
havoc appraiser_s1877;
havoc description_s1877;
havoc price_s1877;
havoc offerPrice_s2011;
havoc inspector_s2011;
havoc appraiser_s2011;
havoc description_s2011;
havoc price_s2011;
havoc offerPrice_s2145;
havoc inspector_s2145;
havoc appraiser_s2145;
havoc description_s2145;
havoc price_s2145;
havoc offerPrice_s2279;
havoc inspector_s2279;
havoc appraiser_s2279;
havoc description_s2279;
havoc price_s2279;
havoc offerPrice_s2413;
havoc inspector_s2413;
havoc appraiser_s2413;
havoc description_s2413;
havoc price_s2413;
havoc offerPrice_s2547;
havoc inspector_s2547;
havoc appraiser_s2547;
havoc description_s2547;
havoc price_s2547;
havoc offerPrice_s2681;
havoc inspector_s2681;
havoc appraiser_s2681;
havoc description_s2681;
havoc price_s2681;
havoc offerPrice_s2815;
havoc inspector_s2815;
havoc appraiser_s2815;
havoc description_s2815;
havoc price_s2815;
havoc offerPrice_s2949;
havoc inspector_s2949;
havoc appraiser_s2949;
havoc description_s2949;
havoc price_s2949;
havoc offerPrice_s3083;
havoc inspector_s3083;
havoc appraiser_s3083;
havoc description_s3083;
havoc price_s3083;
havoc offerPrice_s3217;
havoc inspector_s3217;
havoc appraiser_s3217;
havoc description_s3217;
havoc price_s3217;
havoc offerPrice_s3351;
havoc inspector_s3351;
havoc appraiser_s3351;
havoc description_s3351;
havoc price_s3351;
havoc offerPrice_s3485;
havoc inspector_s3485;
havoc appraiser_s3485;
havoc description_s3485;
havoc price_s3485;
havoc offerPrice_s3619;
havoc inspector_s3619;
havoc appraiser_s3619;
havoc description_s3619;
havoc price_s3619;
havoc offerPrice_s3751;
havoc inspector_s3751;
havoc appraiser_s3751;
havoc description_s3751;
havoc price_s3751;
havoc offerPrice_s3883;
havoc inspector_s3883;
havoc appraiser_s3883;
havoc description_s3883;
havoc price_s3883;
havoc offerPrice_s4015;
havoc inspector_s4015;
havoc appraiser_s4015;
havoc description_s4015;
havoc price_s4015;
havoc offerPrice_s4147;
havoc inspector_s4147;
havoc appraiser_s4147;
havoc description_s4147;
havoc price_s4147;
havoc offerPrice_s4279;
havoc inspector_s4279;
havoc appraiser_s4279;
havoc description_s4279;
havoc price_s4279;
havoc description_s4332;
havoc price_s4332;
havoc description_s4384;
havoc price_s4384;
havoc inspector_s4454;
havoc appraiser_s4454;
havoc offerPrice_s4454;
havoc offerPrice_s4678;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s135, inspector_s135, appraiser_s135, description_s135, price_s135);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s269, inspector_s269, appraiser_s269, description_s269, price_s269);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s403, inspector_s403, appraiser_s403, description_s403, price_s403);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s537, inspector_s537, appraiser_s537, description_s537, price_s537);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s671, inspector_s671, appraiser_s671, description_s671, price_s671);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s805, inspector_s805, appraiser_s805, description_s805, price_s805);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s939, inspector_s939, appraiser_s939, description_s939, price_s939);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1073, inspector_s1073, appraiser_s1073, description_s1073, price_s1073);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1207, inspector_s1207, appraiser_s1207, description_s1207, price_s1207);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1341, inspector_s1341, appraiser_s1341, description_s1341, price_s1341);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1475, inspector_s1475, appraiser_s1475, description_s1475, price_s1475);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1609, inspector_s1609, appraiser_s1609, description_s1609, price_s1609);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1743, inspector_s1743, appraiser_s1743, description_s1743, price_s1743);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1877, inspector_s1877, appraiser_s1877, description_s1877, price_s1877);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2011, inspector_s2011, appraiser_s2011, description_s2011, price_s2011);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2145, inspector_s2145, appraiser_s2145, description_s2145, price_s2145);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2279, inspector_s2279, appraiser_s2279, description_s2279, price_s2279);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2413, inspector_s2413, appraiser_s2413, description_s2413, price_s2413);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2547, inspector_s2547, appraiser_s2547, description_s2547, price_s2547);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2681, inspector_s2681, appraiser_s2681, description_s2681, price_s2681);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2815, inspector_s2815, appraiser_s2815, description_s2815, price_s2815);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2949, inspector_s2949, appraiser_s2949, description_s2949, price_s2949);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3083, inspector_s3083, appraiser_s3083, description_s3083, price_s3083);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3217, inspector_s3217, appraiser_s3217, description_s3217, price_s3217);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3351, inspector_s3351, appraiser_s3351, description_s3351, price_s3351);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3485, inspector_s3485, appraiser_s3485, description_s3485, price_s3485);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3619, inspector_s3619, appraiser_s3619, description_s3619, price_s3619);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3751, inspector_s3751, appraiser_s3751, description_s3751, price_s3751);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3883, inspector_s3883, appraiser_s3883, description_s3883, price_s3883);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4015, inspector_s4015, appraiser_s4015, description_s4015, price_s4015);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4147, inspector_s4147, appraiser_s4147, description_s4147, price_s4147);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4279, inspector_s4279, appraiser_s4279, description_s4279, price_s4279);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4384, price_s4384);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4454, appraiser_s4454, offerPrice_s4454);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4678);
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
var description_s4332: int;
var price_s4332: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4332, price_s4332);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


