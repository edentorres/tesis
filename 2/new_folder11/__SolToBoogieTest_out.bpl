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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s146: int, inspector_s146: Ref, appraiser_s146: Ref, description_s146: int, price_s146: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s291: int, inspector_s291: Ref, appraiser_s291: Ref, description_s291: int, price_s291: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s436: int, inspector_s436: Ref, appraiser_s436: Ref, description_s436: int, price_s436: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s581: int, inspector_s581: Ref, appraiser_s581: Ref, description_s581: int, price_s581: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s726: int, inspector_s726: Ref, appraiser_s726: Ref, description_s726: int, price_s726: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s871: int, inspector_s871: Ref, appraiser_s871: Ref, description_s871: int, price_s871: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1016: int, inspector_s1016: Ref, appraiser_s1016: Ref, description_s1016: int, price_s1016: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1161: int, inspector_s1161: Ref, appraiser_s1161: Ref, description_s1161: int, price_s1161: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1306: int, inspector_s1306: Ref, appraiser_s1306: Ref, description_s1306: int, price_s1306: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1451: int, inspector_s1451: Ref, appraiser_s1451: Ref, description_s1451: int, price_s1451: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1596: int, inspector_s1596: Ref, appraiser_s1596: Ref, description_s1596: int, price_s1596: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1741: int, inspector_s1741: Ref, appraiser_s1741: Ref, description_s1741: int, price_s1741: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1886: int, inspector_s1886: Ref, appraiser_s1886: Ref, description_s1886: int, price_s1886: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2031: int, inspector_s2031: Ref, appraiser_s2031: Ref, description_s2031: int, price_s2031: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2176: int, inspector_s2176: Ref, appraiser_s2176: Ref, description_s2176: int, price_s2176: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2321: int, inspector_s2321: Ref, appraiser_s2321: Ref, description_s2321: int, price_s2321: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2466: int, inspector_s2466: Ref, appraiser_s2466: Ref, description_s2466: int, price_s2466: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2611: int, inspector_s2611: Ref, appraiser_s2611: Ref, description_s2611: int, price_s2611: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2756: int, inspector_s2756: Ref, appraiser_s2756: Ref, description_s2756: int, price_s2756: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2901: int, inspector_s2901: Ref, appraiser_s2901: Ref, description_s2901: int, price_s2901: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3046: int, inspector_s3046: Ref, appraiser_s3046: Ref, description_s3046: int, price_s3046: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3191: int, inspector_s3191: Ref, appraiser_s3191: Ref, description_s3191: int, price_s3191: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3336: int, inspector_s3336: Ref, appraiser_s3336: Ref, description_s3336: int, price_s3336: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3481: int, inspector_s3481: Ref, appraiser_s3481: Ref, description_s3481: int, price_s3481: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3626: int, inspector_s3626: Ref, appraiser_s3626: Ref, description_s3626: int, price_s3626: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3771: int, inspector_s3771: Ref, appraiser_s3771: Ref, description_s3771: int, price_s3771: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3916: int, inspector_s3916: Ref, appraiser_s3916: Ref, description_s3916: int, price_s3916: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4061: int, inspector_s4061: Ref, appraiser_s4061: Ref, description_s4061: int, price_s4061: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4206: int, inspector_s4206: Ref, appraiser_s4206: Ref, description_s4206: int, price_s4206: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4351: int, inspector_s4351: Ref, appraiser_s4351: Ref, description_s4351: int, price_s4351: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4496: int, inspector_s4496: Ref, appraiser_s4496: Ref, description_s4496: int, price_s4496: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4641: int, inspector_s4641: Ref, appraiser_s4641: Ref, description_s4641: int, price_s4641: int);
procedure {:public} {:inline 1} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4784: int, inspector_s4784: Ref, appraiser_s4784: Ref, description_s4784: int, price_s4784: int);
procedure {:public} {:inline 1} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4927: int, inspector_s4927: Ref, appraiser_s4927: Ref, description_s4927: int, price_s4927: int);
procedure {:public} {:inline 1} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5070: int, inspector_s5070: Ref, appraiser_s5070: Ref, description_s5070: int, price_s5070: int);
procedure {:public} {:inline 1} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5213: int, inspector_s5213: Ref, appraiser_s5213: Ref, description_s5213: int, price_s5213: int);
procedure {:public} {:inline 1} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5356: int, inspector_s5356: Ref, appraiser_s5356: Ref, description_s5356: int, price_s5356: int);
procedure {:public} {:inline 1} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5499: int, inspector_s5499: Ref, appraiser_s5499: Ref, description_s5499: int, price_s5499: int);
procedure {:public} {:inline 1} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5642: int, inspector_s5642: Ref, appraiser_s5642: Ref, description_s5642: int, price_s5642: int);
procedure {:public} {:inline 1} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5785: int, inspector_s5785: Ref, appraiser_s5785: Ref, description_s5785: int, price_s5785: int);
procedure {:public} {:inline 1} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5928: int, inspector_s5928: Ref, appraiser_s5928: Ref, description_s5928: int, price_s5928: int);
procedure {:public} {:inline 1} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6069: int, inspector_s6069: Ref, appraiser_s6069: Ref, description_s6069: int, price_s6069: int);
implementation validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6069: int, inspector_s6069: Ref, appraiser_s6069: Ref, description_s6069: int, price_s6069: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6069);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6069);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6069);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6069);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6069);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 252} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 252} (true);
assume ((((((((true) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 257} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -123569219;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6122);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6122);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 271} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 272} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6122) >= (0));
AskingPrice_AssetTransfer[this] := price_s6122;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 273} (true);
Description_AssetTransfer[this] := description_s6122;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 274} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6122: int, price_s6122: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6122);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6122);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6122, price_s6122);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 280} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 284} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 284} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 285} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6174: int, price_s6174: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6174: int, price_s6174: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6174);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6174);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 292} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 294} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 295} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 299} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 299} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 300} (true);
Description_AssetTransfer[this] := description_s6174;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 301} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6174) >= (0));
AskingPrice_AssetTransfer[this] := price_s6174;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6244: Ref, appraiser_s6244: Ref, offerPrice_s6244: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6244: Ref, appraiser_s6244: Ref, offerPrice_s6244: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6244);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6244);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6244);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 306} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 306} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s6244) >= (0));
if ((((inspector_s6244) == (null)) || ((appraiser_s6244) == (null))) || ((offerPrice_s6244) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 310} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 312} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 314} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 314} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 315} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 320} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 321} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 322} (true);
InstanceInspector_AssetTransfer[this] := inspector_s6244;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 323} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s6244;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 324} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6244) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6244;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 325} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 330} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 331} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 334} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 335} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 339} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 340} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 345} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 345} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 349} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 350} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 354} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 355} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 356} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 361} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 361} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 366} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 367} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 373} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 373} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 374} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 380} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 380} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 381} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 382} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 384} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 385} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 387} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 388} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 393} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 393} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 396} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 398} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 399} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 401} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6468: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6468: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6468);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 407} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 408} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 411} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 411} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 411} (true);
assume ((offerPrice_s6468) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s6468) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 416} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 416} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 417} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6468) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6468;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 422} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 426} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 427} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 431} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 431} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 432} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 433} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 434} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 439} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 440} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 444} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 444} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 445} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 446} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 448} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 449} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 450} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 451} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 456} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 456} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 461} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 462} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 466} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 466} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 467} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 468} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 470} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 471} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 472} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 473} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 478} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder11/CombinationsTemp11.sol"} {:sourceLine 478} (true);
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
var offerPrice_s146: int;
var inspector_s146: Ref;
var appraiser_s146: Ref;
var description_s146: int;
var price_s146: int;
var offerPrice_s291: int;
var inspector_s291: Ref;
var appraiser_s291: Ref;
var description_s291: int;
var price_s291: int;
var offerPrice_s436: int;
var inspector_s436: Ref;
var appraiser_s436: Ref;
var description_s436: int;
var price_s436: int;
var offerPrice_s581: int;
var inspector_s581: Ref;
var appraiser_s581: Ref;
var description_s581: int;
var price_s581: int;
var offerPrice_s726: int;
var inspector_s726: Ref;
var appraiser_s726: Ref;
var description_s726: int;
var price_s726: int;
var offerPrice_s871: int;
var inspector_s871: Ref;
var appraiser_s871: Ref;
var description_s871: int;
var price_s871: int;
var offerPrice_s1016: int;
var inspector_s1016: Ref;
var appraiser_s1016: Ref;
var description_s1016: int;
var price_s1016: int;
var offerPrice_s1161: int;
var inspector_s1161: Ref;
var appraiser_s1161: Ref;
var description_s1161: int;
var price_s1161: int;
var offerPrice_s1306: int;
var inspector_s1306: Ref;
var appraiser_s1306: Ref;
var description_s1306: int;
var price_s1306: int;
var offerPrice_s1451: int;
var inspector_s1451: Ref;
var appraiser_s1451: Ref;
var description_s1451: int;
var price_s1451: int;
var offerPrice_s1596: int;
var inspector_s1596: Ref;
var appraiser_s1596: Ref;
var description_s1596: int;
var price_s1596: int;
var offerPrice_s1741: int;
var inspector_s1741: Ref;
var appraiser_s1741: Ref;
var description_s1741: int;
var price_s1741: int;
var offerPrice_s1886: int;
var inspector_s1886: Ref;
var appraiser_s1886: Ref;
var description_s1886: int;
var price_s1886: int;
var offerPrice_s2031: int;
var inspector_s2031: Ref;
var appraiser_s2031: Ref;
var description_s2031: int;
var price_s2031: int;
var offerPrice_s2176: int;
var inspector_s2176: Ref;
var appraiser_s2176: Ref;
var description_s2176: int;
var price_s2176: int;
var offerPrice_s2321: int;
var inspector_s2321: Ref;
var appraiser_s2321: Ref;
var description_s2321: int;
var price_s2321: int;
var offerPrice_s2466: int;
var inspector_s2466: Ref;
var appraiser_s2466: Ref;
var description_s2466: int;
var price_s2466: int;
var offerPrice_s2611: int;
var inspector_s2611: Ref;
var appraiser_s2611: Ref;
var description_s2611: int;
var price_s2611: int;
var offerPrice_s2756: int;
var inspector_s2756: Ref;
var appraiser_s2756: Ref;
var description_s2756: int;
var price_s2756: int;
var offerPrice_s2901: int;
var inspector_s2901: Ref;
var appraiser_s2901: Ref;
var description_s2901: int;
var price_s2901: int;
var offerPrice_s3046: int;
var inspector_s3046: Ref;
var appraiser_s3046: Ref;
var description_s3046: int;
var price_s3046: int;
var offerPrice_s3191: int;
var inspector_s3191: Ref;
var appraiser_s3191: Ref;
var description_s3191: int;
var price_s3191: int;
var offerPrice_s3336: int;
var inspector_s3336: Ref;
var appraiser_s3336: Ref;
var description_s3336: int;
var price_s3336: int;
var offerPrice_s3481: int;
var inspector_s3481: Ref;
var appraiser_s3481: Ref;
var description_s3481: int;
var price_s3481: int;
var offerPrice_s3626: int;
var inspector_s3626: Ref;
var appraiser_s3626: Ref;
var description_s3626: int;
var price_s3626: int;
var offerPrice_s3771: int;
var inspector_s3771: Ref;
var appraiser_s3771: Ref;
var description_s3771: int;
var price_s3771: int;
var offerPrice_s3916: int;
var inspector_s3916: Ref;
var appraiser_s3916: Ref;
var description_s3916: int;
var price_s3916: int;
var offerPrice_s4061: int;
var inspector_s4061: Ref;
var appraiser_s4061: Ref;
var description_s4061: int;
var price_s4061: int;
var offerPrice_s4206: int;
var inspector_s4206: Ref;
var appraiser_s4206: Ref;
var description_s4206: int;
var price_s4206: int;
var offerPrice_s4351: int;
var inspector_s4351: Ref;
var appraiser_s4351: Ref;
var description_s4351: int;
var price_s4351: int;
var offerPrice_s4496: int;
var inspector_s4496: Ref;
var appraiser_s4496: Ref;
var description_s4496: int;
var price_s4496: int;
var offerPrice_s4641: int;
var inspector_s4641: Ref;
var appraiser_s4641: Ref;
var description_s4641: int;
var price_s4641: int;
var offerPrice_s4784: int;
var inspector_s4784: Ref;
var appraiser_s4784: Ref;
var description_s4784: int;
var price_s4784: int;
var offerPrice_s4927: int;
var inspector_s4927: Ref;
var appraiser_s4927: Ref;
var description_s4927: int;
var price_s4927: int;
var offerPrice_s5070: int;
var inspector_s5070: Ref;
var appraiser_s5070: Ref;
var description_s5070: int;
var price_s5070: int;
var offerPrice_s5213: int;
var inspector_s5213: Ref;
var appraiser_s5213: Ref;
var description_s5213: int;
var price_s5213: int;
var offerPrice_s5356: int;
var inspector_s5356: Ref;
var appraiser_s5356: Ref;
var description_s5356: int;
var price_s5356: int;
var offerPrice_s5499: int;
var inspector_s5499: Ref;
var appraiser_s5499: Ref;
var description_s5499: int;
var price_s5499: int;
var offerPrice_s5642: int;
var inspector_s5642: Ref;
var appraiser_s5642: Ref;
var description_s5642: int;
var price_s5642: int;
var offerPrice_s5785: int;
var inspector_s5785: Ref;
var appraiser_s5785: Ref;
var description_s5785: int;
var price_s5785: int;
var offerPrice_s5928: int;
var inspector_s5928: Ref;
var appraiser_s5928: Ref;
var description_s5928: int;
var price_s5928: int;
var offerPrice_s6069: int;
var inspector_s6069: Ref;
var appraiser_s6069: Ref;
var description_s6069: int;
var price_s6069: int;
var description_s6122: int;
var price_s6122: int;
var description_s6174: int;
var price_s6174: int;
var inspector_s6244: Ref;
var appraiser_s6244: Ref;
var offerPrice_s6244: int;
var offerPrice_s6468: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6122, price_s6122);
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
havoc offerPrice_s146;
havoc inspector_s146;
havoc appraiser_s146;
havoc description_s146;
havoc price_s146;
havoc offerPrice_s291;
havoc inspector_s291;
havoc appraiser_s291;
havoc description_s291;
havoc price_s291;
havoc offerPrice_s436;
havoc inspector_s436;
havoc appraiser_s436;
havoc description_s436;
havoc price_s436;
havoc offerPrice_s581;
havoc inspector_s581;
havoc appraiser_s581;
havoc description_s581;
havoc price_s581;
havoc offerPrice_s726;
havoc inspector_s726;
havoc appraiser_s726;
havoc description_s726;
havoc price_s726;
havoc offerPrice_s871;
havoc inspector_s871;
havoc appraiser_s871;
havoc description_s871;
havoc price_s871;
havoc offerPrice_s1016;
havoc inspector_s1016;
havoc appraiser_s1016;
havoc description_s1016;
havoc price_s1016;
havoc offerPrice_s1161;
havoc inspector_s1161;
havoc appraiser_s1161;
havoc description_s1161;
havoc price_s1161;
havoc offerPrice_s1306;
havoc inspector_s1306;
havoc appraiser_s1306;
havoc description_s1306;
havoc price_s1306;
havoc offerPrice_s1451;
havoc inspector_s1451;
havoc appraiser_s1451;
havoc description_s1451;
havoc price_s1451;
havoc offerPrice_s1596;
havoc inspector_s1596;
havoc appraiser_s1596;
havoc description_s1596;
havoc price_s1596;
havoc offerPrice_s1741;
havoc inspector_s1741;
havoc appraiser_s1741;
havoc description_s1741;
havoc price_s1741;
havoc offerPrice_s1886;
havoc inspector_s1886;
havoc appraiser_s1886;
havoc description_s1886;
havoc price_s1886;
havoc offerPrice_s2031;
havoc inspector_s2031;
havoc appraiser_s2031;
havoc description_s2031;
havoc price_s2031;
havoc offerPrice_s2176;
havoc inspector_s2176;
havoc appraiser_s2176;
havoc description_s2176;
havoc price_s2176;
havoc offerPrice_s2321;
havoc inspector_s2321;
havoc appraiser_s2321;
havoc description_s2321;
havoc price_s2321;
havoc offerPrice_s2466;
havoc inspector_s2466;
havoc appraiser_s2466;
havoc description_s2466;
havoc price_s2466;
havoc offerPrice_s2611;
havoc inspector_s2611;
havoc appraiser_s2611;
havoc description_s2611;
havoc price_s2611;
havoc offerPrice_s2756;
havoc inspector_s2756;
havoc appraiser_s2756;
havoc description_s2756;
havoc price_s2756;
havoc offerPrice_s2901;
havoc inspector_s2901;
havoc appraiser_s2901;
havoc description_s2901;
havoc price_s2901;
havoc offerPrice_s3046;
havoc inspector_s3046;
havoc appraiser_s3046;
havoc description_s3046;
havoc price_s3046;
havoc offerPrice_s3191;
havoc inspector_s3191;
havoc appraiser_s3191;
havoc description_s3191;
havoc price_s3191;
havoc offerPrice_s3336;
havoc inspector_s3336;
havoc appraiser_s3336;
havoc description_s3336;
havoc price_s3336;
havoc offerPrice_s3481;
havoc inspector_s3481;
havoc appraiser_s3481;
havoc description_s3481;
havoc price_s3481;
havoc offerPrice_s3626;
havoc inspector_s3626;
havoc appraiser_s3626;
havoc description_s3626;
havoc price_s3626;
havoc offerPrice_s3771;
havoc inspector_s3771;
havoc appraiser_s3771;
havoc description_s3771;
havoc price_s3771;
havoc offerPrice_s3916;
havoc inspector_s3916;
havoc appraiser_s3916;
havoc description_s3916;
havoc price_s3916;
havoc offerPrice_s4061;
havoc inspector_s4061;
havoc appraiser_s4061;
havoc description_s4061;
havoc price_s4061;
havoc offerPrice_s4206;
havoc inspector_s4206;
havoc appraiser_s4206;
havoc description_s4206;
havoc price_s4206;
havoc offerPrice_s4351;
havoc inspector_s4351;
havoc appraiser_s4351;
havoc description_s4351;
havoc price_s4351;
havoc offerPrice_s4496;
havoc inspector_s4496;
havoc appraiser_s4496;
havoc description_s4496;
havoc price_s4496;
havoc offerPrice_s4641;
havoc inspector_s4641;
havoc appraiser_s4641;
havoc description_s4641;
havoc price_s4641;
havoc offerPrice_s4784;
havoc inspector_s4784;
havoc appraiser_s4784;
havoc description_s4784;
havoc price_s4784;
havoc offerPrice_s4927;
havoc inspector_s4927;
havoc appraiser_s4927;
havoc description_s4927;
havoc price_s4927;
havoc offerPrice_s5070;
havoc inspector_s5070;
havoc appraiser_s5070;
havoc description_s5070;
havoc price_s5070;
havoc offerPrice_s5213;
havoc inspector_s5213;
havoc appraiser_s5213;
havoc description_s5213;
havoc price_s5213;
havoc offerPrice_s5356;
havoc inspector_s5356;
havoc appraiser_s5356;
havoc description_s5356;
havoc price_s5356;
havoc offerPrice_s5499;
havoc inspector_s5499;
havoc appraiser_s5499;
havoc description_s5499;
havoc price_s5499;
havoc offerPrice_s5642;
havoc inspector_s5642;
havoc appraiser_s5642;
havoc description_s5642;
havoc price_s5642;
havoc offerPrice_s5785;
havoc inspector_s5785;
havoc appraiser_s5785;
havoc description_s5785;
havoc price_s5785;
havoc offerPrice_s5928;
havoc inspector_s5928;
havoc appraiser_s5928;
havoc description_s5928;
havoc price_s5928;
havoc offerPrice_s6069;
havoc inspector_s6069;
havoc appraiser_s6069;
havoc description_s6069;
havoc price_s6069;
havoc description_s6122;
havoc price_s6122;
havoc description_s6174;
havoc price_s6174;
havoc inspector_s6244;
havoc appraiser_s6244;
havoc offerPrice_s6244;
havoc offerPrice_s6468;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s146, inspector_s146, appraiser_s146, description_s146, price_s146);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s291, inspector_s291, appraiser_s291, description_s291, price_s291);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s436, inspector_s436, appraiser_s436, description_s436, price_s436);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s581, inspector_s581, appraiser_s581, description_s581, price_s581);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s726, inspector_s726, appraiser_s726, description_s726, price_s726);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s871, inspector_s871, appraiser_s871, description_s871, price_s871);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1016, inspector_s1016, appraiser_s1016, description_s1016, price_s1016);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1161, inspector_s1161, appraiser_s1161, description_s1161, price_s1161);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1306, inspector_s1306, appraiser_s1306, description_s1306, price_s1306);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1451, inspector_s1451, appraiser_s1451, description_s1451, price_s1451);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1596, inspector_s1596, appraiser_s1596, description_s1596, price_s1596);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1741, inspector_s1741, appraiser_s1741, description_s1741, price_s1741);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1886, inspector_s1886, appraiser_s1886, description_s1886, price_s1886);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2031, inspector_s2031, appraiser_s2031, description_s2031, price_s2031);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2176, inspector_s2176, appraiser_s2176, description_s2176, price_s2176);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2321, inspector_s2321, appraiser_s2321, description_s2321, price_s2321);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2466, inspector_s2466, appraiser_s2466, description_s2466, price_s2466);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2611, inspector_s2611, appraiser_s2611, description_s2611, price_s2611);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2756, inspector_s2756, appraiser_s2756, description_s2756, price_s2756);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2901, inspector_s2901, appraiser_s2901, description_s2901, price_s2901);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3046, inspector_s3046, appraiser_s3046, description_s3046, price_s3046);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3191, inspector_s3191, appraiser_s3191, description_s3191, price_s3191);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3336, inspector_s3336, appraiser_s3336, description_s3336, price_s3336);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3481, inspector_s3481, appraiser_s3481, description_s3481, price_s3481);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3626, inspector_s3626, appraiser_s3626, description_s3626, price_s3626);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3771, inspector_s3771, appraiser_s3771, description_s3771, price_s3771);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3916, inspector_s3916, appraiser_s3916, description_s3916, price_s3916);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4061, inspector_s4061, appraiser_s4061, description_s4061, price_s4061);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4206, inspector_s4206, appraiser_s4206, description_s4206, price_s4206);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4351, inspector_s4351, appraiser_s4351, description_s4351, price_s4351);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4496, inspector_s4496, appraiser_s4496, description_s4496, price_s4496);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4641, inspector_s4641, appraiser_s4641, description_s4641, price_s4641);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4784, inspector_s4784, appraiser_s4784, description_s4784, price_s4784);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4927, inspector_s4927, appraiser_s4927, description_s4927, price_s4927);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5070, inspector_s5070, appraiser_s5070, description_s5070, price_s5070);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5213, inspector_s5213, appraiser_s5213, description_s5213, price_s5213);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5356, inspector_s5356, appraiser_s5356, description_s5356, price_s5356);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5499, inspector_s5499, appraiser_s5499, description_s5499, price_s5499);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5642, inspector_s5642, appraiser_s5642, description_s5642, price_s5642);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5785, inspector_s5785, appraiser_s5785, description_s5785, price_s5785);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5928, inspector_s5928, appraiser_s5928, description_s5928, price_s5928);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6069, inspector_s6069, appraiser_s6069, description_s6069, price_s6069);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6174, price_s6174);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6244, appraiser_s6244, offerPrice_s6244);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6468);
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
var offerPrice_s146: int;
var inspector_s146: Ref;
var appraiser_s146: Ref;
var description_s146: int;
var price_s146: int;
var offerPrice_s291: int;
var inspector_s291: Ref;
var appraiser_s291: Ref;
var description_s291: int;
var price_s291: int;
var offerPrice_s436: int;
var inspector_s436: Ref;
var appraiser_s436: Ref;
var description_s436: int;
var price_s436: int;
var offerPrice_s581: int;
var inspector_s581: Ref;
var appraiser_s581: Ref;
var description_s581: int;
var price_s581: int;
var offerPrice_s726: int;
var inspector_s726: Ref;
var appraiser_s726: Ref;
var description_s726: int;
var price_s726: int;
var offerPrice_s871: int;
var inspector_s871: Ref;
var appraiser_s871: Ref;
var description_s871: int;
var price_s871: int;
var offerPrice_s1016: int;
var inspector_s1016: Ref;
var appraiser_s1016: Ref;
var description_s1016: int;
var price_s1016: int;
var offerPrice_s1161: int;
var inspector_s1161: Ref;
var appraiser_s1161: Ref;
var description_s1161: int;
var price_s1161: int;
var offerPrice_s1306: int;
var inspector_s1306: Ref;
var appraiser_s1306: Ref;
var description_s1306: int;
var price_s1306: int;
var offerPrice_s1451: int;
var inspector_s1451: Ref;
var appraiser_s1451: Ref;
var description_s1451: int;
var price_s1451: int;
var offerPrice_s1596: int;
var inspector_s1596: Ref;
var appraiser_s1596: Ref;
var description_s1596: int;
var price_s1596: int;
var offerPrice_s1741: int;
var inspector_s1741: Ref;
var appraiser_s1741: Ref;
var description_s1741: int;
var price_s1741: int;
var offerPrice_s1886: int;
var inspector_s1886: Ref;
var appraiser_s1886: Ref;
var description_s1886: int;
var price_s1886: int;
var offerPrice_s2031: int;
var inspector_s2031: Ref;
var appraiser_s2031: Ref;
var description_s2031: int;
var price_s2031: int;
var offerPrice_s2176: int;
var inspector_s2176: Ref;
var appraiser_s2176: Ref;
var description_s2176: int;
var price_s2176: int;
var offerPrice_s2321: int;
var inspector_s2321: Ref;
var appraiser_s2321: Ref;
var description_s2321: int;
var price_s2321: int;
var offerPrice_s2466: int;
var inspector_s2466: Ref;
var appraiser_s2466: Ref;
var description_s2466: int;
var price_s2466: int;
var offerPrice_s2611: int;
var inspector_s2611: Ref;
var appraiser_s2611: Ref;
var description_s2611: int;
var price_s2611: int;
var offerPrice_s2756: int;
var inspector_s2756: Ref;
var appraiser_s2756: Ref;
var description_s2756: int;
var price_s2756: int;
var offerPrice_s2901: int;
var inspector_s2901: Ref;
var appraiser_s2901: Ref;
var description_s2901: int;
var price_s2901: int;
var offerPrice_s3046: int;
var inspector_s3046: Ref;
var appraiser_s3046: Ref;
var description_s3046: int;
var price_s3046: int;
var offerPrice_s3191: int;
var inspector_s3191: Ref;
var appraiser_s3191: Ref;
var description_s3191: int;
var price_s3191: int;
var offerPrice_s3336: int;
var inspector_s3336: Ref;
var appraiser_s3336: Ref;
var description_s3336: int;
var price_s3336: int;
var offerPrice_s3481: int;
var inspector_s3481: Ref;
var appraiser_s3481: Ref;
var description_s3481: int;
var price_s3481: int;
var offerPrice_s3626: int;
var inspector_s3626: Ref;
var appraiser_s3626: Ref;
var description_s3626: int;
var price_s3626: int;
var offerPrice_s3771: int;
var inspector_s3771: Ref;
var appraiser_s3771: Ref;
var description_s3771: int;
var price_s3771: int;
var offerPrice_s3916: int;
var inspector_s3916: Ref;
var appraiser_s3916: Ref;
var description_s3916: int;
var price_s3916: int;
var offerPrice_s4061: int;
var inspector_s4061: Ref;
var appraiser_s4061: Ref;
var description_s4061: int;
var price_s4061: int;
var offerPrice_s4206: int;
var inspector_s4206: Ref;
var appraiser_s4206: Ref;
var description_s4206: int;
var price_s4206: int;
var offerPrice_s4351: int;
var inspector_s4351: Ref;
var appraiser_s4351: Ref;
var description_s4351: int;
var price_s4351: int;
var offerPrice_s4496: int;
var inspector_s4496: Ref;
var appraiser_s4496: Ref;
var description_s4496: int;
var price_s4496: int;
var offerPrice_s4641: int;
var inspector_s4641: Ref;
var appraiser_s4641: Ref;
var description_s4641: int;
var price_s4641: int;
var offerPrice_s4784: int;
var inspector_s4784: Ref;
var appraiser_s4784: Ref;
var description_s4784: int;
var price_s4784: int;
var offerPrice_s4927: int;
var inspector_s4927: Ref;
var appraiser_s4927: Ref;
var description_s4927: int;
var price_s4927: int;
var offerPrice_s5070: int;
var inspector_s5070: Ref;
var appraiser_s5070: Ref;
var description_s5070: int;
var price_s5070: int;
var offerPrice_s5213: int;
var inspector_s5213: Ref;
var appraiser_s5213: Ref;
var description_s5213: int;
var price_s5213: int;
var offerPrice_s5356: int;
var inspector_s5356: Ref;
var appraiser_s5356: Ref;
var description_s5356: int;
var price_s5356: int;
var offerPrice_s5499: int;
var inspector_s5499: Ref;
var appraiser_s5499: Ref;
var description_s5499: int;
var price_s5499: int;
var offerPrice_s5642: int;
var inspector_s5642: Ref;
var appraiser_s5642: Ref;
var description_s5642: int;
var price_s5642: int;
var offerPrice_s5785: int;
var inspector_s5785: Ref;
var appraiser_s5785: Ref;
var description_s5785: int;
var price_s5785: int;
var offerPrice_s5928: int;
var inspector_s5928: Ref;
var appraiser_s5928: Ref;
var description_s5928: int;
var price_s5928: int;
var offerPrice_s6069: int;
var inspector_s6069: Ref;
var appraiser_s6069: Ref;
var description_s6069: int;
var price_s6069: int;
var description_s6122: int;
var price_s6122: int;
var description_s6174: int;
var price_s6174: int;
var inspector_s6244: Ref;
var appraiser_s6244: Ref;
var offerPrice_s6244: int;
var offerPrice_s6468: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s146;
havoc inspector_s146;
havoc appraiser_s146;
havoc description_s146;
havoc price_s146;
havoc offerPrice_s291;
havoc inspector_s291;
havoc appraiser_s291;
havoc description_s291;
havoc price_s291;
havoc offerPrice_s436;
havoc inspector_s436;
havoc appraiser_s436;
havoc description_s436;
havoc price_s436;
havoc offerPrice_s581;
havoc inspector_s581;
havoc appraiser_s581;
havoc description_s581;
havoc price_s581;
havoc offerPrice_s726;
havoc inspector_s726;
havoc appraiser_s726;
havoc description_s726;
havoc price_s726;
havoc offerPrice_s871;
havoc inspector_s871;
havoc appraiser_s871;
havoc description_s871;
havoc price_s871;
havoc offerPrice_s1016;
havoc inspector_s1016;
havoc appraiser_s1016;
havoc description_s1016;
havoc price_s1016;
havoc offerPrice_s1161;
havoc inspector_s1161;
havoc appraiser_s1161;
havoc description_s1161;
havoc price_s1161;
havoc offerPrice_s1306;
havoc inspector_s1306;
havoc appraiser_s1306;
havoc description_s1306;
havoc price_s1306;
havoc offerPrice_s1451;
havoc inspector_s1451;
havoc appraiser_s1451;
havoc description_s1451;
havoc price_s1451;
havoc offerPrice_s1596;
havoc inspector_s1596;
havoc appraiser_s1596;
havoc description_s1596;
havoc price_s1596;
havoc offerPrice_s1741;
havoc inspector_s1741;
havoc appraiser_s1741;
havoc description_s1741;
havoc price_s1741;
havoc offerPrice_s1886;
havoc inspector_s1886;
havoc appraiser_s1886;
havoc description_s1886;
havoc price_s1886;
havoc offerPrice_s2031;
havoc inspector_s2031;
havoc appraiser_s2031;
havoc description_s2031;
havoc price_s2031;
havoc offerPrice_s2176;
havoc inspector_s2176;
havoc appraiser_s2176;
havoc description_s2176;
havoc price_s2176;
havoc offerPrice_s2321;
havoc inspector_s2321;
havoc appraiser_s2321;
havoc description_s2321;
havoc price_s2321;
havoc offerPrice_s2466;
havoc inspector_s2466;
havoc appraiser_s2466;
havoc description_s2466;
havoc price_s2466;
havoc offerPrice_s2611;
havoc inspector_s2611;
havoc appraiser_s2611;
havoc description_s2611;
havoc price_s2611;
havoc offerPrice_s2756;
havoc inspector_s2756;
havoc appraiser_s2756;
havoc description_s2756;
havoc price_s2756;
havoc offerPrice_s2901;
havoc inspector_s2901;
havoc appraiser_s2901;
havoc description_s2901;
havoc price_s2901;
havoc offerPrice_s3046;
havoc inspector_s3046;
havoc appraiser_s3046;
havoc description_s3046;
havoc price_s3046;
havoc offerPrice_s3191;
havoc inspector_s3191;
havoc appraiser_s3191;
havoc description_s3191;
havoc price_s3191;
havoc offerPrice_s3336;
havoc inspector_s3336;
havoc appraiser_s3336;
havoc description_s3336;
havoc price_s3336;
havoc offerPrice_s3481;
havoc inspector_s3481;
havoc appraiser_s3481;
havoc description_s3481;
havoc price_s3481;
havoc offerPrice_s3626;
havoc inspector_s3626;
havoc appraiser_s3626;
havoc description_s3626;
havoc price_s3626;
havoc offerPrice_s3771;
havoc inspector_s3771;
havoc appraiser_s3771;
havoc description_s3771;
havoc price_s3771;
havoc offerPrice_s3916;
havoc inspector_s3916;
havoc appraiser_s3916;
havoc description_s3916;
havoc price_s3916;
havoc offerPrice_s4061;
havoc inspector_s4061;
havoc appraiser_s4061;
havoc description_s4061;
havoc price_s4061;
havoc offerPrice_s4206;
havoc inspector_s4206;
havoc appraiser_s4206;
havoc description_s4206;
havoc price_s4206;
havoc offerPrice_s4351;
havoc inspector_s4351;
havoc appraiser_s4351;
havoc description_s4351;
havoc price_s4351;
havoc offerPrice_s4496;
havoc inspector_s4496;
havoc appraiser_s4496;
havoc description_s4496;
havoc price_s4496;
havoc offerPrice_s4641;
havoc inspector_s4641;
havoc appraiser_s4641;
havoc description_s4641;
havoc price_s4641;
havoc offerPrice_s4784;
havoc inspector_s4784;
havoc appraiser_s4784;
havoc description_s4784;
havoc price_s4784;
havoc offerPrice_s4927;
havoc inspector_s4927;
havoc appraiser_s4927;
havoc description_s4927;
havoc price_s4927;
havoc offerPrice_s5070;
havoc inspector_s5070;
havoc appraiser_s5070;
havoc description_s5070;
havoc price_s5070;
havoc offerPrice_s5213;
havoc inspector_s5213;
havoc appraiser_s5213;
havoc description_s5213;
havoc price_s5213;
havoc offerPrice_s5356;
havoc inspector_s5356;
havoc appraiser_s5356;
havoc description_s5356;
havoc price_s5356;
havoc offerPrice_s5499;
havoc inspector_s5499;
havoc appraiser_s5499;
havoc description_s5499;
havoc price_s5499;
havoc offerPrice_s5642;
havoc inspector_s5642;
havoc appraiser_s5642;
havoc description_s5642;
havoc price_s5642;
havoc offerPrice_s5785;
havoc inspector_s5785;
havoc appraiser_s5785;
havoc description_s5785;
havoc price_s5785;
havoc offerPrice_s5928;
havoc inspector_s5928;
havoc appraiser_s5928;
havoc description_s5928;
havoc price_s5928;
havoc offerPrice_s6069;
havoc inspector_s6069;
havoc appraiser_s6069;
havoc description_s6069;
havoc price_s6069;
havoc description_s6122;
havoc price_s6122;
havoc description_s6174;
havoc price_s6174;
havoc inspector_s6244;
havoc appraiser_s6244;
havoc offerPrice_s6244;
havoc offerPrice_s6468;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s146, inspector_s146, appraiser_s146, description_s146, price_s146);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s291, inspector_s291, appraiser_s291, description_s291, price_s291);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s436, inspector_s436, appraiser_s436, description_s436, price_s436);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s581, inspector_s581, appraiser_s581, description_s581, price_s581);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s726, inspector_s726, appraiser_s726, description_s726, price_s726);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s871, inspector_s871, appraiser_s871, description_s871, price_s871);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1016, inspector_s1016, appraiser_s1016, description_s1016, price_s1016);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1161, inspector_s1161, appraiser_s1161, description_s1161, price_s1161);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1306, inspector_s1306, appraiser_s1306, description_s1306, price_s1306);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1451, inspector_s1451, appraiser_s1451, description_s1451, price_s1451);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1596, inspector_s1596, appraiser_s1596, description_s1596, price_s1596);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1741, inspector_s1741, appraiser_s1741, description_s1741, price_s1741);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1886, inspector_s1886, appraiser_s1886, description_s1886, price_s1886);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2031, inspector_s2031, appraiser_s2031, description_s2031, price_s2031);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2176, inspector_s2176, appraiser_s2176, description_s2176, price_s2176);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2321, inspector_s2321, appraiser_s2321, description_s2321, price_s2321);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2466, inspector_s2466, appraiser_s2466, description_s2466, price_s2466);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2611, inspector_s2611, appraiser_s2611, description_s2611, price_s2611);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2756, inspector_s2756, appraiser_s2756, description_s2756, price_s2756);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2901, inspector_s2901, appraiser_s2901, description_s2901, price_s2901);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3046, inspector_s3046, appraiser_s3046, description_s3046, price_s3046);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3191, inspector_s3191, appraiser_s3191, description_s3191, price_s3191);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3336, inspector_s3336, appraiser_s3336, description_s3336, price_s3336);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3481, inspector_s3481, appraiser_s3481, description_s3481, price_s3481);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3626, inspector_s3626, appraiser_s3626, description_s3626, price_s3626);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3771, inspector_s3771, appraiser_s3771, description_s3771, price_s3771);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3916, inspector_s3916, appraiser_s3916, description_s3916, price_s3916);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4061, inspector_s4061, appraiser_s4061, description_s4061, price_s4061);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4206, inspector_s4206, appraiser_s4206, description_s4206, price_s4206);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4351, inspector_s4351, appraiser_s4351, description_s4351, price_s4351);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4496, inspector_s4496, appraiser_s4496, description_s4496, price_s4496);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4641, inspector_s4641, appraiser_s4641, description_s4641, price_s4641);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4784, inspector_s4784, appraiser_s4784, description_s4784, price_s4784);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4927, inspector_s4927, appraiser_s4927, description_s4927, price_s4927);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5070, inspector_s5070, appraiser_s5070, description_s5070, price_s5070);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5213, inspector_s5213, appraiser_s5213, description_s5213, price_s5213);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5356, inspector_s5356, appraiser_s5356, description_s5356, price_s5356);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5499, inspector_s5499, appraiser_s5499, description_s5499, price_s5499);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5642, inspector_s5642, appraiser_s5642, description_s5642, price_s5642);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5785, inspector_s5785, appraiser_s5785, description_s5785, price_s5785);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5928, inspector_s5928, appraiser_s5928, description_s5928, price_s5928);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6069, inspector_s6069, appraiser_s6069, description_s6069, price_s6069);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6174, price_s6174);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6244, appraiser_s6244, offerPrice_s6244);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6468);
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
var description_s6122: int;
var price_s6122: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6122, price_s6122);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


