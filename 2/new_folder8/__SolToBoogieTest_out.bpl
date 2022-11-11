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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s150: int, inspector_s150: Ref, appraiser_s150: Ref, description_s150: int, price_s150: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s299: int, inspector_s299: Ref, appraiser_s299: Ref, description_s299: int, price_s299: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s448: int, inspector_s448: Ref, appraiser_s448: Ref, description_s448: int, price_s448: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s597: int, inspector_s597: Ref, appraiser_s597: Ref, description_s597: int, price_s597: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s746: int, inspector_s746: Ref, appraiser_s746: Ref, description_s746: int, price_s746: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s895: int, inspector_s895: Ref, appraiser_s895: Ref, description_s895: int, price_s895: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1044: int, inspector_s1044: Ref, appraiser_s1044: Ref, description_s1044: int, price_s1044: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1193: int, inspector_s1193: Ref, appraiser_s1193: Ref, description_s1193: int, price_s1193: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1342: int, inspector_s1342: Ref, appraiser_s1342: Ref, description_s1342: int, price_s1342: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1491: int, inspector_s1491: Ref, appraiser_s1491: Ref, description_s1491: int, price_s1491: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1640: int, inspector_s1640: Ref, appraiser_s1640: Ref, description_s1640: int, price_s1640: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1789: int, inspector_s1789: Ref, appraiser_s1789: Ref, description_s1789: int, price_s1789: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1938: int, inspector_s1938: Ref, appraiser_s1938: Ref, description_s1938: int, price_s1938: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2087: int, inspector_s2087: Ref, appraiser_s2087: Ref, description_s2087: int, price_s2087: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2236: int, inspector_s2236: Ref, appraiser_s2236: Ref, description_s2236: int, price_s2236: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2385: int, inspector_s2385: Ref, appraiser_s2385: Ref, description_s2385: int, price_s2385: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2534: int, inspector_s2534: Ref, appraiser_s2534: Ref, description_s2534: int, price_s2534: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2683: int, inspector_s2683: Ref, appraiser_s2683: Ref, description_s2683: int, price_s2683: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2832: int, inspector_s2832: Ref, appraiser_s2832: Ref, description_s2832: int, price_s2832: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2981: int, inspector_s2981: Ref, appraiser_s2981: Ref, description_s2981: int, price_s2981: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3130: int, inspector_s3130: Ref, appraiser_s3130: Ref, description_s3130: int, price_s3130: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3279: int, inspector_s3279: Ref, appraiser_s3279: Ref, description_s3279: int, price_s3279: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3428: int, inspector_s3428: Ref, appraiser_s3428: Ref, description_s3428: int, price_s3428: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3577: int, inspector_s3577: Ref, appraiser_s3577: Ref, description_s3577: int, price_s3577: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3726: int, inspector_s3726: Ref, appraiser_s3726: Ref, description_s3726: int, price_s3726: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3875: int, inspector_s3875: Ref, appraiser_s3875: Ref, description_s3875: int, price_s3875: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4024: int, inspector_s4024: Ref, appraiser_s4024: Ref, description_s4024: int, price_s4024: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4173: int, inspector_s4173: Ref, appraiser_s4173: Ref, description_s4173: int, price_s4173: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4322: int, inspector_s4322: Ref, appraiser_s4322: Ref, description_s4322: int, price_s4322: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4471: int, inspector_s4471: Ref, appraiser_s4471: Ref, description_s4471: int, price_s4471: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4620: int, inspector_s4620: Ref, appraiser_s4620: Ref, description_s4620: int, price_s4620: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4769: int, inspector_s4769: Ref, appraiser_s4769: Ref, description_s4769: int, price_s4769: int);
procedure {:public} {:inline 1} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4918: int, inspector_s4918: Ref, appraiser_s4918: Ref, description_s4918: int, price_s4918: int);
procedure {:public} {:inline 1} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5067: int, inspector_s5067: Ref, appraiser_s5067: Ref, description_s5067: int, price_s5067: int);
procedure {:public} {:inline 1} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5216: int, inspector_s5216: Ref, appraiser_s5216: Ref, description_s5216: int, price_s5216: int);
procedure {:public} {:inline 1} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5365: int, inspector_s5365: Ref, appraiser_s5365: Ref, description_s5365: int, price_s5365: int);
procedure {:public} {:inline 1} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5514: int, inspector_s5514: Ref, appraiser_s5514: Ref, description_s5514: int, price_s5514: int);
procedure {:public} {:inline 1} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5663: int, inspector_s5663: Ref, appraiser_s5663: Ref, description_s5663: int, price_s5663: int);
procedure {:public} {:inline 1} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5810: int, inspector_s5810: Ref, appraiser_s5810: Ref, description_s5810: int, price_s5810: int);
procedure {:public} {:inline 1} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5957: int, inspector_s5957: Ref, appraiser_s5957: Ref, description_s5957: int, price_s5957: int);
procedure {:public} {:inline 1} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6104: int, inspector_s6104: Ref, appraiser_s6104: Ref, description_s6104: int, price_s6104: int);
procedure {:public} {:inline 1} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6251: int, inspector_s6251: Ref, appraiser_s6251: Ref, description_s6251: int, price_s6251: int);
implementation validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6251: int, inspector_s6251: Ref, appraiser_s6251: Ref, description_s6251: int, price_s6251: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6251);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6251);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6251);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6251);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6251);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 252} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 252} (true);
assume ((((((((true) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 257} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6304: int, price_s6304: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6304: int, price_s6304: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -265027602;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6304);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6304);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 271} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 272} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6304) >= (0));
AskingPrice_AssetTransfer[this] := price_s6304;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 273} (true);
Description_AssetTransfer[this] := description_s6304;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 274} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6304: int, price_s6304: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6304: int, price_s6304: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6304);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6304);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6304, price_s6304);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 280} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 284} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 284} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 285} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6356: int, price_s6356: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6356: int, price_s6356: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6356);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6356);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 292} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 294} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 295} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 299} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 299} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 300} (true);
Description_AssetTransfer[this] := description_s6356;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 301} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6356) >= (0));
AskingPrice_AssetTransfer[this] := price_s6356;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6426: Ref, appraiser_s6426: Ref, offerPrice_s6426: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6426: Ref, appraiser_s6426: Ref, offerPrice_s6426: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6426);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6426);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6426);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 306} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 306} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s6426) >= (0));
if ((((inspector_s6426) == (null)) || ((appraiser_s6426) == (null))) || ((offerPrice_s6426) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 310} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 312} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 314} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 314} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 315} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 320} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 321} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 322} (true);
InstanceInspector_AssetTransfer[this] := inspector_s6426;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 323} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s6426;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 324} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6426) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6426;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 325} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 330} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 331} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 334} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 335} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 339} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 340} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 345} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 345} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 349} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 350} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 354} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 355} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 356} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 361} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 361} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 366} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 367} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 373} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 373} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 374} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 380} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 380} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 381} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 382} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 384} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 385} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 387} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 388} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 393} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 393} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 396} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 398} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 399} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 401} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6650: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6650: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6650);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 407} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 408} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 411} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 411} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 411} (true);
assume ((offerPrice_s6650) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s6650) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 416} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 416} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 417} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6650) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6650;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 422} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 426} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 427} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 431} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 431} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 432} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 433} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 434} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 439} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 440} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 444} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 444} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 445} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 446} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 448} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 449} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 450} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 451} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 456} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 456} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 461} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 462} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 466} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 466} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 467} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 468} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 470} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 471} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 472} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 473} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 478} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder8/CombinationsTemp8.sol"} {:sourceLine 478} (true);
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
var offerPrice_s150: int;
var inspector_s150: Ref;
var appraiser_s150: Ref;
var description_s150: int;
var price_s150: int;
var offerPrice_s299: int;
var inspector_s299: Ref;
var appraiser_s299: Ref;
var description_s299: int;
var price_s299: int;
var offerPrice_s448: int;
var inspector_s448: Ref;
var appraiser_s448: Ref;
var description_s448: int;
var price_s448: int;
var offerPrice_s597: int;
var inspector_s597: Ref;
var appraiser_s597: Ref;
var description_s597: int;
var price_s597: int;
var offerPrice_s746: int;
var inspector_s746: Ref;
var appraiser_s746: Ref;
var description_s746: int;
var price_s746: int;
var offerPrice_s895: int;
var inspector_s895: Ref;
var appraiser_s895: Ref;
var description_s895: int;
var price_s895: int;
var offerPrice_s1044: int;
var inspector_s1044: Ref;
var appraiser_s1044: Ref;
var description_s1044: int;
var price_s1044: int;
var offerPrice_s1193: int;
var inspector_s1193: Ref;
var appraiser_s1193: Ref;
var description_s1193: int;
var price_s1193: int;
var offerPrice_s1342: int;
var inspector_s1342: Ref;
var appraiser_s1342: Ref;
var description_s1342: int;
var price_s1342: int;
var offerPrice_s1491: int;
var inspector_s1491: Ref;
var appraiser_s1491: Ref;
var description_s1491: int;
var price_s1491: int;
var offerPrice_s1640: int;
var inspector_s1640: Ref;
var appraiser_s1640: Ref;
var description_s1640: int;
var price_s1640: int;
var offerPrice_s1789: int;
var inspector_s1789: Ref;
var appraiser_s1789: Ref;
var description_s1789: int;
var price_s1789: int;
var offerPrice_s1938: int;
var inspector_s1938: Ref;
var appraiser_s1938: Ref;
var description_s1938: int;
var price_s1938: int;
var offerPrice_s2087: int;
var inspector_s2087: Ref;
var appraiser_s2087: Ref;
var description_s2087: int;
var price_s2087: int;
var offerPrice_s2236: int;
var inspector_s2236: Ref;
var appraiser_s2236: Ref;
var description_s2236: int;
var price_s2236: int;
var offerPrice_s2385: int;
var inspector_s2385: Ref;
var appraiser_s2385: Ref;
var description_s2385: int;
var price_s2385: int;
var offerPrice_s2534: int;
var inspector_s2534: Ref;
var appraiser_s2534: Ref;
var description_s2534: int;
var price_s2534: int;
var offerPrice_s2683: int;
var inspector_s2683: Ref;
var appraiser_s2683: Ref;
var description_s2683: int;
var price_s2683: int;
var offerPrice_s2832: int;
var inspector_s2832: Ref;
var appraiser_s2832: Ref;
var description_s2832: int;
var price_s2832: int;
var offerPrice_s2981: int;
var inspector_s2981: Ref;
var appraiser_s2981: Ref;
var description_s2981: int;
var price_s2981: int;
var offerPrice_s3130: int;
var inspector_s3130: Ref;
var appraiser_s3130: Ref;
var description_s3130: int;
var price_s3130: int;
var offerPrice_s3279: int;
var inspector_s3279: Ref;
var appraiser_s3279: Ref;
var description_s3279: int;
var price_s3279: int;
var offerPrice_s3428: int;
var inspector_s3428: Ref;
var appraiser_s3428: Ref;
var description_s3428: int;
var price_s3428: int;
var offerPrice_s3577: int;
var inspector_s3577: Ref;
var appraiser_s3577: Ref;
var description_s3577: int;
var price_s3577: int;
var offerPrice_s3726: int;
var inspector_s3726: Ref;
var appraiser_s3726: Ref;
var description_s3726: int;
var price_s3726: int;
var offerPrice_s3875: int;
var inspector_s3875: Ref;
var appraiser_s3875: Ref;
var description_s3875: int;
var price_s3875: int;
var offerPrice_s4024: int;
var inspector_s4024: Ref;
var appraiser_s4024: Ref;
var description_s4024: int;
var price_s4024: int;
var offerPrice_s4173: int;
var inspector_s4173: Ref;
var appraiser_s4173: Ref;
var description_s4173: int;
var price_s4173: int;
var offerPrice_s4322: int;
var inspector_s4322: Ref;
var appraiser_s4322: Ref;
var description_s4322: int;
var price_s4322: int;
var offerPrice_s4471: int;
var inspector_s4471: Ref;
var appraiser_s4471: Ref;
var description_s4471: int;
var price_s4471: int;
var offerPrice_s4620: int;
var inspector_s4620: Ref;
var appraiser_s4620: Ref;
var description_s4620: int;
var price_s4620: int;
var offerPrice_s4769: int;
var inspector_s4769: Ref;
var appraiser_s4769: Ref;
var description_s4769: int;
var price_s4769: int;
var offerPrice_s4918: int;
var inspector_s4918: Ref;
var appraiser_s4918: Ref;
var description_s4918: int;
var price_s4918: int;
var offerPrice_s5067: int;
var inspector_s5067: Ref;
var appraiser_s5067: Ref;
var description_s5067: int;
var price_s5067: int;
var offerPrice_s5216: int;
var inspector_s5216: Ref;
var appraiser_s5216: Ref;
var description_s5216: int;
var price_s5216: int;
var offerPrice_s5365: int;
var inspector_s5365: Ref;
var appraiser_s5365: Ref;
var description_s5365: int;
var price_s5365: int;
var offerPrice_s5514: int;
var inspector_s5514: Ref;
var appraiser_s5514: Ref;
var description_s5514: int;
var price_s5514: int;
var offerPrice_s5663: int;
var inspector_s5663: Ref;
var appraiser_s5663: Ref;
var description_s5663: int;
var price_s5663: int;
var offerPrice_s5810: int;
var inspector_s5810: Ref;
var appraiser_s5810: Ref;
var description_s5810: int;
var price_s5810: int;
var offerPrice_s5957: int;
var inspector_s5957: Ref;
var appraiser_s5957: Ref;
var description_s5957: int;
var price_s5957: int;
var offerPrice_s6104: int;
var inspector_s6104: Ref;
var appraiser_s6104: Ref;
var description_s6104: int;
var price_s6104: int;
var offerPrice_s6251: int;
var inspector_s6251: Ref;
var appraiser_s6251: Ref;
var description_s6251: int;
var price_s6251: int;
var description_s6304: int;
var price_s6304: int;
var description_s6356: int;
var price_s6356: int;
var inspector_s6426: Ref;
var appraiser_s6426: Ref;
var offerPrice_s6426: int;
var offerPrice_s6650: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6304, price_s6304);
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
havoc offerPrice_s150;
havoc inspector_s150;
havoc appraiser_s150;
havoc description_s150;
havoc price_s150;
havoc offerPrice_s299;
havoc inspector_s299;
havoc appraiser_s299;
havoc description_s299;
havoc price_s299;
havoc offerPrice_s448;
havoc inspector_s448;
havoc appraiser_s448;
havoc description_s448;
havoc price_s448;
havoc offerPrice_s597;
havoc inspector_s597;
havoc appraiser_s597;
havoc description_s597;
havoc price_s597;
havoc offerPrice_s746;
havoc inspector_s746;
havoc appraiser_s746;
havoc description_s746;
havoc price_s746;
havoc offerPrice_s895;
havoc inspector_s895;
havoc appraiser_s895;
havoc description_s895;
havoc price_s895;
havoc offerPrice_s1044;
havoc inspector_s1044;
havoc appraiser_s1044;
havoc description_s1044;
havoc price_s1044;
havoc offerPrice_s1193;
havoc inspector_s1193;
havoc appraiser_s1193;
havoc description_s1193;
havoc price_s1193;
havoc offerPrice_s1342;
havoc inspector_s1342;
havoc appraiser_s1342;
havoc description_s1342;
havoc price_s1342;
havoc offerPrice_s1491;
havoc inspector_s1491;
havoc appraiser_s1491;
havoc description_s1491;
havoc price_s1491;
havoc offerPrice_s1640;
havoc inspector_s1640;
havoc appraiser_s1640;
havoc description_s1640;
havoc price_s1640;
havoc offerPrice_s1789;
havoc inspector_s1789;
havoc appraiser_s1789;
havoc description_s1789;
havoc price_s1789;
havoc offerPrice_s1938;
havoc inspector_s1938;
havoc appraiser_s1938;
havoc description_s1938;
havoc price_s1938;
havoc offerPrice_s2087;
havoc inspector_s2087;
havoc appraiser_s2087;
havoc description_s2087;
havoc price_s2087;
havoc offerPrice_s2236;
havoc inspector_s2236;
havoc appraiser_s2236;
havoc description_s2236;
havoc price_s2236;
havoc offerPrice_s2385;
havoc inspector_s2385;
havoc appraiser_s2385;
havoc description_s2385;
havoc price_s2385;
havoc offerPrice_s2534;
havoc inspector_s2534;
havoc appraiser_s2534;
havoc description_s2534;
havoc price_s2534;
havoc offerPrice_s2683;
havoc inspector_s2683;
havoc appraiser_s2683;
havoc description_s2683;
havoc price_s2683;
havoc offerPrice_s2832;
havoc inspector_s2832;
havoc appraiser_s2832;
havoc description_s2832;
havoc price_s2832;
havoc offerPrice_s2981;
havoc inspector_s2981;
havoc appraiser_s2981;
havoc description_s2981;
havoc price_s2981;
havoc offerPrice_s3130;
havoc inspector_s3130;
havoc appraiser_s3130;
havoc description_s3130;
havoc price_s3130;
havoc offerPrice_s3279;
havoc inspector_s3279;
havoc appraiser_s3279;
havoc description_s3279;
havoc price_s3279;
havoc offerPrice_s3428;
havoc inspector_s3428;
havoc appraiser_s3428;
havoc description_s3428;
havoc price_s3428;
havoc offerPrice_s3577;
havoc inspector_s3577;
havoc appraiser_s3577;
havoc description_s3577;
havoc price_s3577;
havoc offerPrice_s3726;
havoc inspector_s3726;
havoc appraiser_s3726;
havoc description_s3726;
havoc price_s3726;
havoc offerPrice_s3875;
havoc inspector_s3875;
havoc appraiser_s3875;
havoc description_s3875;
havoc price_s3875;
havoc offerPrice_s4024;
havoc inspector_s4024;
havoc appraiser_s4024;
havoc description_s4024;
havoc price_s4024;
havoc offerPrice_s4173;
havoc inspector_s4173;
havoc appraiser_s4173;
havoc description_s4173;
havoc price_s4173;
havoc offerPrice_s4322;
havoc inspector_s4322;
havoc appraiser_s4322;
havoc description_s4322;
havoc price_s4322;
havoc offerPrice_s4471;
havoc inspector_s4471;
havoc appraiser_s4471;
havoc description_s4471;
havoc price_s4471;
havoc offerPrice_s4620;
havoc inspector_s4620;
havoc appraiser_s4620;
havoc description_s4620;
havoc price_s4620;
havoc offerPrice_s4769;
havoc inspector_s4769;
havoc appraiser_s4769;
havoc description_s4769;
havoc price_s4769;
havoc offerPrice_s4918;
havoc inspector_s4918;
havoc appraiser_s4918;
havoc description_s4918;
havoc price_s4918;
havoc offerPrice_s5067;
havoc inspector_s5067;
havoc appraiser_s5067;
havoc description_s5067;
havoc price_s5067;
havoc offerPrice_s5216;
havoc inspector_s5216;
havoc appraiser_s5216;
havoc description_s5216;
havoc price_s5216;
havoc offerPrice_s5365;
havoc inspector_s5365;
havoc appraiser_s5365;
havoc description_s5365;
havoc price_s5365;
havoc offerPrice_s5514;
havoc inspector_s5514;
havoc appraiser_s5514;
havoc description_s5514;
havoc price_s5514;
havoc offerPrice_s5663;
havoc inspector_s5663;
havoc appraiser_s5663;
havoc description_s5663;
havoc price_s5663;
havoc offerPrice_s5810;
havoc inspector_s5810;
havoc appraiser_s5810;
havoc description_s5810;
havoc price_s5810;
havoc offerPrice_s5957;
havoc inspector_s5957;
havoc appraiser_s5957;
havoc description_s5957;
havoc price_s5957;
havoc offerPrice_s6104;
havoc inspector_s6104;
havoc appraiser_s6104;
havoc description_s6104;
havoc price_s6104;
havoc offerPrice_s6251;
havoc inspector_s6251;
havoc appraiser_s6251;
havoc description_s6251;
havoc price_s6251;
havoc description_s6304;
havoc price_s6304;
havoc description_s6356;
havoc price_s6356;
havoc inspector_s6426;
havoc appraiser_s6426;
havoc offerPrice_s6426;
havoc offerPrice_s6650;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s150, inspector_s150, appraiser_s150, description_s150, price_s150);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s299, inspector_s299, appraiser_s299, description_s299, price_s299);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s448, inspector_s448, appraiser_s448, description_s448, price_s448);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s597, inspector_s597, appraiser_s597, description_s597, price_s597);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s746, inspector_s746, appraiser_s746, description_s746, price_s746);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s895, inspector_s895, appraiser_s895, description_s895, price_s895);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1044, inspector_s1044, appraiser_s1044, description_s1044, price_s1044);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1193, inspector_s1193, appraiser_s1193, description_s1193, price_s1193);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1342, inspector_s1342, appraiser_s1342, description_s1342, price_s1342);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1491, inspector_s1491, appraiser_s1491, description_s1491, price_s1491);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1640, inspector_s1640, appraiser_s1640, description_s1640, price_s1640);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1789, inspector_s1789, appraiser_s1789, description_s1789, price_s1789);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1938, inspector_s1938, appraiser_s1938, description_s1938, price_s1938);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2087, inspector_s2087, appraiser_s2087, description_s2087, price_s2087);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2236, inspector_s2236, appraiser_s2236, description_s2236, price_s2236);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2385, inspector_s2385, appraiser_s2385, description_s2385, price_s2385);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2534, inspector_s2534, appraiser_s2534, description_s2534, price_s2534);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2683, inspector_s2683, appraiser_s2683, description_s2683, price_s2683);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2832, inspector_s2832, appraiser_s2832, description_s2832, price_s2832);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2981, inspector_s2981, appraiser_s2981, description_s2981, price_s2981);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3130, inspector_s3130, appraiser_s3130, description_s3130, price_s3130);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3279, inspector_s3279, appraiser_s3279, description_s3279, price_s3279);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3428, inspector_s3428, appraiser_s3428, description_s3428, price_s3428);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3577, inspector_s3577, appraiser_s3577, description_s3577, price_s3577);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3726, inspector_s3726, appraiser_s3726, description_s3726, price_s3726);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3875, inspector_s3875, appraiser_s3875, description_s3875, price_s3875);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4024, inspector_s4024, appraiser_s4024, description_s4024, price_s4024);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4173, inspector_s4173, appraiser_s4173, description_s4173, price_s4173);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4322, inspector_s4322, appraiser_s4322, description_s4322, price_s4322);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4471, inspector_s4471, appraiser_s4471, description_s4471, price_s4471);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4620, inspector_s4620, appraiser_s4620, description_s4620, price_s4620);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4769, inspector_s4769, appraiser_s4769, description_s4769, price_s4769);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4918, inspector_s4918, appraiser_s4918, description_s4918, price_s4918);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5067, inspector_s5067, appraiser_s5067, description_s5067, price_s5067);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5216, inspector_s5216, appraiser_s5216, description_s5216, price_s5216);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5365, inspector_s5365, appraiser_s5365, description_s5365, price_s5365);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5514, inspector_s5514, appraiser_s5514, description_s5514, price_s5514);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5663, inspector_s5663, appraiser_s5663, description_s5663, price_s5663);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5810, inspector_s5810, appraiser_s5810, description_s5810, price_s5810);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5957, inspector_s5957, appraiser_s5957, description_s5957, price_s5957);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6104, inspector_s6104, appraiser_s6104, description_s6104, price_s6104);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6251, inspector_s6251, appraiser_s6251, description_s6251, price_s6251);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6356, price_s6356);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6426, appraiser_s6426, offerPrice_s6426);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6650);
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
var offerPrice_s150: int;
var inspector_s150: Ref;
var appraiser_s150: Ref;
var description_s150: int;
var price_s150: int;
var offerPrice_s299: int;
var inspector_s299: Ref;
var appraiser_s299: Ref;
var description_s299: int;
var price_s299: int;
var offerPrice_s448: int;
var inspector_s448: Ref;
var appraiser_s448: Ref;
var description_s448: int;
var price_s448: int;
var offerPrice_s597: int;
var inspector_s597: Ref;
var appraiser_s597: Ref;
var description_s597: int;
var price_s597: int;
var offerPrice_s746: int;
var inspector_s746: Ref;
var appraiser_s746: Ref;
var description_s746: int;
var price_s746: int;
var offerPrice_s895: int;
var inspector_s895: Ref;
var appraiser_s895: Ref;
var description_s895: int;
var price_s895: int;
var offerPrice_s1044: int;
var inspector_s1044: Ref;
var appraiser_s1044: Ref;
var description_s1044: int;
var price_s1044: int;
var offerPrice_s1193: int;
var inspector_s1193: Ref;
var appraiser_s1193: Ref;
var description_s1193: int;
var price_s1193: int;
var offerPrice_s1342: int;
var inspector_s1342: Ref;
var appraiser_s1342: Ref;
var description_s1342: int;
var price_s1342: int;
var offerPrice_s1491: int;
var inspector_s1491: Ref;
var appraiser_s1491: Ref;
var description_s1491: int;
var price_s1491: int;
var offerPrice_s1640: int;
var inspector_s1640: Ref;
var appraiser_s1640: Ref;
var description_s1640: int;
var price_s1640: int;
var offerPrice_s1789: int;
var inspector_s1789: Ref;
var appraiser_s1789: Ref;
var description_s1789: int;
var price_s1789: int;
var offerPrice_s1938: int;
var inspector_s1938: Ref;
var appraiser_s1938: Ref;
var description_s1938: int;
var price_s1938: int;
var offerPrice_s2087: int;
var inspector_s2087: Ref;
var appraiser_s2087: Ref;
var description_s2087: int;
var price_s2087: int;
var offerPrice_s2236: int;
var inspector_s2236: Ref;
var appraiser_s2236: Ref;
var description_s2236: int;
var price_s2236: int;
var offerPrice_s2385: int;
var inspector_s2385: Ref;
var appraiser_s2385: Ref;
var description_s2385: int;
var price_s2385: int;
var offerPrice_s2534: int;
var inspector_s2534: Ref;
var appraiser_s2534: Ref;
var description_s2534: int;
var price_s2534: int;
var offerPrice_s2683: int;
var inspector_s2683: Ref;
var appraiser_s2683: Ref;
var description_s2683: int;
var price_s2683: int;
var offerPrice_s2832: int;
var inspector_s2832: Ref;
var appraiser_s2832: Ref;
var description_s2832: int;
var price_s2832: int;
var offerPrice_s2981: int;
var inspector_s2981: Ref;
var appraiser_s2981: Ref;
var description_s2981: int;
var price_s2981: int;
var offerPrice_s3130: int;
var inspector_s3130: Ref;
var appraiser_s3130: Ref;
var description_s3130: int;
var price_s3130: int;
var offerPrice_s3279: int;
var inspector_s3279: Ref;
var appraiser_s3279: Ref;
var description_s3279: int;
var price_s3279: int;
var offerPrice_s3428: int;
var inspector_s3428: Ref;
var appraiser_s3428: Ref;
var description_s3428: int;
var price_s3428: int;
var offerPrice_s3577: int;
var inspector_s3577: Ref;
var appraiser_s3577: Ref;
var description_s3577: int;
var price_s3577: int;
var offerPrice_s3726: int;
var inspector_s3726: Ref;
var appraiser_s3726: Ref;
var description_s3726: int;
var price_s3726: int;
var offerPrice_s3875: int;
var inspector_s3875: Ref;
var appraiser_s3875: Ref;
var description_s3875: int;
var price_s3875: int;
var offerPrice_s4024: int;
var inspector_s4024: Ref;
var appraiser_s4024: Ref;
var description_s4024: int;
var price_s4024: int;
var offerPrice_s4173: int;
var inspector_s4173: Ref;
var appraiser_s4173: Ref;
var description_s4173: int;
var price_s4173: int;
var offerPrice_s4322: int;
var inspector_s4322: Ref;
var appraiser_s4322: Ref;
var description_s4322: int;
var price_s4322: int;
var offerPrice_s4471: int;
var inspector_s4471: Ref;
var appraiser_s4471: Ref;
var description_s4471: int;
var price_s4471: int;
var offerPrice_s4620: int;
var inspector_s4620: Ref;
var appraiser_s4620: Ref;
var description_s4620: int;
var price_s4620: int;
var offerPrice_s4769: int;
var inspector_s4769: Ref;
var appraiser_s4769: Ref;
var description_s4769: int;
var price_s4769: int;
var offerPrice_s4918: int;
var inspector_s4918: Ref;
var appraiser_s4918: Ref;
var description_s4918: int;
var price_s4918: int;
var offerPrice_s5067: int;
var inspector_s5067: Ref;
var appraiser_s5067: Ref;
var description_s5067: int;
var price_s5067: int;
var offerPrice_s5216: int;
var inspector_s5216: Ref;
var appraiser_s5216: Ref;
var description_s5216: int;
var price_s5216: int;
var offerPrice_s5365: int;
var inspector_s5365: Ref;
var appraiser_s5365: Ref;
var description_s5365: int;
var price_s5365: int;
var offerPrice_s5514: int;
var inspector_s5514: Ref;
var appraiser_s5514: Ref;
var description_s5514: int;
var price_s5514: int;
var offerPrice_s5663: int;
var inspector_s5663: Ref;
var appraiser_s5663: Ref;
var description_s5663: int;
var price_s5663: int;
var offerPrice_s5810: int;
var inspector_s5810: Ref;
var appraiser_s5810: Ref;
var description_s5810: int;
var price_s5810: int;
var offerPrice_s5957: int;
var inspector_s5957: Ref;
var appraiser_s5957: Ref;
var description_s5957: int;
var price_s5957: int;
var offerPrice_s6104: int;
var inspector_s6104: Ref;
var appraiser_s6104: Ref;
var description_s6104: int;
var price_s6104: int;
var offerPrice_s6251: int;
var inspector_s6251: Ref;
var appraiser_s6251: Ref;
var description_s6251: int;
var price_s6251: int;
var description_s6304: int;
var price_s6304: int;
var description_s6356: int;
var price_s6356: int;
var inspector_s6426: Ref;
var appraiser_s6426: Ref;
var offerPrice_s6426: int;
var offerPrice_s6650: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s150;
havoc inspector_s150;
havoc appraiser_s150;
havoc description_s150;
havoc price_s150;
havoc offerPrice_s299;
havoc inspector_s299;
havoc appraiser_s299;
havoc description_s299;
havoc price_s299;
havoc offerPrice_s448;
havoc inspector_s448;
havoc appraiser_s448;
havoc description_s448;
havoc price_s448;
havoc offerPrice_s597;
havoc inspector_s597;
havoc appraiser_s597;
havoc description_s597;
havoc price_s597;
havoc offerPrice_s746;
havoc inspector_s746;
havoc appraiser_s746;
havoc description_s746;
havoc price_s746;
havoc offerPrice_s895;
havoc inspector_s895;
havoc appraiser_s895;
havoc description_s895;
havoc price_s895;
havoc offerPrice_s1044;
havoc inspector_s1044;
havoc appraiser_s1044;
havoc description_s1044;
havoc price_s1044;
havoc offerPrice_s1193;
havoc inspector_s1193;
havoc appraiser_s1193;
havoc description_s1193;
havoc price_s1193;
havoc offerPrice_s1342;
havoc inspector_s1342;
havoc appraiser_s1342;
havoc description_s1342;
havoc price_s1342;
havoc offerPrice_s1491;
havoc inspector_s1491;
havoc appraiser_s1491;
havoc description_s1491;
havoc price_s1491;
havoc offerPrice_s1640;
havoc inspector_s1640;
havoc appraiser_s1640;
havoc description_s1640;
havoc price_s1640;
havoc offerPrice_s1789;
havoc inspector_s1789;
havoc appraiser_s1789;
havoc description_s1789;
havoc price_s1789;
havoc offerPrice_s1938;
havoc inspector_s1938;
havoc appraiser_s1938;
havoc description_s1938;
havoc price_s1938;
havoc offerPrice_s2087;
havoc inspector_s2087;
havoc appraiser_s2087;
havoc description_s2087;
havoc price_s2087;
havoc offerPrice_s2236;
havoc inspector_s2236;
havoc appraiser_s2236;
havoc description_s2236;
havoc price_s2236;
havoc offerPrice_s2385;
havoc inspector_s2385;
havoc appraiser_s2385;
havoc description_s2385;
havoc price_s2385;
havoc offerPrice_s2534;
havoc inspector_s2534;
havoc appraiser_s2534;
havoc description_s2534;
havoc price_s2534;
havoc offerPrice_s2683;
havoc inspector_s2683;
havoc appraiser_s2683;
havoc description_s2683;
havoc price_s2683;
havoc offerPrice_s2832;
havoc inspector_s2832;
havoc appraiser_s2832;
havoc description_s2832;
havoc price_s2832;
havoc offerPrice_s2981;
havoc inspector_s2981;
havoc appraiser_s2981;
havoc description_s2981;
havoc price_s2981;
havoc offerPrice_s3130;
havoc inspector_s3130;
havoc appraiser_s3130;
havoc description_s3130;
havoc price_s3130;
havoc offerPrice_s3279;
havoc inspector_s3279;
havoc appraiser_s3279;
havoc description_s3279;
havoc price_s3279;
havoc offerPrice_s3428;
havoc inspector_s3428;
havoc appraiser_s3428;
havoc description_s3428;
havoc price_s3428;
havoc offerPrice_s3577;
havoc inspector_s3577;
havoc appraiser_s3577;
havoc description_s3577;
havoc price_s3577;
havoc offerPrice_s3726;
havoc inspector_s3726;
havoc appraiser_s3726;
havoc description_s3726;
havoc price_s3726;
havoc offerPrice_s3875;
havoc inspector_s3875;
havoc appraiser_s3875;
havoc description_s3875;
havoc price_s3875;
havoc offerPrice_s4024;
havoc inspector_s4024;
havoc appraiser_s4024;
havoc description_s4024;
havoc price_s4024;
havoc offerPrice_s4173;
havoc inspector_s4173;
havoc appraiser_s4173;
havoc description_s4173;
havoc price_s4173;
havoc offerPrice_s4322;
havoc inspector_s4322;
havoc appraiser_s4322;
havoc description_s4322;
havoc price_s4322;
havoc offerPrice_s4471;
havoc inspector_s4471;
havoc appraiser_s4471;
havoc description_s4471;
havoc price_s4471;
havoc offerPrice_s4620;
havoc inspector_s4620;
havoc appraiser_s4620;
havoc description_s4620;
havoc price_s4620;
havoc offerPrice_s4769;
havoc inspector_s4769;
havoc appraiser_s4769;
havoc description_s4769;
havoc price_s4769;
havoc offerPrice_s4918;
havoc inspector_s4918;
havoc appraiser_s4918;
havoc description_s4918;
havoc price_s4918;
havoc offerPrice_s5067;
havoc inspector_s5067;
havoc appraiser_s5067;
havoc description_s5067;
havoc price_s5067;
havoc offerPrice_s5216;
havoc inspector_s5216;
havoc appraiser_s5216;
havoc description_s5216;
havoc price_s5216;
havoc offerPrice_s5365;
havoc inspector_s5365;
havoc appraiser_s5365;
havoc description_s5365;
havoc price_s5365;
havoc offerPrice_s5514;
havoc inspector_s5514;
havoc appraiser_s5514;
havoc description_s5514;
havoc price_s5514;
havoc offerPrice_s5663;
havoc inspector_s5663;
havoc appraiser_s5663;
havoc description_s5663;
havoc price_s5663;
havoc offerPrice_s5810;
havoc inspector_s5810;
havoc appraiser_s5810;
havoc description_s5810;
havoc price_s5810;
havoc offerPrice_s5957;
havoc inspector_s5957;
havoc appraiser_s5957;
havoc description_s5957;
havoc price_s5957;
havoc offerPrice_s6104;
havoc inspector_s6104;
havoc appraiser_s6104;
havoc description_s6104;
havoc price_s6104;
havoc offerPrice_s6251;
havoc inspector_s6251;
havoc appraiser_s6251;
havoc description_s6251;
havoc price_s6251;
havoc description_s6304;
havoc price_s6304;
havoc description_s6356;
havoc price_s6356;
havoc inspector_s6426;
havoc appraiser_s6426;
havoc offerPrice_s6426;
havoc offerPrice_s6650;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s150, inspector_s150, appraiser_s150, description_s150, price_s150);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s299, inspector_s299, appraiser_s299, description_s299, price_s299);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s448, inspector_s448, appraiser_s448, description_s448, price_s448);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s597, inspector_s597, appraiser_s597, description_s597, price_s597);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s746, inspector_s746, appraiser_s746, description_s746, price_s746);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s895, inspector_s895, appraiser_s895, description_s895, price_s895);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1044, inspector_s1044, appraiser_s1044, description_s1044, price_s1044);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1193, inspector_s1193, appraiser_s1193, description_s1193, price_s1193);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1342, inspector_s1342, appraiser_s1342, description_s1342, price_s1342);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1491, inspector_s1491, appraiser_s1491, description_s1491, price_s1491);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1640, inspector_s1640, appraiser_s1640, description_s1640, price_s1640);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1789, inspector_s1789, appraiser_s1789, description_s1789, price_s1789);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1938, inspector_s1938, appraiser_s1938, description_s1938, price_s1938);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2087, inspector_s2087, appraiser_s2087, description_s2087, price_s2087);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2236, inspector_s2236, appraiser_s2236, description_s2236, price_s2236);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2385, inspector_s2385, appraiser_s2385, description_s2385, price_s2385);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2534, inspector_s2534, appraiser_s2534, description_s2534, price_s2534);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2683, inspector_s2683, appraiser_s2683, description_s2683, price_s2683);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2832, inspector_s2832, appraiser_s2832, description_s2832, price_s2832);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2981, inspector_s2981, appraiser_s2981, description_s2981, price_s2981);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3130, inspector_s3130, appraiser_s3130, description_s3130, price_s3130);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3279, inspector_s3279, appraiser_s3279, description_s3279, price_s3279);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3428, inspector_s3428, appraiser_s3428, description_s3428, price_s3428);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3577, inspector_s3577, appraiser_s3577, description_s3577, price_s3577);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3726, inspector_s3726, appraiser_s3726, description_s3726, price_s3726);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3875, inspector_s3875, appraiser_s3875, description_s3875, price_s3875);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4024, inspector_s4024, appraiser_s4024, description_s4024, price_s4024);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4173, inspector_s4173, appraiser_s4173, description_s4173, price_s4173);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4322, inspector_s4322, appraiser_s4322, description_s4322, price_s4322);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4471, inspector_s4471, appraiser_s4471, description_s4471, price_s4471);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4620, inspector_s4620, appraiser_s4620, description_s4620, price_s4620);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4769, inspector_s4769, appraiser_s4769, description_s4769, price_s4769);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4918, inspector_s4918, appraiser_s4918, description_s4918, price_s4918);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5067, inspector_s5067, appraiser_s5067, description_s5067, price_s5067);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5216, inspector_s5216, appraiser_s5216, description_s5216, price_s5216);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5365, inspector_s5365, appraiser_s5365, description_s5365, price_s5365);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5514, inspector_s5514, appraiser_s5514, description_s5514, price_s5514);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5663, inspector_s5663, appraiser_s5663, description_s5663, price_s5663);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5810, inspector_s5810, appraiser_s5810, description_s5810, price_s5810);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5957, inspector_s5957, appraiser_s5957, description_s5957, price_s5957);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6104, inspector_s6104, appraiser_s6104, description_s6104, price_s6104);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6251, inspector_s6251, appraiser_s6251, description_s6251, price_s6251);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6356, price_s6356);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6426, appraiser_s6426, offerPrice_s6426);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6650);
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
var description_s6304: int;
var price_s6304: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6304, price_s6304);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


