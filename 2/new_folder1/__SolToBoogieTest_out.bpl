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
procedure {:public} {:inline 1} validCombination0x0x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s269: int, inspector_s269: Ref, appraiser_s269: Ref, description_s269: int, price_s269: int);
procedure {:public} {:inline 1} validCombination0x0x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s575: int, inspector_s575: Ref, appraiser_s575: Ref, description_s575: int, price_s575: int);
procedure {:public} {:inline 1} validCombination0x0x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s843: int, inspector_s843: Ref, appraiser_s843: Ref, description_s843: int, price_s843: int);
procedure {:public} {:inline 1} validCombination0x0x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1111: int, inspector_s1111: Ref, appraiser_s1111: Ref, description_s1111: int, price_s1111: int);
procedure {:public} {:inline 1} validCombination0x0x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1379: int, inspector_s1379: Ref, appraiser_s1379: Ref, description_s1379: int, price_s1379: int);
procedure {:public} {:inline 1} validCombination0x1x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1645: int, inspector_s1645: Ref, appraiser_s1645: Ref, description_s1645: int, price_s1645: int);
procedure {:public} {:inline 1} validCombination0x1x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1949: int, inspector_s1949: Ref, appraiser_s1949: Ref, description_s1949: int, price_s1949: int);
procedure {:public} {:inline 1} validCombination0x1x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2215: int, inspector_s2215: Ref, appraiser_s2215: Ref, description_s2215: int, price_s2215: int);
procedure {:public} {:inline 1} validCombination0x1x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2481: int, inspector_s2481: Ref, appraiser_s2481: Ref, description_s2481: int, price_s2481: int);
procedure {:public} {:inline 1} validCombination0x1x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2747: int, inspector_s2747: Ref, appraiser_s2747: Ref, description_s2747: int, price_s2747: int);
procedure {:public} {:inline 1} validCombination0x2x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3011: int, inspector_s3011: Ref, appraiser_s3011: Ref, description_s3011: int, price_s3011: int);
procedure {:public} {:inline 1} validCombination0x2x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3313: int, inspector_s3313: Ref, appraiser_s3313: Ref, description_s3313: int, price_s3313: int);
procedure {:public} {:inline 1} validCombination0x2x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3577: int, inspector_s3577: Ref, appraiser_s3577: Ref, description_s3577: int, price_s3577: int);
procedure {:public} {:inline 1} validCombination0x2x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3841: int, inspector_s3841: Ref, appraiser_s3841: Ref, description_s3841: int, price_s3841: int);
procedure {:public} {:inline 1} validCombination0x2x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4105: int, inspector_s4105: Ref, appraiser_s4105: Ref, description_s4105: int, price_s4105: int);
procedure {:public} {:inline 1} validCombination0x3x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4369: int, inspector_s4369: Ref, appraiser_s4369: Ref, description_s4369: int, price_s4369: int);
procedure {:public} {:inline 1} validCombination0x3x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4671: int, inspector_s4671: Ref, appraiser_s4671: Ref, description_s4671: int, price_s4671: int);
procedure {:public} {:inline 1} validCombination0x3x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4935: int, inspector_s4935: Ref, appraiser_s4935: Ref, description_s4935: int, price_s4935: int);
procedure {:public} {:inline 1} validCombination0x3x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5199: int, inspector_s5199: Ref, appraiser_s5199: Ref, description_s5199: int, price_s5199: int);
procedure {:public} {:inline 1} validCombination0x3x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5463: int, inspector_s5463: Ref, appraiser_s5463: Ref, description_s5463: int, price_s5463: int);
procedure {:public} {:inline 1} validCombination0x4x0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5723: int, inspector_s5723: Ref, appraiser_s5723: Ref, description_s5723: int, price_s5723: int);
procedure {:public} {:inline 1} validCombination0x4x5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6021: int, inspector_s6021: Ref, appraiser_s6021: Ref, description_s6021: int, price_s6021: int);
procedure {:public} {:inline 1} validCombination0x4x7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6281: int, inspector_s6281: Ref, appraiser_s6281: Ref, description_s6281: int, price_s6281: int);
procedure {:public} {:inline 1} validCombination0x4x8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6541: int, inspector_s6541: Ref, appraiser_s6541: Ref, description_s6541: int, price_s6541: int);
procedure {:public} {:inline 1} validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6801: int, inspector_s6801: Ref, appraiser_s6801: Ref, description_s6801: int, price_s6801: int);
implementation validCombination0x4x9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6801: int, inspector_s6801: Ref, appraiser_s6801: Ref, description_s6801: int, price_s6801: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6801);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6801);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6801);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6801);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6801);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 174} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 174} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (0))))) && (!(((State_AssetTransfer[this]) == (1))))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (true)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 175} (true);
assume ((InstanceInspector_AssetTransfer[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 177} (true);
call MarkInspected_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 177} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6854: int, price_s6854: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6854: int, price_s6854: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -485159846;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6854);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6854);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 193} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 193} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 195} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6854) >= (0));
AskingPrice_AssetTransfer[this] := price_s6854;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 195} (true);
Description_AssetTransfer[this] := description_s6854;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 196} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6854: int, price_s6854: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6854: int, price_s6854: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6854);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6854);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6854, price_s6854);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 202} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 202} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 205} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 207} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 207} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6906: int, price_s6906: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6906: int, price_s6906: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6906);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6906);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 213} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 213} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 216} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 217} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 217} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 220} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 222} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 222} (true);
Description_AssetTransfer[this] := description_s6906;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 224} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6906) >= (0));
AskingPrice_AssetTransfer[this] := price_s6906;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6976: Ref, appraiser_s6976: Ref, offerPrice_s6976: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6976: Ref, appraiser_s6976: Ref, offerPrice_s6976: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6976);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6976);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6976);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 229} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 229} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s6976) >= (0));
if ((((inspector_s6976) == (null)) || ((appraiser_s6976) == (null))) || ((offerPrice_s6976) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 232} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 233} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 233} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 236} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 237} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 238} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 241} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 243} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 243} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 244} (true);
InstanceInspector_AssetTransfer[this] := inspector_s6976;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 245} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s6976;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 247} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6976) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6976;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 247} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 253} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 253} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 256} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 257} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 257} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 260} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 262} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 262} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 268} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 268} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 272} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 272} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 275} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 277} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 277} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 278} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 284} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 284} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 287} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 289} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 289} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 294} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 296} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 296} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 301} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 303} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 303} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 305} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 305} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 307} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 307} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 309} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 311} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 311} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 316} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 316} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 318} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 318} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 320} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 322} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7200: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s7200: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s7200);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 330} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 330} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 333} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 334} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 334} (true);
assume ((offerPrice_s7200) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s7200) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 337} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 339} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 340} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s7200) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s7200;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 345} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 345} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 348} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 349} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 349} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 352} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 354} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 354} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 356} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 356} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 362} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 367} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 367} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 369} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 369} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 371} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 373} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 373} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 378} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 379} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 384} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 384} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 387} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 389} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 389} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 391} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 391} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 393} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 395} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 400} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 401} (true);
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
var offerPrice_s269: int;
var inspector_s269: Ref;
var appraiser_s269: Ref;
var description_s269: int;
var price_s269: int;
var offerPrice_s575: int;
var inspector_s575: Ref;
var appraiser_s575: Ref;
var description_s575: int;
var price_s575: int;
var offerPrice_s843: int;
var inspector_s843: Ref;
var appraiser_s843: Ref;
var description_s843: int;
var price_s843: int;
var offerPrice_s1111: int;
var inspector_s1111: Ref;
var appraiser_s1111: Ref;
var description_s1111: int;
var price_s1111: int;
var offerPrice_s1379: int;
var inspector_s1379: Ref;
var appraiser_s1379: Ref;
var description_s1379: int;
var price_s1379: int;
var offerPrice_s1645: int;
var inspector_s1645: Ref;
var appraiser_s1645: Ref;
var description_s1645: int;
var price_s1645: int;
var offerPrice_s1949: int;
var inspector_s1949: Ref;
var appraiser_s1949: Ref;
var description_s1949: int;
var price_s1949: int;
var offerPrice_s2215: int;
var inspector_s2215: Ref;
var appraiser_s2215: Ref;
var description_s2215: int;
var price_s2215: int;
var offerPrice_s2481: int;
var inspector_s2481: Ref;
var appraiser_s2481: Ref;
var description_s2481: int;
var price_s2481: int;
var offerPrice_s2747: int;
var inspector_s2747: Ref;
var appraiser_s2747: Ref;
var description_s2747: int;
var price_s2747: int;
var offerPrice_s3011: int;
var inspector_s3011: Ref;
var appraiser_s3011: Ref;
var description_s3011: int;
var price_s3011: int;
var offerPrice_s3313: int;
var inspector_s3313: Ref;
var appraiser_s3313: Ref;
var description_s3313: int;
var price_s3313: int;
var offerPrice_s3577: int;
var inspector_s3577: Ref;
var appraiser_s3577: Ref;
var description_s3577: int;
var price_s3577: int;
var offerPrice_s3841: int;
var inspector_s3841: Ref;
var appraiser_s3841: Ref;
var description_s3841: int;
var price_s3841: int;
var offerPrice_s4105: int;
var inspector_s4105: Ref;
var appraiser_s4105: Ref;
var description_s4105: int;
var price_s4105: int;
var offerPrice_s4369: int;
var inspector_s4369: Ref;
var appraiser_s4369: Ref;
var description_s4369: int;
var price_s4369: int;
var offerPrice_s4671: int;
var inspector_s4671: Ref;
var appraiser_s4671: Ref;
var description_s4671: int;
var price_s4671: int;
var offerPrice_s4935: int;
var inspector_s4935: Ref;
var appraiser_s4935: Ref;
var description_s4935: int;
var price_s4935: int;
var offerPrice_s5199: int;
var inspector_s5199: Ref;
var appraiser_s5199: Ref;
var description_s5199: int;
var price_s5199: int;
var offerPrice_s5463: int;
var inspector_s5463: Ref;
var appraiser_s5463: Ref;
var description_s5463: int;
var price_s5463: int;
var offerPrice_s5723: int;
var inspector_s5723: Ref;
var appraiser_s5723: Ref;
var description_s5723: int;
var price_s5723: int;
var offerPrice_s6021: int;
var inspector_s6021: Ref;
var appraiser_s6021: Ref;
var description_s6021: int;
var price_s6021: int;
var offerPrice_s6281: int;
var inspector_s6281: Ref;
var appraiser_s6281: Ref;
var description_s6281: int;
var price_s6281: int;
var offerPrice_s6541: int;
var inspector_s6541: Ref;
var appraiser_s6541: Ref;
var description_s6541: int;
var price_s6541: int;
var offerPrice_s6801: int;
var inspector_s6801: Ref;
var appraiser_s6801: Ref;
var description_s6801: int;
var price_s6801: int;
var description_s6854: int;
var price_s6854: int;
var description_s6906: int;
var price_s6906: int;
var inspector_s6976: Ref;
var appraiser_s6976: Ref;
var offerPrice_s6976: int;
var offerPrice_s7200: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6854, price_s6854);
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
havoc offerPrice_s269;
havoc inspector_s269;
havoc appraiser_s269;
havoc description_s269;
havoc price_s269;
havoc offerPrice_s575;
havoc inspector_s575;
havoc appraiser_s575;
havoc description_s575;
havoc price_s575;
havoc offerPrice_s843;
havoc inspector_s843;
havoc appraiser_s843;
havoc description_s843;
havoc price_s843;
havoc offerPrice_s1111;
havoc inspector_s1111;
havoc appraiser_s1111;
havoc description_s1111;
havoc price_s1111;
havoc offerPrice_s1379;
havoc inspector_s1379;
havoc appraiser_s1379;
havoc description_s1379;
havoc price_s1379;
havoc offerPrice_s1645;
havoc inspector_s1645;
havoc appraiser_s1645;
havoc description_s1645;
havoc price_s1645;
havoc offerPrice_s1949;
havoc inspector_s1949;
havoc appraiser_s1949;
havoc description_s1949;
havoc price_s1949;
havoc offerPrice_s2215;
havoc inspector_s2215;
havoc appraiser_s2215;
havoc description_s2215;
havoc price_s2215;
havoc offerPrice_s2481;
havoc inspector_s2481;
havoc appraiser_s2481;
havoc description_s2481;
havoc price_s2481;
havoc offerPrice_s2747;
havoc inspector_s2747;
havoc appraiser_s2747;
havoc description_s2747;
havoc price_s2747;
havoc offerPrice_s3011;
havoc inspector_s3011;
havoc appraiser_s3011;
havoc description_s3011;
havoc price_s3011;
havoc offerPrice_s3313;
havoc inspector_s3313;
havoc appraiser_s3313;
havoc description_s3313;
havoc price_s3313;
havoc offerPrice_s3577;
havoc inspector_s3577;
havoc appraiser_s3577;
havoc description_s3577;
havoc price_s3577;
havoc offerPrice_s3841;
havoc inspector_s3841;
havoc appraiser_s3841;
havoc description_s3841;
havoc price_s3841;
havoc offerPrice_s4105;
havoc inspector_s4105;
havoc appraiser_s4105;
havoc description_s4105;
havoc price_s4105;
havoc offerPrice_s4369;
havoc inspector_s4369;
havoc appraiser_s4369;
havoc description_s4369;
havoc price_s4369;
havoc offerPrice_s4671;
havoc inspector_s4671;
havoc appraiser_s4671;
havoc description_s4671;
havoc price_s4671;
havoc offerPrice_s4935;
havoc inspector_s4935;
havoc appraiser_s4935;
havoc description_s4935;
havoc price_s4935;
havoc offerPrice_s5199;
havoc inspector_s5199;
havoc appraiser_s5199;
havoc description_s5199;
havoc price_s5199;
havoc offerPrice_s5463;
havoc inspector_s5463;
havoc appraiser_s5463;
havoc description_s5463;
havoc price_s5463;
havoc offerPrice_s5723;
havoc inspector_s5723;
havoc appraiser_s5723;
havoc description_s5723;
havoc price_s5723;
havoc offerPrice_s6021;
havoc inspector_s6021;
havoc appraiser_s6021;
havoc description_s6021;
havoc price_s6021;
havoc offerPrice_s6281;
havoc inspector_s6281;
havoc appraiser_s6281;
havoc description_s6281;
havoc price_s6281;
havoc offerPrice_s6541;
havoc inspector_s6541;
havoc appraiser_s6541;
havoc description_s6541;
havoc price_s6541;
havoc offerPrice_s6801;
havoc inspector_s6801;
havoc appraiser_s6801;
havoc description_s6801;
havoc price_s6801;
havoc description_s6854;
havoc price_s6854;
havoc description_s6906;
havoc price_s6906;
havoc inspector_s6976;
havoc appraiser_s6976;
havoc offerPrice_s6976;
havoc offerPrice_s7200;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (35)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s269, inspector_s269, appraiser_s269, description_s269, price_s269);
} else if ((choice) == (34)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s575, inspector_s575, appraiser_s575, description_s575, price_s575);
} else if ((choice) == (33)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s843, inspector_s843, appraiser_s843, description_s843, price_s843);
} else if ((choice) == (32)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1111, inspector_s1111, appraiser_s1111, description_s1111, price_s1111);
} else if ((choice) == (31)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1379, inspector_s1379, appraiser_s1379, description_s1379, price_s1379);
} else if ((choice) == (30)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1645, inspector_s1645, appraiser_s1645, description_s1645, price_s1645);
} else if ((choice) == (29)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1949, inspector_s1949, appraiser_s1949, description_s1949, price_s1949);
} else if ((choice) == (28)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2215, inspector_s2215, appraiser_s2215, description_s2215, price_s2215);
} else if ((choice) == (27)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2481, inspector_s2481, appraiser_s2481, description_s2481, price_s2481);
} else if ((choice) == (26)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2747, inspector_s2747, appraiser_s2747, description_s2747, price_s2747);
} else if ((choice) == (25)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3011, inspector_s3011, appraiser_s3011, description_s3011, price_s3011);
} else if ((choice) == (24)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3313, inspector_s3313, appraiser_s3313, description_s3313, price_s3313);
} else if ((choice) == (23)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3577, inspector_s3577, appraiser_s3577, description_s3577, price_s3577);
} else if ((choice) == (22)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3841, inspector_s3841, appraiser_s3841, description_s3841, price_s3841);
} else if ((choice) == (21)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4105, inspector_s4105, appraiser_s4105, description_s4105, price_s4105);
} else if ((choice) == (20)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4369, inspector_s4369, appraiser_s4369, description_s4369, price_s4369);
} else if ((choice) == (19)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4671, inspector_s4671, appraiser_s4671, description_s4671, price_s4671);
} else if ((choice) == (18)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4935, inspector_s4935, appraiser_s4935, description_s4935, price_s4935);
} else if ((choice) == (17)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5199, inspector_s5199, appraiser_s5199, description_s5199, price_s5199);
} else if ((choice) == (16)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5463, inspector_s5463, appraiser_s5463, description_s5463, price_s5463);
} else if ((choice) == (15)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5723, inspector_s5723, appraiser_s5723, description_s5723, price_s5723);
} else if ((choice) == (14)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6021, inspector_s6021, appraiser_s6021, description_s6021, price_s6021);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6281, inspector_s6281, appraiser_s6281, description_s6281, price_s6281);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6541, inspector_s6541, appraiser_s6541, description_s6541, price_s6541);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6801, inspector_s6801, appraiser_s6801, description_s6801, price_s6801);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6906, price_s6906);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6976, appraiser_s6976, offerPrice_s6976);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7200);
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
var offerPrice_s269: int;
var inspector_s269: Ref;
var appraiser_s269: Ref;
var description_s269: int;
var price_s269: int;
var offerPrice_s575: int;
var inspector_s575: Ref;
var appraiser_s575: Ref;
var description_s575: int;
var price_s575: int;
var offerPrice_s843: int;
var inspector_s843: Ref;
var appraiser_s843: Ref;
var description_s843: int;
var price_s843: int;
var offerPrice_s1111: int;
var inspector_s1111: Ref;
var appraiser_s1111: Ref;
var description_s1111: int;
var price_s1111: int;
var offerPrice_s1379: int;
var inspector_s1379: Ref;
var appraiser_s1379: Ref;
var description_s1379: int;
var price_s1379: int;
var offerPrice_s1645: int;
var inspector_s1645: Ref;
var appraiser_s1645: Ref;
var description_s1645: int;
var price_s1645: int;
var offerPrice_s1949: int;
var inspector_s1949: Ref;
var appraiser_s1949: Ref;
var description_s1949: int;
var price_s1949: int;
var offerPrice_s2215: int;
var inspector_s2215: Ref;
var appraiser_s2215: Ref;
var description_s2215: int;
var price_s2215: int;
var offerPrice_s2481: int;
var inspector_s2481: Ref;
var appraiser_s2481: Ref;
var description_s2481: int;
var price_s2481: int;
var offerPrice_s2747: int;
var inspector_s2747: Ref;
var appraiser_s2747: Ref;
var description_s2747: int;
var price_s2747: int;
var offerPrice_s3011: int;
var inspector_s3011: Ref;
var appraiser_s3011: Ref;
var description_s3011: int;
var price_s3011: int;
var offerPrice_s3313: int;
var inspector_s3313: Ref;
var appraiser_s3313: Ref;
var description_s3313: int;
var price_s3313: int;
var offerPrice_s3577: int;
var inspector_s3577: Ref;
var appraiser_s3577: Ref;
var description_s3577: int;
var price_s3577: int;
var offerPrice_s3841: int;
var inspector_s3841: Ref;
var appraiser_s3841: Ref;
var description_s3841: int;
var price_s3841: int;
var offerPrice_s4105: int;
var inspector_s4105: Ref;
var appraiser_s4105: Ref;
var description_s4105: int;
var price_s4105: int;
var offerPrice_s4369: int;
var inspector_s4369: Ref;
var appraiser_s4369: Ref;
var description_s4369: int;
var price_s4369: int;
var offerPrice_s4671: int;
var inspector_s4671: Ref;
var appraiser_s4671: Ref;
var description_s4671: int;
var price_s4671: int;
var offerPrice_s4935: int;
var inspector_s4935: Ref;
var appraiser_s4935: Ref;
var description_s4935: int;
var price_s4935: int;
var offerPrice_s5199: int;
var inspector_s5199: Ref;
var appraiser_s5199: Ref;
var description_s5199: int;
var price_s5199: int;
var offerPrice_s5463: int;
var inspector_s5463: Ref;
var appraiser_s5463: Ref;
var description_s5463: int;
var price_s5463: int;
var offerPrice_s5723: int;
var inspector_s5723: Ref;
var appraiser_s5723: Ref;
var description_s5723: int;
var price_s5723: int;
var offerPrice_s6021: int;
var inspector_s6021: Ref;
var appraiser_s6021: Ref;
var description_s6021: int;
var price_s6021: int;
var offerPrice_s6281: int;
var inspector_s6281: Ref;
var appraiser_s6281: Ref;
var description_s6281: int;
var price_s6281: int;
var offerPrice_s6541: int;
var inspector_s6541: Ref;
var appraiser_s6541: Ref;
var description_s6541: int;
var price_s6541: int;
var offerPrice_s6801: int;
var inspector_s6801: Ref;
var appraiser_s6801: Ref;
var description_s6801: int;
var price_s6801: int;
var description_s6854: int;
var price_s6854: int;
var description_s6906: int;
var price_s6906: int;
var inspector_s6976: Ref;
var appraiser_s6976: Ref;
var offerPrice_s6976: int;
var offerPrice_s7200: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s269;
havoc inspector_s269;
havoc appraiser_s269;
havoc description_s269;
havoc price_s269;
havoc offerPrice_s575;
havoc inspector_s575;
havoc appraiser_s575;
havoc description_s575;
havoc price_s575;
havoc offerPrice_s843;
havoc inspector_s843;
havoc appraiser_s843;
havoc description_s843;
havoc price_s843;
havoc offerPrice_s1111;
havoc inspector_s1111;
havoc appraiser_s1111;
havoc description_s1111;
havoc price_s1111;
havoc offerPrice_s1379;
havoc inspector_s1379;
havoc appraiser_s1379;
havoc description_s1379;
havoc price_s1379;
havoc offerPrice_s1645;
havoc inspector_s1645;
havoc appraiser_s1645;
havoc description_s1645;
havoc price_s1645;
havoc offerPrice_s1949;
havoc inspector_s1949;
havoc appraiser_s1949;
havoc description_s1949;
havoc price_s1949;
havoc offerPrice_s2215;
havoc inspector_s2215;
havoc appraiser_s2215;
havoc description_s2215;
havoc price_s2215;
havoc offerPrice_s2481;
havoc inspector_s2481;
havoc appraiser_s2481;
havoc description_s2481;
havoc price_s2481;
havoc offerPrice_s2747;
havoc inspector_s2747;
havoc appraiser_s2747;
havoc description_s2747;
havoc price_s2747;
havoc offerPrice_s3011;
havoc inspector_s3011;
havoc appraiser_s3011;
havoc description_s3011;
havoc price_s3011;
havoc offerPrice_s3313;
havoc inspector_s3313;
havoc appraiser_s3313;
havoc description_s3313;
havoc price_s3313;
havoc offerPrice_s3577;
havoc inspector_s3577;
havoc appraiser_s3577;
havoc description_s3577;
havoc price_s3577;
havoc offerPrice_s3841;
havoc inspector_s3841;
havoc appraiser_s3841;
havoc description_s3841;
havoc price_s3841;
havoc offerPrice_s4105;
havoc inspector_s4105;
havoc appraiser_s4105;
havoc description_s4105;
havoc price_s4105;
havoc offerPrice_s4369;
havoc inspector_s4369;
havoc appraiser_s4369;
havoc description_s4369;
havoc price_s4369;
havoc offerPrice_s4671;
havoc inspector_s4671;
havoc appraiser_s4671;
havoc description_s4671;
havoc price_s4671;
havoc offerPrice_s4935;
havoc inspector_s4935;
havoc appraiser_s4935;
havoc description_s4935;
havoc price_s4935;
havoc offerPrice_s5199;
havoc inspector_s5199;
havoc appraiser_s5199;
havoc description_s5199;
havoc price_s5199;
havoc offerPrice_s5463;
havoc inspector_s5463;
havoc appraiser_s5463;
havoc description_s5463;
havoc price_s5463;
havoc offerPrice_s5723;
havoc inspector_s5723;
havoc appraiser_s5723;
havoc description_s5723;
havoc price_s5723;
havoc offerPrice_s6021;
havoc inspector_s6021;
havoc appraiser_s6021;
havoc description_s6021;
havoc price_s6021;
havoc offerPrice_s6281;
havoc inspector_s6281;
havoc appraiser_s6281;
havoc description_s6281;
havoc price_s6281;
havoc offerPrice_s6541;
havoc inspector_s6541;
havoc appraiser_s6541;
havoc description_s6541;
havoc price_s6541;
havoc offerPrice_s6801;
havoc inspector_s6801;
havoc appraiser_s6801;
havoc description_s6801;
havoc price_s6801;
havoc description_s6854;
havoc price_s6854;
havoc description_s6906;
havoc price_s6906;
havoc inspector_s6976;
havoc appraiser_s6976;
havoc offerPrice_s6976;
havoc offerPrice_s7200;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (35)) {
call validCombination0x0x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s269, inspector_s269, appraiser_s269, description_s269, price_s269);
} else if ((choice) == (34)) {
call validCombination0x0x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s575, inspector_s575, appraiser_s575, description_s575, price_s575);
} else if ((choice) == (33)) {
call validCombination0x0x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s843, inspector_s843, appraiser_s843, description_s843, price_s843);
} else if ((choice) == (32)) {
call validCombination0x0x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1111, inspector_s1111, appraiser_s1111, description_s1111, price_s1111);
} else if ((choice) == (31)) {
call validCombination0x0x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1379, inspector_s1379, appraiser_s1379, description_s1379, price_s1379);
} else if ((choice) == (30)) {
call validCombination0x1x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1645, inspector_s1645, appraiser_s1645, description_s1645, price_s1645);
} else if ((choice) == (29)) {
call validCombination0x1x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1949, inspector_s1949, appraiser_s1949, description_s1949, price_s1949);
} else if ((choice) == (28)) {
call validCombination0x1x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2215, inspector_s2215, appraiser_s2215, description_s2215, price_s2215);
} else if ((choice) == (27)) {
call validCombination0x1x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2481, inspector_s2481, appraiser_s2481, description_s2481, price_s2481);
} else if ((choice) == (26)) {
call validCombination0x1x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2747, inspector_s2747, appraiser_s2747, description_s2747, price_s2747);
} else if ((choice) == (25)) {
call validCombination0x2x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3011, inspector_s3011, appraiser_s3011, description_s3011, price_s3011);
} else if ((choice) == (24)) {
call validCombination0x2x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3313, inspector_s3313, appraiser_s3313, description_s3313, price_s3313);
} else if ((choice) == (23)) {
call validCombination0x2x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3577, inspector_s3577, appraiser_s3577, description_s3577, price_s3577);
} else if ((choice) == (22)) {
call validCombination0x2x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3841, inspector_s3841, appraiser_s3841, description_s3841, price_s3841);
} else if ((choice) == (21)) {
call validCombination0x2x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4105, inspector_s4105, appraiser_s4105, description_s4105, price_s4105);
} else if ((choice) == (20)) {
call validCombination0x3x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4369, inspector_s4369, appraiser_s4369, description_s4369, price_s4369);
} else if ((choice) == (19)) {
call validCombination0x3x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4671, inspector_s4671, appraiser_s4671, description_s4671, price_s4671);
} else if ((choice) == (18)) {
call validCombination0x3x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4935, inspector_s4935, appraiser_s4935, description_s4935, price_s4935);
} else if ((choice) == (17)) {
call validCombination0x3x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5199, inspector_s5199, appraiser_s5199, description_s5199, price_s5199);
} else if ((choice) == (16)) {
call validCombination0x3x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5463, inspector_s5463, appraiser_s5463, description_s5463, price_s5463);
} else if ((choice) == (15)) {
call validCombination0x4x0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5723, inspector_s5723, appraiser_s5723, description_s5723, price_s5723);
} else if ((choice) == (14)) {
call validCombination0x4x5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6021, inspector_s6021, appraiser_s6021, description_s6021, price_s6021);
} else if ((choice) == (13)) {
call validCombination0x4x7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6281, inspector_s6281, appraiser_s6281, description_s6281, price_s6281);
} else if ((choice) == (12)) {
call validCombination0x4x8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6541, inspector_s6541, appraiser_s6541, description_s6541, price_s6541);
} else if ((choice) == (11)) {
call validCombination0x4x9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6801, inspector_s6801, appraiser_s6801, description_s6801, price_s6801);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6906, price_s6906);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6976, appraiser_s6976, offerPrice_s6976);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s7200);
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
var description_s6854: int;
var price_s6854: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6854, price_s6854);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


