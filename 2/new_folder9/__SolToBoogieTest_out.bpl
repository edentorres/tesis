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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s148: int, inspector_s148: Ref, appraiser_s148: Ref, description_s148: int, price_s148: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s295: int, inspector_s295: Ref, appraiser_s295: Ref, description_s295: int, price_s295: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s442: int, inspector_s442: Ref, appraiser_s442: Ref, description_s442: int, price_s442: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s589: int, inspector_s589: Ref, appraiser_s589: Ref, description_s589: int, price_s589: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s736: int, inspector_s736: Ref, appraiser_s736: Ref, description_s736: int, price_s736: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s883: int, inspector_s883: Ref, appraiser_s883: Ref, description_s883: int, price_s883: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1030: int, inspector_s1030: Ref, appraiser_s1030: Ref, description_s1030: int, price_s1030: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1177: int, inspector_s1177: Ref, appraiser_s1177: Ref, description_s1177: int, price_s1177: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1324: int, inspector_s1324: Ref, appraiser_s1324: Ref, description_s1324: int, price_s1324: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1471: int, inspector_s1471: Ref, appraiser_s1471: Ref, description_s1471: int, price_s1471: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1618: int, inspector_s1618: Ref, appraiser_s1618: Ref, description_s1618: int, price_s1618: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1765: int, inspector_s1765: Ref, appraiser_s1765: Ref, description_s1765: int, price_s1765: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1912: int, inspector_s1912: Ref, appraiser_s1912: Ref, description_s1912: int, price_s1912: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2059: int, inspector_s2059: Ref, appraiser_s2059: Ref, description_s2059: int, price_s2059: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2206: int, inspector_s2206: Ref, appraiser_s2206: Ref, description_s2206: int, price_s2206: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2353: int, inspector_s2353: Ref, appraiser_s2353: Ref, description_s2353: int, price_s2353: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2500: int, inspector_s2500: Ref, appraiser_s2500: Ref, description_s2500: int, price_s2500: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2647: int, inspector_s2647: Ref, appraiser_s2647: Ref, description_s2647: int, price_s2647: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2794: int, inspector_s2794: Ref, appraiser_s2794: Ref, description_s2794: int, price_s2794: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2941: int, inspector_s2941: Ref, appraiser_s2941: Ref, description_s2941: int, price_s2941: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3088: int, inspector_s3088: Ref, appraiser_s3088: Ref, description_s3088: int, price_s3088: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3235: int, inspector_s3235: Ref, appraiser_s3235: Ref, description_s3235: int, price_s3235: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3382: int, inspector_s3382: Ref, appraiser_s3382: Ref, description_s3382: int, price_s3382: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3529: int, inspector_s3529: Ref, appraiser_s3529: Ref, description_s3529: int, price_s3529: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3676: int, inspector_s3676: Ref, appraiser_s3676: Ref, description_s3676: int, price_s3676: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3823: int, inspector_s3823: Ref, appraiser_s3823: Ref, description_s3823: int, price_s3823: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3970: int, inspector_s3970: Ref, appraiser_s3970: Ref, description_s3970: int, price_s3970: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4117: int, inspector_s4117: Ref, appraiser_s4117: Ref, description_s4117: int, price_s4117: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4264: int, inspector_s4264: Ref, appraiser_s4264: Ref, description_s4264: int, price_s4264: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4411: int, inspector_s4411: Ref, appraiser_s4411: Ref, description_s4411: int, price_s4411: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4558: int, inspector_s4558: Ref, appraiser_s4558: Ref, description_s4558: int, price_s4558: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4705: int, inspector_s4705: Ref, appraiser_s4705: Ref, description_s4705: int, price_s4705: int);
procedure {:public} {:inline 1} validCombination32_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4852: int, inspector_s4852: Ref, appraiser_s4852: Ref, description_s4852: int, price_s4852: int);
procedure {:public} {:inline 1} validCombination33_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4999: int, inspector_s4999: Ref, appraiser_s4999: Ref, description_s4999: int, price_s4999: int);
procedure {:public} {:inline 1} validCombination34_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5146: int, inspector_s5146: Ref, appraiser_s5146: Ref, description_s5146: int, price_s5146: int);
procedure {:public} {:inline 1} validCombination35_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5293: int, inspector_s5293: Ref, appraiser_s5293: Ref, description_s5293: int, price_s5293: int);
procedure {:public} {:inline 1} validCombination36_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5440: int, inspector_s5440: Ref, appraiser_s5440: Ref, description_s5440: int, price_s5440: int);
procedure {:public} {:inline 1} validCombination37_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5587: int, inspector_s5587: Ref, appraiser_s5587: Ref, description_s5587: int, price_s5587: int);
procedure {:public} {:inline 1} validCombination38_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5734: int, inspector_s5734: Ref, appraiser_s5734: Ref, description_s5734: int, price_s5734: int);
procedure {:public} {:inline 1} validCombination39_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s5881: int, inspector_s5881: Ref, appraiser_s5881: Ref, description_s5881: int, price_s5881: int);
procedure {:public} {:inline 1} validCombination40_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6028: int, inspector_s6028: Ref, appraiser_s6028: Ref, description_s6028: int, price_s6028: int);
procedure {:public} {:inline 1} validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6175: int, inspector_s6175: Ref, appraiser_s6175: Ref, description_s6175: int, price_s6175: int);
implementation validCombination41_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6175: int, inspector_s6175: Ref, appraiser_s6175: Ref, description_s6175: int, price_s6175: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6175);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6175);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6175);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6175);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6175);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 252} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 252} (true);
assume ((((((((true) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 257} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6228: int, price_s6228: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6228: int, price_s6228: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -761211028;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6228);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6228);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 271} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 271} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 272} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6228) >= (0));
AskingPrice_AssetTransfer[this] := price_s6228;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 273} (true);
Description_AssetTransfer[this] := description_s6228;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 274} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6228: int, price_s6228: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6228: int, price_s6228: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6228);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6228);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s6228, price_s6228);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 280} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 284} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 284} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 285} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6280: int, price_s6280: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s6280: int, price_s6280: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s6280);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s6280);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 291} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 292} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 294} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 295} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 299} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 299} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 300} (true);
Description_AssetTransfer[this] := description_s6280;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 301} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s6280) >= (0));
AskingPrice_AssetTransfer[this] := price_s6280;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6350: Ref, appraiser_s6350: Ref, offerPrice_s6350: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s6350: Ref, appraiser_s6350: Ref, offerPrice_s6350: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s6350);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s6350);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6350);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 306} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 306} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s6350) >= (0));
if ((((inspector_s6350) == (null)) || ((appraiser_s6350) == (null))) || ((offerPrice_s6350) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 310} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 312} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 314} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 314} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 315} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 320} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 321} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 322} (true);
InstanceInspector_AssetTransfer[this] := inspector_s6350;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 323} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s6350;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 324} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6350) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6350;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 325} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 330} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 331} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 334} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 334} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 335} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 339} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 340} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 345} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 345} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 349} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 350} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 354} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 355} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 356} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 361} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 361} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 366} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 367} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 373} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 373} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 374} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 380} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 380} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 381} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 382} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 384} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 385} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 387} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 388} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 393} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 393} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 396} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 398} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 399} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 401} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6574: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s6574: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s6574);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 407} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 408} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 411} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 411} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 411} (true);
assume ((offerPrice_s6574) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s6574) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 416} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 416} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 417} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s6574) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s6574;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 422} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 422} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 426} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 426} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 427} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 431} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 431} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 432} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 433} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 434} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 439} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 440} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 444} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 444} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 445} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 446} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 448} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 449} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 450} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 451} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 456} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 456} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 461} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 462} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 466} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 466} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 467} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 468} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 470} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 471} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 472} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 473} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 478} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder9/CombinationsTemp9.sol"} {:sourceLine 478} (true);
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
var offerPrice_s148: int;
var inspector_s148: Ref;
var appraiser_s148: Ref;
var description_s148: int;
var price_s148: int;
var offerPrice_s295: int;
var inspector_s295: Ref;
var appraiser_s295: Ref;
var description_s295: int;
var price_s295: int;
var offerPrice_s442: int;
var inspector_s442: Ref;
var appraiser_s442: Ref;
var description_s442: int;
var price_s442: int;
var offerPrice_s589: int;
var inspector_s589: Ref;
var appraiser_s589: Ref;
var description_s589: int;
var price_s589: int;
var offerPrice_s736: int;
var inspector_s736: Ref;
var appraiser_s736: Ref;
var description_s736: int;
var price_s736: int;
var offerPrice_s883: int;
var inspector_s883: Ref;
var appraiser_s883: Ref;
var description_s883: int;
var price_s883: int;
var offerPrice_s1030: int;
var inspector_s1030: Ref;
var appraiser_s1030: Ref;
var description_s1030: int;
var price_s1030: int;
var offerPrice_s1177: int;
var inspector_s1177: Ref;
var appraiser_s1177: Ref;
var description_s1177: int;
var price_s1177: int;
var offerPrice_s1324: int;
var inspector_s1324: Ref;
var appraiser_s1324: Ref;
var description_s1324: int;
var price_s1324: int;
var offerPrice_s1471: int;
var inspector_s1471: Ref;
var appraiser_s1471: Ref;
var description_s1471: int;
var price_s1471: int;
var offerPrice_s1618: int;
var inspector_s1618: Ref;
var appraiser_s1618: Ref;
var description_s1618: int;
var price_s1618: int;
var offerPrice_s1765: int;
var inspector_s1765: Ref;
var appraiser_s1765: Ref;
var description_s1765: int;
var price_s1765: int;
var offerPrice_s1912: int;
var inspector_s1912: Ref;
var appraiser_s1912: Ref;
var description_s1912: int;
var price_s1912: int;
var offerPrice_s2059: int;
var inspector_s2059: Ref;
var appraiser_s2059: Ref;
var description_s2059: int;
var price_s2059: int;
var offerPrice_s2206: int;
var inspector_s2206: Ref;
var appraiser_s2206: Ref;
var description_s2206: int;
var price_s2206: int;
var offerPrice_s2353: int;
var inspector_s2353: Ref;
var appraiser_s2353: Ref;
var description_s2353: int;
var price_s2353: int;
var offerPrice_s2500: int;
var inspector_s2500: Ref;
var appraiser_s2500: Ref;
var description_s2500: int;
var price_s2500: int;
var offerPrice_s2647: int;
var inspector_s2647: Ref;
var appraiser_s2647: Ref;
var description_s2647: int;
var price_s2647: int;
var offerPrice_s2794: int;
var inspector_s2794: Ref;
var appraiser_s2794: Ref;
var description_s2794: int;
var price_s2794: int;
var offerPrice_s2941: int;
var inspector_s2941: Ref;
var appraiser_s2941: Ref;
var description_s2941: int;
var price_s2941: int;
var offerPrice_s3088: int;
var inspector_s3088: Ref;
var appraiser_s3088: Ref;
var description_s3088: int;
var price_s3088: int;
var offerPrice_s3235: int;
var inspector_s3235: Ref;
var appraiser_s3235: Ref;
var description_s3235: int;
var price_s3235: int;
var offerPrice_s3382: int;
var inspector_s3382: Ref;
var appraiser_s3382: Ref;
var description_s3382: int;
var price_s3382: int;
var offerPrice_s3529: int;
var inspector_s3529: Ref;
var appraiser_s3529: Ref;
var description_s3529: int;
var price_s3529: int;
var offerPrice_s3676: int;
var inspector_s3676: Ref;
var appraiser_s3676: Ref;
var description_s3676: int;
var price_s3676: int;
var offerPrice_s3823: int;
var inspector_s3823: Ref;
var appraiser_s3823: Ref;
var description_s3823: int;
var price_s3823: int;
var offerPrice_s3970: int;
var inspector_s3970: Ref;
var appraiser_s3970: Ref;
var description_s3970: int;
var price_s3970: int;
var offerPrice_s4117: int;
var inspector_s4117: Ref;
var appraiser_s4117: Ref;
var description_s4117: int;
var price_s4117: int;
var offerPrice_s4264: int;
var inspector_s4264: Ref;
var appraiser_s4264: Ref;
var description_s4264: int;
var price_s4264: int;
var offerPrice_s4411: int;
var inspector_s4411: Ref;
var appraiser_s4411: Ref;
var description_s4411: int;
var price_s4411: int;
var offerPrice_s4558: int;
var inspector_s4558: Ref;
var appraiser_s4558: Ref;
var description_s4558: int;
var price_s4558: int;
var offerPrice_s4705: int;
var inspector_s4705: Ref;
var appraiser_s4705: Ref;
var description_s4705: int;
var price_s4705: int;
var offerPrice_s4852: int;
var inspector_s4852: Ref;
var appraiser_s4852: Ref;
var description_s4852: int;
var price_s4852: int;
var offerPrice_s4999: int;
var inspector_s4999: Ref;
var appraiser_s4999: Ref;
var description_s4999: int;
var price_s4999: int;
var offerPrice_s5146: int;
var inspector_s5146: Ref;
var appraiser_s5146: Ref;
var description_s5146: int;
var price_s5146: int;
var offerPrice_s5293: int;
var inspector_s5293: Ref;
var appraiser_s5293: Ref;
var description_s5293: int;
var price_s5293: int;
var offerPrice_s5440: int;
var inspector_s5440: Ref;
var appraiser_s5440: Ref;
var description_s5440: int;
var price_s5440: int;
var offerPrice_s5587: int;
var inspector_s5587: Ref;
var appraiser_s5587: Ref;
var description_s5587: int;
var price_s5587: int;
var offerPrice_s5734: int;
var inspector_s5734: Ref;
var appraiser_s5734: Ref;
var description_s5734: int;
var price_s5734: int;
var offerPrice_s5881: int;
var inspector_s5881: Ref;
var appraiser_s5881: Ref;
var description_s5881: int;
var price_s5881: int;
var offerPrice_s6028: int;
var inspector_s6028: Ref;
var appraiser_s6028: Ref;
var description_s6028: int;
var price_s6028: int;
var offerPrice_s6175: int;
var inspector_s6175: Ref;
var appraiser_s6175: Ref;
var description_s6175: int;
var price_s6175: int;
var description_s6228: int;
var price_s6228: int;
var description_s6280: int;
var price_s6280: int;
var inspector_s6350: Ref;
var appraiser_s6350: Ref;
var offerPrice_s6350: int;
var offerPrice_s6574: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6228, price_s6228);
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
havoc offerPrice_s148;
havoc inspector_s148;
havoc appraiser_s148;
havoc description_s148;
havoc price_s148;
havoc offerPrice_s295;
havoc inspector_s295;
havoc appraiser_s295;
havoc description_s295;
havoc price_s295;
havoc offerPrice_s442;
havoc inspector_s442;
havoc appraiser_s442;
havoc description_s442;
havoc price_s442;
havoc offerPrice_s589;
havoc inspector_s589;
havoc appraiser_s589;
havoc description_s589;
havoc price_s589;
havoc offerPrice_s736;
havoc inspector_s736;
havoc appraiser_s736;
havoc description_s736;
havoc price_s736;
havoc offerPrice_s883;
havoc inspector_s883;
havoc appraiser_s883;
havoc description_s883;
havoc price_s883;
havoc offerPrice_s1030;
havoc inspector_s1030;
havoc appraiser_s1030;
havoc description_s1030;
havoc price_s1030;
havoc offerPrice_s1177;
havoc inspector_s1177;
havoc appraiser_s1177;
havoc description_s1177;
havoc price_s1177;
havoc offerPrice_s1324;
havoc inspector_s1324;
havoc appraiser_s1324;
havoc description_s1324;
havoc price_s1324;
havoc offerPrice_s1471;
havoc inspector_s1471;
havoc appraiser_s1471;
havoc description_s1471;
havoc price_s1471;
havoc offerPrice_s1618;
havoc inspector_s1618;
havoc appraiser_s1618;
havoc description_s1618;
havoc price_s1618;
havoc offerPrice_s1765;
havoc inspector_s1765;
havoc appraiser_s1765;
havoc description_s1765;
havoc price_s1765;
havoc offerPrice_s1912;
havoc inspector_s1912;
havoc appraiser_s1912;
havoc description_s1912;
havoc price_s1912;
havoc offerPrice_s2059;
havoc inspector_s2059;
havoc appraiser_s2059;
havoc description_s2059;
havoc price_s2059;
havoc offerPrice_s2206;
havoc inspector_s2206;
havoc appraiser_s2206;
havoc description_s2206;
havoc price_s2206;
havoc offerPrice_s2353;
havoc inspector_s2353;
havoc appraiser_s2353;
havoc description_s2353;
havoc price_s2353;
havoc offerPrice_s2500;
havoc inspector_s2500;
havoc appraiser_s2500;
havoc description_s2500;
havoc price_s2500;
havoc offerPrice_s2647;
havoc inspector_s2647;
havoc appraiser_s2647;
havoc description_s2647;
havoc price_s2647;
havoc offerPrice_s2794;
havoc inspector_s2794;
havoc appraiser_s2794;
havoc description_s2794;
havoc price_s2794;
havoc offerPrice_s2941;
havoc inspector_s2941;
havoc appraiser_s2941;
havoc description_s2941;
havoc price_s2941;
havoc offerPrice_s3088;
havoc inspector_s3088;
havoc appraiser_s3088;
havoc description_s3088;
havoc price_s3088;
havoc offerPrice_s3235;
havoc inspector_s3235;
havoc appraiser_s3235;
havoc description_s3235;
havoc price_s3235;
havoc offerPrice_s3382;
havoc inspector_s3382;
havoc appraiser_s3382;
havoc description_s3382;
havoc price_s3382;
havoc offerPrice_s3529;
havoc inspector_s3529;
havoc appraiser_s3529;
havoc description_s3529;
havoc price_s3529;
havoc offerPrice_s3676;
havoc inspector_s3676;
havoc appraiser_s3676;
havoc description_s3676;
havoc price_s3676;
havoc offerPrice_s3823;
havoc inspector_s3823;
havoc appraiser_s3823;
havoc description_s3823;
havoc price_s3823;
havoc offerPrice_s3970;
havoc inspector_s3970;
havoc appraiser_s3970;
havoc description_s3970;
havoc price_s3970;
havoc offerPrice_s4117;
havoc inspector_s4117;
havoc appraiser_s4117;
havoc description_s4117;
havoc price_s4117;
havoc offerPrice_s4264;
havoc inspector_s4264;
havoc appraiser_s4264;
havoc description_s4264;
havoc price_s4264;
havoc offerPrice_s4411;
havoc inspector_s4411;
havoc appraiser_s4411;
havoc description_s4411;
havoc price_s4411;
havoc offerPrice_s4558;
havoc inspector_s4558;
havoc appraiser_s4558;
havoc description_s4558;
havoc price_s4558;
havoc offerPrice_s4705;
havoc inspector_s4705;
havoc appraiser_s4705;
havoc description_s4705;
havoc price_s4705;
havoc offerPrice_s4852;
havoc inspector_s4852;
havoc appraiser_s4852;
havoc description_s4852;
havoc price_s4852;
havoc offerPrice_s4999;
havoc inspector_s4999;
havoc appraiser_s4999;
havoc description_s4999;
havoc price_s4999;
havoc offerPrice_s5146;
havoc inspector_s5146;
havoc appraiser_s5146;
havoc description_s5146;
havoc price_s5146;
havoc offerPrice_s5293;
havoc inspector_s5293;
havoc appraiser_s5293;
havoc description_s5293;
havoc price_s5293;
havoc offerPrice_s5440;
havoc inspector_s5440;
havoc appraiser_s5440;
havoc description_s5440;
havoc price_s5440;
havoc offerPrice_s5587;
havoc inspector_s5587;
havoc appraiser_s5587;
havoc description_s5587;
havoc price_s5587;
havoc offerPrice_s5734;
havoc inspector_s5734;
havoc appraiser_s5734;
havoc description_s5734;
havoc price_s5734;
havoc offerPrice_s5881;
havoc inspector_s5881;
havoc appraiser_s5881;
havoc description_s5881;
havoc price_s5881;
havoc offerPrice_s6028;
havoc inspector_s6028;
havoc appraiser_s6028;
havoc description_s6028;
havoc price_s6028;
havoc offerPrice_s6175;
havoc inspector_s6175;
havoc appraiser_s6175;
havoc description_s6175;
havoc price_s6175;
havoc description_s6228;
havoc price_s6228;
havoc description_s6280;
havoc price_s6280;
havoc inspector_s6350;
havoc appraiser_s6350;
havoc offerPrice_s6350;
havoc offerPrice_s6574;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s148, inspector_s148, appraiser_s148, description_s148, price_s148);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s295, inspector_s295, appraiser_s295, description_s295, price_s295);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s442, inspector_s442, appraiser_s442, description_s442, price_s442);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s589, inspector_s589, appraiser_s589, description_s589, price_s589);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s736, inspector_s736, appraiser_s736, description_s736, price_s736);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s883, inspector_s883, appraiser_s883, description_s883, price_s883);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1030, inspector_s1030, appraiser_s1030, description_s1030, price_s1030);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1177, inspector_s1177, appraiser_s1177, description_s1177, price_s1177);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1324, inspector_s1324, appraiser_s1324, description_s1324, price_s1324);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1471, inspector_s1471, appraiser_s1471, description_s1471, price_s1471);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1618, inspector_s1618, appraiser_s1618, description_s1618, price_s1618);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1765, inspector_s1765, appraiser_s1765, description_s1765, price_s1765);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1912, inspector_s1912, appraiser_s1912, description_s1912, price_s1912);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2059, inspector_s2059, appraiser_s2059, description_s2059, price_s2059);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2206, inspector_s2206, appraiser_s2206, description_s2206, price_s2206);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2353, inspector_s2353, appraiser_s2353, description_s2353, price_s2353);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2500, inspector_s2500, appraiser_s2500, description_s2500, price_s2500);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2647, inspector_s2647, appraiser_s2647, description_s2647, price_s2647);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2794, inspector_s2794, appraiser_s2794, description_s2794, price_s2794);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2941, inspector_s2941, appraiser_s2941, description_s2941, price_s2941);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3088, inspector_s3088, appraiser_s3088, description_s3088, price_s3088);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3235, inspector_s3235, appraiser_s3235, description_s3235, price_s3235);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3382, inspector_s3382, appraiser_s3382, description_s3382, price_s3382);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3529, inspector_s3529, appraiser_s3529, description_s3529, price_s3529);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3676, inspector_s3676, appraiser_s3676, description_s3676, price_s3676);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3823, inspector_s3823, appraiser_s3823, description_s3823, price_s3823);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3970, inspector_s3970, appraiser_s3970, description_s3970, price_s3970);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4117, inspector_s4117, appraiser_s4117, description_s4117, price_s4117);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4264, inspector_s4264, appraiser_s4264, description_s4264, price_s4264);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4411, inspector_s4411, appraiser_s4411, description_s4411, price_s4411);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4558, inspector_s4558, appraiser_s4558, description_s4558, price_s4558);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4705, inspector_s4705, appraiser_s4705, description_s4705, price_s4705);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4852, inspector_s4852, appraiser_s4852, description_s4852, price_s4852);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4999, inspector_s4999, appraiser_s4999, description_s4999, price_s4999);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5146, inspector_s5146, appraiser_s5146, description_s5146, price_s5146);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5293, inspector_s5293, appraiser_s5293, description_s5293, price_s5293);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5440, inspector_s5440, appraiser_s5440, description_s5440, price_s5440);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5587, inspector_s5587, appraiser_s5587, description_s5587, price_s5587);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5734, inspector_s5734, appraiser_s5734, description_s5734, price_s5734);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5881, inspector_s5881, appraiser_s5881, description_s5881, price_s5881);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6028, inspector_s6028, appraiser_s6028, description_s6028, price_s6028);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6175, inspector_s6175, appraiser_s6175, description_s6175, price_s6175);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6280, price_s6280);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6350, appraiser_s6350, offerPrice_s6350);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6574);
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
var offerPrice_s148: int;
var inspector_s148: Ref;
var appraiser_s148: Ref;
var description_s148: int;
var price_s148: int;
var offerPrice_s295: int;
var inspector_s295: Ref;
var appraiser_s295: Ref;
var description_s295: int;
var price_s295: int;
var offerPrice_s442: int;
var inspector_s442: Ref;
var appraiser_s442: Ref;
var description_s442: int;
var price_s442: int;
var offerPrice_s589: int;
var inspector_s589: Ref;
var appraiser_s589: Ref;
var description_s589: int;
var price_s589: int;
var offerPrice_s736: int;
var inspector_s736: Ref;
var appraiser_s736: Ref;
var description_s736: int;
var price_s736: int;
var offerPrice_s883: int;
var inspector_s883: Ref;
var appraiser_s883: Ref;
var description_s883: int;
var price_s883: int;
var offerPrice_s1030: int;
var inspector_s1030: Ref;
var appraiser_s1030: Ref;
var description_s1030: int;
var price_s1030: int;
var offerPrice_s1177: int;
var inspector_s1177: Ref;
var appraiser_s1177: Ref;
var description_s1177: int;
var price_s1177: int;
var offerPrice_s1324: int;
var inspector_s1324: Ref;
var appraiser_s1324: Ref;
var description_s1324: int;
var price_s1324: int;
var offerPrice_s1471: int;
var inspector_s1471: Ref;
var appraiser_s1471: Ref;
var description_s1471: int;
var price_s1471: int;
var offerPrice_s1618: int;
var inspector_s1618: Ref;
var appraiser_s1618: Ref;
var description_s1618: int;
var price_s1618: int;
var offerPrice_s1765: int;
var inspector_s1765: Ref;
var appraiser_s1765: Ref;
var description_s1765: int;
var price_s1765: int;
var offerPrice_s1912: int;
var inspector_s1912: Ref;
var appraiser_s1912: Ref;
var description_s1912: int;
var price_s1912: int;
var offerPrice_s2059: int;
var inspector_s2059: Ref;
var appraiser_s2059: Ref;
var description_s2059: int;
var price_s2059: int;
var offerPrice_s2206: int;
var inspector_s2206: Ref;
var appraiser_s2206: Ref;
var description_s2206: int;
var price_s2206: int;
var offerPrice_s2353: int;
var inspector_s2353: Ref;
var appraiser_s2353: Ref;
var description_s2353: int;
var price_s2353: int;
var offerPrice_s2500: int;
var inspector_s2500: Ref;
var appraiser_s2500: Ref;
var description_s2500: int;
var price_s2500: int;
var offerPrice_s2647: int;
var inspector_s2647: Ref;
var appraiser_s2647: Ref;
var description_s2647: int;
var price_s2647: int;
var offerPrice_s2794: int;
var inspector_s2794: Ref;
var appraiser_s2794: Ref;
var description_s2794: int;
var price_s2794: int;
var offerPrice_s2941: int;
var inspector_s2941: Ref;
var appraiser_s2941: Ref;
var description_s2941: int;
var price_s2941: int;
var offerPrice_s3088: int;
var inspector_s3088: Ref;
var appraiser_s3088: Ref;
var description_s3088: int;
var price_s3088: int;
var offerPrice_s3235: int;
var inspector_s3235: Ref;
var appraiser_s3235: Ref;
var description_s3235: int;
var price_s3235: int;
var offerPrice_s3382: int;
var inspector_s3382: Ref;
var appraiser_s3382: Ref;
var description_s3382: int;
var price_s3382: int;
var offerPrice_s3529: int;
var inspector_s3529: Ref;
var appraiser_s3529: Ref;
var description_s3529: int;
var price_s3529: int;
var offerPrice_s3676: int;
var inspector_s3676: Ref;
var appraiser_s3676: Ref;
var description_s3676: int;
var price_s3676: int;
var offerPrice_s3823: int;
var inspector_s3823: Ref;
var appraiser_s3823: Ref;
var description_s3823: int;
var price_s3823: int;
var offerPrice_s3970: int;
var inspector_s3970: Ref;
var appraiser_s3970: Ref;
var description_s3970: int;
var price_s3970: int;
var offerPrice_s4117: int;
var inspector_s4117: Ref;
var appraiser_s4117: Ref;
var description_s4117: int;
var price_s4117: int;
var offerPrice_s4264: int;
var inspector_s4264: Ref;
var appraiser_s4264: Ref;
var description_s4264: int;
var price_s4264: int;
var offerPrice_s4411: int;
var inspector_s4411: Ref;
var appraiser_s4411: Ref;
var description_s4411: int;
var price_s4411: int;
var offerPrice_s4558: int;
var inspector_s4558: Ref;
var appraiser_s4558: Ref;
var description_s4558: int;
var price_s4558: int;
var offerPrice_s4705: int;
var inspector_s4705: Ref;
var appraiser_s4705: Ref;
var description_s4705: int;
var price_s4705: int;
var offerPrice_s4852: int;
var inspector_s4852: Ref;
var appraiser_s4852: Ref;
var description_s4852: int;
var price_s4852: int;
var offerPrice_s4999: int;
var inspector_s4999: Ref;
var appraiser_s4999: Ref;
var description_s4999: int;
var price_s4999: int;
var offerPrice_s5146: int;
var inspector_s5146: Ref;
var appraiser_s5146: Ref;
var description_s5146: int;
var price_s5146: int;
var offerPrice_s5293: int;
var inspector_s5293: Ref;
var appraiser_s5293: Ref;
var description_s5293: int;
var price_s5293: int;
var offerPrice_s5440: int;
var inspector_s5440: Ref;
var appraiser_s5440: Ref;
var description_s5440: int;
var price_s5440: int;
var offerPrice_s5587: int;
var inspector_s5587: Ref;
var appraiser_s5587: Ref;
var description_s5587: int;
var price_s5587: int;
var offerPrice_s5734: int;
var inspector_s5734: Ref;
var appraiser_s5734: Ref;
var description_s5734: int;
var price_s5734: int;
var offerPrice_s5881: int;
var inspector_s5881: Ref;
var appraiser_s5881: Ref;
var description_s5881: int;
var price_s5881: int;
var offerPrice_s6028: int;
var inspector_s6028: Ref;
var appraiser_s6028: Ref;
var description_s6028: int;
var price_s6028: int;
var offerPrice_s6175: int;
var inspector_s6175: Ref;
var appraiser_s6175: Ref;
var description_s6175: int;
var price_s6175: int;
var description_s6228: int;
var price_s6228: int;
var description_s6280: int;
var price_s6280: int;
var inspector_s6350: Ref;
var appraiser_s6350: Ref;
var offerPrice_s6350: int;
var offerPrice_s6574: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s148;
havoc inspector_s148;
havoc appraiser_s148;
havoc description_s148;
havoc price_s148;
havoc offerPrice_s295;
havoc inspector_s295;
havoc appraiser_s295;
havoc description_s295;
havoc price_s295;
havoc offerPrice_s442;
havoc inspector_s442;
havoc appraiser_s442;
havoc description_s442;
havoc price_s442;
havoc offerPrice_s589;
havoc inspector_s589;
havoc appraiser_s589;
havoc description_s589;
havoc price_s589;
havoc offerPrice_s736;
havoc inspector_s736;
havoc appraiser_s736;
havoc description_s736;
havoc price_s736;
havoc offerPrice_s883;
havoc inspector_s883;
havoc appraiser_s883;
havoc description_s883;
havoc price_s883;
havoc offerPrice_s1030;
havoc inspector_s1030;
havoc appraiser_s1030;
havoc description_s1030;
havoc price_s1030;
havoc offerPrice_s1177;
havoc inspector_s1177;
havoc appraiser_s1177;
havoc description_s1177;
havoc price_s1177;
havoc offerPrice_s1324;
havoc inspector_s1324;
havoc appraiser_s1324;
havoc description_s1324;
havoc price_s1324;
havoc offerPrice_s1471;
havoc inspector_s1471;
havoc appraiser_s1471;
havoc description_s1471;
havoc price_s1471;
havoc offerPrice_s1618;
havoc inspector_s1618;
havoc appraiser_s1618;
havoc description_s1618;
havoc price_s1618;
havoc offerPrice_s1765;
havoc inspector_s1765;
havoc appraiser_s1765;
havoc description_s1765;
havoc price_s1765;
havoc offerPrice_s1912;
havoc inspector_s1912;
havoc appraiser_s1912;
havoc description_s1912;
havoc price_s1912;
havoc offerPrice_s2059;
havoc inspector_s2059;
havoc appraiser_s2059;
havoc description_s2059;
havoc price_s2059;
havoc offerPrice_s2206;
havoc inspector_s2206;
havoc appraiser_s2206;
havoc description_s2206;
havoc price_s2206;
havoc offerPrice_s2353;
havoc inspector_s2353;
havoc appraiser_s2353;
havoc description_s2353;
havoc price_s2353;
havoc offerPrice_s2500;
havoc inspector_s2500;
havoc appraiser_s2500;
havoc description_s2500;
havoc price_s2500;
havoc offerPrice_s2647;
havoc inspector_s2647;
havoc appraiser_s2647;
havoc description_s2647;
havoc price_s2647;
havoc offerPrice_s2794;
havoc inspector_s2794;
havoc appraiser_s2794;
havoc description_s2794;
havoc price_s2794;
havoc offerPrice_s2941;
havoc inspector_s2941;
havoc appraiser_s2941;
havoc description_s2941;
havoc price_s2941;
havoc offerPrice_s3088;
havoc inspector_s3088;
havoc appraiser_s3088;
havoc description_s3088;
havoc price_s3088;
havoc offerPrice_s3235;
havoc inspector_s3235;
havoc appraiser_s3235;
havoc description_s3235;
havoc price_s3235;
havoc offerPrice_s3382;
havoc inspector_s3382;
havoc appraiser_s3382;
havoc description_s3382;
havoc price_s3382;
havoc offerPrice_s3529;
havoc inspector_s3529;
havoc appraiser_s3529;
havoc description_s3529;
havoc price_s3529;
havoc offerPrice_s3676;
havoc inspector_s3676;
havoc appraiser_s3676;
havoc description_s3676;
havoc price_s3676;
havoc offerPrice_s3823;
havoc inspector_s3823;
havoc appraiser_s3823;
havoc description_s3823;
havoc price_s3823;
havoc offerPrice_s3970;
havoc inspector_s3970;
havoc appraiser_s3970;
havoc description_s3970;
havoc price_s3970;
havoc offerPrice_s4117;
havoc inspector_s4117;
havoc appraiser_s4117;
havoc description_s4117;
havoc price_s4117;
havoc offerPrice_s4264;
havoc inspector_s4264;
havoc appraiser_s4264;
havoc description_s4264;
havoc price_s4264;
havoc offerPrice_s4411;
havoc inspector_s4411;
havoc appraiser_s4411;
havoc description_s4411;
havoc price_s4411;
havoc offerPrice_s4558;
havoc inspector_s4558;
havoc appraiser_s4558;
havoc description_s4558;
havoc price_s4558;
havoc offerPrice_s4705;
havoc inspector_s4705;
havoc appraiser_s4705;
havoc description_s4705;
havoc price_s4705;
havoc offerPrice_s4852;
havoc inspector_s4852;
havoc appraiser_s4852;
havoc description_s4852;
havoc price_s4852;
havoc offerPrice_s4999;
havoc inspector_s4999;
havoc appraiser_s4999;
havoc description_s4999;
havoc price_s4999;
havoc offerPrice_s5146;
havoc inspector_s5146;
havoc appraiser_s5146;
havoc description_s5146;
havoc price_s5146;
havoc offerPrice_s5293;
havoc inspector_s5293;
havoc appraiser_s5293;
havoc description_s5293;
havoc price_s5293;
havoc offerPrice_s5440;
havoc inspector_s5440;
havoc appraiser_s5440;
havoc description_s5440;
havoc price_s5440;
havoc offerPrice_s5587;
havoc inspector_s5587;
havoc appraiser_s5587;
havoc description_s5587;
havoc price_s5587;
havoc offerPrice_s5734;
havoc inspector_s5734;
havoc appraiser_s5734;
havoc description_s5734;
havoc price_s5734;
havoc offerPrice_s5881;
havoc inspector_s5881;
havoc appraiser_s5881;
havoc description_s5881;
havoc price_s5881;
havoc offerPrice_s6028;
havoc inspector_s6028;
havoc appraiser_s6028;
havoc description_s6028;
havoc price_s6028;
havoc offerPrice_s6175;
havoc inspector_s6175;
havoc appraiser_s6175;
havoc description_s6175;
havoc price_s6175;
havoc description_s6228;
havoc price_s6228;
havoc description_s6280;
havoc price_s6280;
havoc inspector_s6350;
havoc appraiser_s6350;
havoc offerPrice_s6350;
havoc offerPrice_s6574;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (52)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s148, inspector_s148, appraiser_s148, description_s148, price_s148);
} else if ((choice) == (51)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s295, inspector_s295, appraiser_s295, description_s295, price_s295);
} else if ((choice) == (50)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s442, inspector_s442, appraiser_s442, description_s442, price_s442);
} else if ((choice) == (49)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s589, inspector_s589, appraiser_s589, description_s589, price_s589);
} else if ((choice) == (48)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s736, inspector_s736, appraiser_s736, description_s736, price_s736);
} else if ((choice) == (47)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s883, inspector_s883, appraiser_s883, description_s883, price_s883);
} else if ((choice) == (46)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1030, inspector_s1030, appraiser_s1030, description_s1030, price_s1030);
} else if ((choice) == (45)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1177, inspector_s1177, appraiser_s1177, description_s1177, price_s1177);
} else if ((choice) == (44)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1324, inspector_s1324, appraiser_s1324, description_s1324, price_s1324);
} else if ((choice) == (43)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1471, inspector_s1471, appraiser_s1471, description_s1471, price_s1471);
} else if ((choice) == (42)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1618, inspector_s1618, appraiser_s1618, description_s1618, price_s1618);
} else if ((choice) == (41)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1765, inspector_s1765, appraiser_s1765, description_s1765, price_s1765);
} else if ((choice) == (40)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1912, inspector_s1912, appraiser_s1912, description_s1912, price_s1912);
} else if ((choice) == (39)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2059, inspector_s2059, appraiser_s2059, description_s2059, price_s2059);
} else if ((choice) == (38)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2206, inspector_s2206, appraiser_s2206, description_s2206, price_s2206);
} else if ((choice) == (37)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2353, inspector_s2353, appraiser_s2353, description_s2353, price_s2353);
} else if ((choice) == (36)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2500, inspector_s2500, appraiser_s2500, description_s2500, price_s2500);
} else if ((choice) == (35)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2647, inspector_s2647, appraiser_s2647, description_s2647, price_s2647);
} else if ((choice) == (34)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2794, inspector_s2794, appraiser_s2794, description_s2794, price_s2794);
} else if ((choice) == (33)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2941, inspector_s2941, appraiser_s2941, description_s2941, price_s2941);
} else if ((choice) == (32)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3088, inspector_s3088, appraiser_s3088, description_s3088, price_s3088);
} else if ((choice) == (31)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3235, inspector_s3235, appraiser_s3235, description_s3235, price_s3235);
} else if ((choice) == (30)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3382, inspector_s3382, appraiser_s3382, description_s3382, price_s3382);
} else if ((choice) == (29)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3529, inspector_s3529, appraiser_s3529, description_s3529, price_s3529);
} else if ((choice) == (28)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3676, inspector_s3676, appraiser_s3676, description_s3676, price_s3676);
} else if ((choice) == (27)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3823, inspector_s3823, appraiser_s3823, description_s3823, price_s3823);
} else if ((choice) == (26)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3970, inspector_s3970, appraiser_s3970, description_s3970, price_s3970);
} else if ((choice) == (25)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4117, inspector_s4117, appraiser_s4117, description_s4117, price_s4117);
} else if ((choice) == (24)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4264, inspector_s4264, appraiser_s4264, description_s4264, price_s4264);
} else if ((choice) == (23)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4411, inspector_s4411, appraiser_s4411, description_s4411, price_s4411);
} else if ((choice) == (22)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4558, inspector_s4558, appraiser_s4558, description_s4558, price_s4558);
} else if ((choice) == (21)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4705, inspector_s4705, appraiser_s4705, description_s4705, price_s4705);
} else if ((choice) == (20)) {
call validCombination32_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4852, inspector_s4852, appraiser_s4852, description_s4852, price_s4852);
} else if ((choice) == (19)) {
call validCombination33_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4999, inspector_s4999, appraiser_s4999, description_s4999, price_s4999);
} else if ((choice) == (18)) {
call validCombination34_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5146, inspector_s5146, appraiser_s5146, description_s5146, price_s5146);
} else if ((choice) == (17)) {
call validCombination35_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5293, inspector_s5293, appraiser_s5293, description_s5293, price_s5293);
} else if ((choice) == (16)) {
call validCombination36_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5440, inspector_s5440, appraiser_s5440, description_s5440, price_s5440);
} else if ((choice) == (15)) {
call validCombination37_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5587, inspector_s5587, appraiser_s5587, description_s5587, price_s5587);
} else if ((choice) == (14)) {
call validCombination38_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5734, inspector_s5734, appraiser_s5734, description_s5734, price_s5734);
} else if ((choice) == (13)) {
call validCombination39_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s5881, inspector_s5881, appraiser_s5881, description_s5881, price_s5881);
} else if ((choice) == (12)) {
call validCombination40_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6028, inspector_s6028, appraiser_s6028, description_s6028, price_s6028);
} else if ((choice) == (11)) {
call validCombination41_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6175, inspector_s6175, appraiser_s6175, description_s6175, price_s6175);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6280, price_s6280);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s6350, appraiser_s6350, offerPrice_s6350);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s6574);
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
var description_s6228: int;
var price_s6228: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s6228, price_s6228);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


