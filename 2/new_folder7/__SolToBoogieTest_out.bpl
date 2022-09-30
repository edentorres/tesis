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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s133: int, inspector_s133: Ref, appraiser_s133: Ref, description_s133: int, price_s133: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s265: int, inspector_s265: Ref, appraiser_s265: Ref, description_s265: int, price_s265: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s397: int, inspector_s397: Ref, appraiser_s397: Ref, description_s397: int, price_s397: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s529: int, inspector_s529: Ref, appraiser_s529: Ref, description_s529: int, price_s529: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s661: int, inspector_s661: Ref, appraiser_s661: Ref, description_s661: int, price_s661: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s793: int, inspector_s793: Ref, appraiser_s793: Ref, description_s793: int, price_s793: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s925: int, inspector_s925: Ref, appraiser_s925: Ref, description_s925: int, price_s925: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1057: int, inspector_s1057: Ref, appraiser_s1057: Ref, description_s1057: int, price_s1057: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1189: int, inspector_s1189: Ref, appraiser_s1189: Ref, description_s1189: int, price_s1189: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1321: int, inspector_s1321: Ref, appraiser_s1321: Ref, description_s1321: int, price_s1321: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1453: int, inspector_s1453: Ref, appraiser_s1453: Ref, description_s1453: int, price_s1453: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1585: int, inspector_s1585: Ref, appraiser_s1585: Ref, description_s1585: int, price_s1585: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1717: int, inspector_s1717: Ref, appraiser_s1717: Ref, description_s1717: int, price_s1717: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1849: int, inspector_s1849: Ref, appraiser_s1849: Ref, description_s1849: int, price_s1849: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1981: int, inspector_s1981: Ref, appraiser_s1981: Ref, description_s1981: int, price_s1981: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2113: int, inspector_s2113: Ref, appraiser_s2113: Ref, description_s2113: int, price_s2113: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2245: int, inspector_s2245: Ref, appraiser_s2245: Ref, description_s2245: int, price_s2245: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2377: int, inspector_s2377: Ref, appraiser_s2377: Ref, description_s2377: int, price_s2377: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2509: int, inspector_s2509: Ref, appraiser_s2509: Ref, description_s2509: int, price_s2509: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2641: int, inspector_s2641: Ref, appraiser_s2641: Ref, description_s2641: int, price_s2641: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2773: int, inspector_s2773: Ref, appraiser_s2773: Ref, description_s2773: int, price_s2773: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2905: int, inspector_s2905: Ref, appraiser_s2905: Ref, description_s2905: int, price_s2905: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3037: int, inspector_s3037: Ref, appraiser_s3037: Ref, description_s3037: int, price_s3037: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3167: int, inspector_s3167: Ref, appraiser_s3167: Ref, description_s3167: int, price_s3167: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3297: int, inspector_s3297: Ref, appraiser_s3297: Ref, description_s3297: int, price_s3297: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3427: int, inspector_s3427: Ref, appraiser_s3427: Ref, description_s3427: int, price_s3427: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3557: int, inspector_s3557: Ref, appraiser_s3557: Ref, description_s3557: int, price_s3557: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3687: int, inspector_s3687: Ref, appraiser_s3687: Ref, description_s3687: int, price_s3687: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3817: int, inspector_s3817: Ref, appraiser_s3817: Ref, description_s3817: int, price_s3817: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3947: int, inspector_s3947: Ref, appraiser_s3947: Ref, description_s3947: int, price_s3947: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4077: int, inspector_s4077: Ref, appraiser_s4077: Ref, description_s4077: int, price_s4077: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4205: int, inspector_s4205: Ref, appraiser_s4205: Ref, description_s4205: int, price_s4205: int);
implementation validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4205: int, inspector_s4205: Ref, appraiser_s4205: Ref, description_s4205: int, price_s4205: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4205);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4205);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4205);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4205);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4205);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 192} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 192} (true);
assume ((((((((((true) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (true)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 197} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 1124832420;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4258);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4258);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 210} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 211} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 212} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4258) >= (0));
AskingPrice_AssetTransfer[this] := price_s4258;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 213} (true);
Description_AssetTransfer[this] := description_s4258;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 214} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4258: int, price_s4258: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4258);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4258);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s4258, price_s4258);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 219} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 219} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 222} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 224} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 225} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4310: int, price_s4310: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4310: int, price_s4310: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4310);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4310);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 230} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 231} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 233} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 234} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 234} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 239} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 240} (true);
Description_AssetTransfer[this] := description_s4310;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 241} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4310) >= (0));
AskingPrice_AssetTransfer[this] := price_s4310;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4380: Ref, appraiser_s4380: Ref, offerPrice_s4380: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4380: Ref, appraiser_s4380: Ref, offerPrice_s4380: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4380);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4380);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4380);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 246} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 246} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s4380) >= (0));
if ((((inspector_s4380) == (null)) || ((appraiser_s4380) == (null))) || ((offerPrice_s4380) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 249} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 250} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 251} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 253} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 254} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 255} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 258} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 260} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 261} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 262} (true);
InstanceInspector_AssetTransfer[this] := inspector_s4380;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 263} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s4380;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 264} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4380) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4380;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 265} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 270} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 270} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 273} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 274} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 274} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 277} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 279} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 279} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 285} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 285} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 289} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 289} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 292} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 295} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 296} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 301} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 301} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 304} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 306} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 306} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 311} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 313} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 313} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 318} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 320} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 322} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 324} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 324} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 326} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 328} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 329} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 333} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 333} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 335} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 335} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 337} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 340} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4604: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4604: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4604);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 347} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 347} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 350} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 351} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 351} (true);
assume ((offerPrice_s4604) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s4604) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 356} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 357} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4604) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4604;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 362} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 366} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 369} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 371} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 372} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 373} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 374} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 379} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 379} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 384} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 384} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 386} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 387} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 388} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 390} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 396} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 401} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 401} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 404} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 406} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 406} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 409} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 410} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 412} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 412} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 417} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 418} (true);
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
var offerPrice_s133: int;
var inspector_s133: Ref;
var appraiser_s133: Ref;
var description_s133: int;
var price_s133: int;
var offerPrice_s265: int;
var inspector_s265: Ref;
var appraiser_s265: Ref;
var description_s265: int;
var price_s265: int;
var offerPrice_s397: int;
var inspector_s397: Ref;
var appraiser_s397: Ref;
var description_s397: int;
var price_s397: int;
var offerPrice_s529: int;
var inspector_s529: Ref;
var appraiser_s529: Ref;
var description_s529: int;
var price_s529: int;
var offerPrice_s661: int;
var inspector_s661: Ref;
var appraiser_s661: Ref;
var description_s661: int;
var price_s661: int;
var offerPrice_s793: int;
var inspector_s793: Ref;
var appraiser_s793: Ref;
var description_s793: int;
var price_s793: int;
var offerPrice_s925: int;
var inspector_s925: Ref;
var appraiser_s925: Ref;
var description_s925: int;
var price_s925: int;
var offerPrice_s1057: int;
var inspector_s1057: Ref;
var appraiser_s1057: Ref;
var description_s1057: int;
var price_s1057: int;
var offerPrice_s1189: int;
var inspector_s1189: Ref;
var appraiser_s1189: Ref;
var description_s1189: int;
var price_s1189: int;
var offerPrice_s1321: int;
var inspector_s1321: Ref;
var appraiser_s1321: Ref;
var description_s1321: int;
var price_s1321: int;
var offerPrice_s1453: int;
var inspector_s1453: Ref;
var appraiser_s1453: Ref;
var description_s1453: int;
var price_s1453: int;
var offerPrice_s1585: int;
var inspector_s1585: Ref;
var appraiser_s1585: Ref;
var description_s1585: int;
var price_s1585: int;
var offerPrice_s1717: int;
var inspector_s1717: Ref;
var appraiser_s1717: Ref;
var description_s1717: int;
var price_s1717: int;
var offerPrice_s1849: int;
var inspector_s1849: Ref;
var appraiser_s1849: Ref;
var description_s1849: int;
var price_s1849: int;
var offerPrice_s1981: int;
var inspector_s1981: Ref;
var appraiser_s1981: Ref;
var description_s1981: int;
var price_s1981: int;
var offerPrice_s2113: int;
var inspector_s2113: Ref;
var appraiser_s2113: Ref;
var description_s2113: int;
var price_s2113: int;
var offerPrice_s2245: int;
var inspector_s2245: Ref;
var appraiser_s2245: Ref;
var description_s2245: int;
var price_s2245: int;
var offerPrice_s2377: int;
var inspector_s2377: Ref;
var appraiser_s2377: Ref;
var description_s2377: int;
var price_s2377: int;
var offerPrice_s2509: int;
var inspector_s2509: Ref;
var appraiser_s2509: Ref;
var description_s2509: int;
var price_s2509: int;
var offerPrice_s2641: int;
var inspector_s2641: Ref;
var appraiser_s2641: Ref;
var description_s2641: int;
var price_s2641: int;
var offerPrice_s2773: int;
var inspector_s2773: Ref;
var appraiser_s2773: Ref;
var description_s2773: int;
var price_s2773: int;
var offerPrice_s2905: int;
var inspector_s2905: Ref;
var appraiser_s2905: Ref;
var description_s2905: int;
var price_s2905: int;
var offerPrice_s3037: int;
var inspector_s3037: Ref;
var appraiser_s3037: Ref;
var description_s3037: int;
var price_s3037: int;
var offerPrice_s3167: int;
var inspector_s3167: Ref;
var appraiser_s3167: Ref;
var description_s3167: int;
var price_s3167: int;
var offerPrice_s3297: int;
var inspector_s3297: Ref;
var appraiser_s3297: Ref;
var description_s3297: int;
var price_s3297: int;
var offerPrice_s3427: int;
var inspector_s3427: Ref;
var appraiser_s3427: Ref;
var description_s3427: int;
var price_s3427: int;
var offerPrice_s3557: int;
var inspector_s3557: Ref;
var appraiser_s3557: Ref;
var description_s3557: int;
var price_s3557: int;
var offerPrice_s3687: int;
var inspector_s3687: Ref;
var appraiser_s3687: Ref;
var description_s3687: int;
var price_s3687: int;
var offerPrice_s3817: int;
var inspector_s3817: Ref;
var appraiser_s3817: Ref;
var description_s3817: int;
var price_s3817: int;
var offerPrice_s3947: int;
var inspector_s3947: Ref;
var appraiser_s3947: Ref;
var description_s3947: int;
var price_s3947: int;
var offerPrice_s4077: int;
var inspector_s4077: Ref;
var appraiser_s4077: Ref;
var description_s4077: int;
var price_s4077: int;
var offerPrice_s4205: int;
var inspector_s4205: Ref;
var appraiser_s4205: Ref;
var description_s4205: int;
var price_s4205: int;
var description_s4258: int;
var price_s4258: int;
var description_s4310: int;
var price_s4310: int;
var inspector_s4380: Ref;
var appraiser_s4380: Ref;
var offerPrice_s4380: int;
var offerPrice_s4604: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4258, price_s4258);
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
havoc offerPrice_s133;
havoc inspector_s133;
havoc appraiser_s133;
havoc description_s133;
havoc price_s133;
havoc offerPrice_s265;
havoc inspector_s265;
havoc appraiser_s265;
havoc description_s265;
havoc price_s265;
havoc offerPrice_s397;
havoc inspector_s397;
havoc appraiser_s397;
havoc description_s397;
havoc price_s397;
havoc offerPrice_s529;
havoc inspector_s529;
havoc appraiser_s529;
havoc description_s529;
havoc price_s529;
havoc offerPrice_s661;
havoc inspector_s661;
havoc appraiser_s661;
havoc description_s661;
havoc price_s661;
havoc offerPrice_s793;
havoc inspector_s793;
havoc appraiser_s793;
havoc description_s793;
havoc price_s793;
havoc offerPrice_s925;
havoc inspector_s925;
havoc appraiser_s925;
havoc description_s925;
havoc price_s925;
havoc offerPrice_s1057;
havoc inspector_s1057;
havoc appraiser_s1057;
havoc description_s1057;
havoc price_s1057;
havoc offerPrice_s1189;
havoc inspector_s1189;
havoc appraiser_s1189;
havoc description_s1189;
havoc price_s1189;
havoc offerPrice_s1321;
havoc inspector_s1321;
havoc appraiser_s1321;
havoc description_s1321;
havoc price_s1321;
havoc offerPrice_s1453;
havoc inspector_s1453;
havoc appraiser_s1453;
havoc description_s1453;
havoc price_s1453;
havoc offerPrice_s1585;
havoc inspector_s1585;
havoc appraiser_s1585;
havoc description_s1585;
havoc price_s1585;
havoc offerPrice_s1717;
havoc inspector_s1717;
havoc appraiser_s1717;
havoc description_s1717;
havoc price_s1717;
havoc offerPrice_s1849;
havoc inspector_s1849;
havoc appraiser_s1849;
havoc description_s1849;
havoc price_s1849;
havoc offerPrice_s1981;
havoc inspector_s1981;
havoc appraiser_s1981;
havoc description_s1981;
havoc price_s1981;
havoc offerPrice_s2113;
havoc inspector_s2113;
havoc appraiser_s2113;
havoc description_s2113;
havoc price_s2113;
havoc offerPrice_s2245;
havoc inspector_s2245;
havoc appraiser_s2245;
havoc description_s2245;
havoc price_s2245;
havoc offerPrice_s2377;
havoc inspector_s2377;
havoc appraiser_s2377;
havoc description_s2377;
havoc price_s2377;
havoc offerPrice_s2509;
havoc inspector_s2509;
havoc appraiser_s2509;
havoc description_s2509;
havoc price_s2509;
havoc offerPrice_s2641;
havoc inspector_s2641;
havoc appraiser_s2641;
havoc description_s2641;
havoc price_s2641;
havoc offerPrice_s2773;
havoc inspector_s2773;
havoc appraiser_s2773;
havoc description_s2773;
havoc price_s2773;
havoc offerPrice_s2905;
havoc inspector_s2905;
havoc appraiser_s2905;
havoc description_s2905;
havoc price_s2905;
havoc offerPrice_s3037;
havoc inspector_s3037;
havoc appraiser_s3037;
havoc description_s3037;
havoc price_s3037;
havoc offerPrice_s3167;
havoc inspector_s3167;
havoc appraiser_s3167;
havoc description_s3167;
havoc price_s3167;
havoc offerPrice_s3297;
havoc inspector_s3297;
havoc appraiser_s3297;
havoc description_s3297;
havoc price_s3297;
havoc offerPrice_s3427;
havoc inspector_s3427;
havoc appraiser_s3427;
havoc description_s3427;
havoc price_s3427;
havoc offerPrice_s3557;
havoc inspector_s3557;
havoc appraiser_s3557;
havoc description_s3557;
havoc price_s3557;
havoc offerPrice_s3687;
havoc inspector_s3687;
havoc appraiser_s3687;
havoc description_s3687;
havoc price_s3687;
havoc offerPrice_s3817;
havoc inspector_s3817;
havoc appraiser_s3817;
havoc description_s3817;
havoc price_s3817;
havoc offerPrice_s3947;
havoc inspector_s3947;
havoc appraiser_s3947;
havoc description_s3947;
havoc price_s3947;
havoc offerPrice_s4077;
havoc inspector_s4077;
havoc appraiser_s4077;
havoc description_s4077;
havoc price_s4077;
havoc offerPrice_s4205;
havoc inspector_s4205;
havoc appraiser_s4205;
havoc description_s4205;
havoc price_s4205;
havoc description_s4258;
havoc price_s4258;
havoc description_s4310;
havoc price_s4310;
havoc inspector_s4380;
havoc appraiser_s4380;
havoc offerPrice_s4380;
havoc offerPrice_s4604;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s133, inspector_s133, appraiser_s133, description_s133, price_s133);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s265, inspector_s265, appraiser_s265, description_s265, price_s265);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s397, inspector_s397, appraiser_s397, description_s397, price_s397);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s529, inspector_s529, appraiser_s529, description_s529, price_s529);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s661, inspector_s661, appraiser_s661, description_s661, price_s661);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s793, inspector_s793, appraiser_s793, description_s793, price_s793);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s925, inspector_s925, appraiser_s925, description_s925, price_s925);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1057, inspector_s1057, appraiser_s1057, description_s1057, price_s1057);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1189, inspector_s1189, appraiser_s1189, description_s1189, price_s1189);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1321, inspector_s1321, appraiser_s1321, description_s1321, price_s1321);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1453, inspector_s1453, appraiser_s1453, description_s1453, price_s1453);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1585, inspector_s1585, appraiser_s1585, description_s1585, price_s1585);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1717, inspector_s1717, appraiser_s1717, description_s1717, price_s1717);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1849, inspector_s1849, appraiser_s1849, description_s1849, price_s1849);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1981, inspector_s1981, appraiser_s1981, description_s1981, price_s1981);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2113, inspector_s2113, appraiser_s2113, description_s2113, price_s2113);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2245, inspector_s2245, appraiser_s2245, description_s2245, price_s2245);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2377, inspector_s2377, appraiser_s2377, description_s2377, price_s2377);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2509, inspector_s2509, appraiser_s2509, description_s2509, price_s2509);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2641, inspector_s2641, appraiser_s2641, description_s2641, price_s2641);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2773, inspector_s2773, appraiser_s2773, description_s2773, price_s2773);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2905, inspector_s2905, appraiser_s2905, description_s2905, price_s2905);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3037, inspector_s3037, appraiser_s3037, description_s3037, price_s3037);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3167, inspector_s3167, appraiser_s3167, description_s3167, price_s3167);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3297, inspector_s3297, appraiser_s3297, description_s3297, price_s3297);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3427, inspector_s3427, appraiser_s3427, description_s3427, price_s3427);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3557, inspector_s3557, appraiser_s3557, description_s3557, price_s3557);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3687, inspector_s3687, appraiser_s3687, description_s3687, price_s3687);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3817, inspector_s3817, appraiser_s3817, description_s3817, price_s3817);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3947, inspector_s3947, appraiser_s3947, description_s3947, price_s3947);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4077, inspector_s4077, appraiser_s4077, description_s4077, price_s4077);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4205, inspector_s4205, appraiser_s4205, description_s4205, price_s4205);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4310, price_s4310);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4380, appraiser_s4380, offerPrice_s4380);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4604);
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
var offerPrice_s133: int;
var inspector_s133: Ref;
var appraiser_s133: Ref;
var description_s133: int;
var price_s133: int;
var offerPrice_s265: int;
var inspector_s265: Ref;
var appraiser_s265: Ref;
var description_s265: int;
var price_s265: int;
var offerPrice_s397: int;
var inspector_s397: Ref;
var appraiser_s397: Ref;
var description_s397: int;
var price_s397: int;
var offerPrice_s529: int;
var inspector_s529: Ref;
var appraiser_s529: Ref;
var description_s529: int;
var price_s529: int;
var offerPrice_s661: int;
var inspector_s661: Ref;
var appraiser_s661: Ref;
var description_s661: int;
var price_s661: int;
var offerPrice_s793: int;
var inspector_s793: Ref;
var appraiser_s793: Ref;
var description_s793: int;
var price_s793: int;
var offerPrice_s925: int;
var inspector_s925: Ref;
var appraiser_s925: Ref;
var description_s925: int;
var price_s925: int;
var offerPrice_s1057: int;
var inspector_s1057: Ref;
var appraiser_s1057: Ref;
var description_s1057: int;
var price_s1057: int;
var offerPrice_s1189: int;
var inspector_s1189: Ref;
var appraiser_s1189: Ref;
var description_s1189: int;
var price_s1189: int;
var offerPrice_s1321: int;
var inspector_s1321: Ref;
var appraiser_s1321: Ref;
var description_s1321: int;
var price_s1321: int;
var offerPrice_s1453: int;
var inspector_s1453: Ref;
var appraiser_s1453: Ref;
var description_s1453: int;
var price_s1453: int;
var offerPrice_s1585: int;
var inspector_s1585: Ref;
var appraiser_s1585: Ref;
var description_s1585: int;
var price_s1585: int;
var offerPrice_s1717: int;
var inspector_s1717: Ref;
var appraiser_s1717: Ref;
var description_s1717: int;
var price_s1717: int;
var offerPrice_s1849: int;
var inspector_s1849: Ref;
var appraiser_s1849: Ref;
var description_s1849: int;
var price_s1849: int;
var offerPrice_s1981: int;
var inspector_s1981: Ref;
var appraiser_s1981: Ref;
var description_s1981: int;
var price_s1981: int;
var offerPrice_s2113: int;
var inspector_s2113: Ref;
var appraiser_s2113: Ref;
var description_s2113: int;
var price_s2113: int;
var offerPrice_s2245: int;
var inspector_s2245: Ref;
var appraiser_s2245: Ref;
var description_s2245: int;
var price_s2245: int;
var offerPrice_s2377: int;
var inspector_s2377: Ref;
var appraiser_s2377: Ref;
var description_s2377: int;
var price_s2377: int;
var offerPrice_s2509: int;
var inspector_s2509: Ref;
var appraiser_s2509: Ref;
var description_s2509: int;
var price_s2509: int;
var offerPrice_s2641: int;
var inspector_s2641: Ref;
var appraiser_s2641: Ref;
var description_s2641: int;
var price_s2641: int;
var offerPrice_s2773: int;
var inspector_s2773: Ref;
var appraiser_s2773: Ref;
var description_s2773: int;
var price_s2773: int;
var offerPrice_s2905: int;
var inspector_s2905: Ref;
var appraiser_s2905: Ref;
var description_s2905: int;
var price_s2905: int;
var offerPrice_s3037: int;
var inspector_s3037: Ref;
var appraiser_s3037: Ref;
var description_s3037: int;
var price_s3037: int;
var offerPrice_s3167: int;
var inspector_s3167: Ref;
var appraiser_s3167: Ref;
var description_s3167: int;
var price_s3167: int;
var offerPrice_s3297: int;
var inspector_s3297: Ref;
var appraiser_s3297: Ref;
var description_s3297: int;
var price_s3297: int;
var offerPrice_s3427: int;
var inspector_s3427: Ref;
var appraiser_s3427: Ref;
var description_s3427: int;
var price_s3427: int;
var offerPrice_s3557: int;
var inspector_s3557: Ref;
var appraiser_s3557: Ref;
var description_s3557: int;
var price_s3557: int;
var offerPrice_s3687: int;
var inspector_s3687: Ref;
var appraiser_s3687: Ref;
var description_s3687: int;
var price_s3687: int;
var offerPrice_s3817: int;
var inspector_s3817: Ref;
var appraiser_s3817: Ref;
var description_s3817: int;
var price_s3817: int;
var offerPrice_s3947: int;
var inspector_s3947: Ref;
var appraiser_s3947: Ref;
var description_s3947: int;
var price_s3947: int;
var offerPrice_s4077: int;
var inspector_s4077: Ref;
var appraiser_s4077: Ref;
var description_s4077: int;
var price_s4077: int;
var offerPrice_s4205: int;
var inspector_s4205: Ref;
var appraiser_s4205: Ref;
var description_s4205: int;
var price_s4205: int;
var description_s4258: int;
var price_s4258: int;
var description_s4310: int;
var price_s4310: int;
var inspector_s4380: Ref;
var appraiser_s4380: Ref;
var offerPrice_s4380: int;
var offerPrice_s4604: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s133;
havoc inspector_s133;
havoc appraiser_s133;
havoc description_s133;
havoc price_s133;
havoc offerPrice_s265;
havoc inspector_s265;
havoc appraiser_s265;
havoc description_s265;
havoc price_s265;
havoc offerPrice_s397;
havoc inspector_s397;
havoc appraiser_s397;
havoc description_s397;
havoc price_s397;
havoc offerPrice_s529;
havoc inspector_s529;
havoc appraiser_s529;
havoc description_s529;
havoc price_s529;
havoc offerPrice_s661;
havoc inspector_s661;
havoc appraiser_s661;
havoc description_s661;
havoc price_s661;
havoc offerPrice_s793;
havoc inspector_s793;
havoc appraiser_s793;
havoc description_s793;
havoc price_s793;
havoc offerPrice_s925;
havoc inspector_s925;
havoc appraiser_s925;
havoc description_s925;
havoc price_s925;
havoc offerPrice_s1057;
havoc inspector_s1057;
havoc appraiser_s1057;
havoc description_s1057;
havoc price_s1057;
havoc offerPrice_s1189;
havoc inspector_s1189;
havoc appraiser_s1189;
havoc description_s1189;
havoc price_s1189;
havoc offerPrice_s1321;
havoc inspector_s1321;
havoc appraiser_s1321;
havoc description_s1321;
havoc price_s1321;
havoc offerPrice_s1453;
havoc inspector_s1453;
havoc appraiser_s1453;
havoc description_s1453;
havoc price_s1453;
havoc offerPrice_s1585;
havoc inspector_s1585;
havoc appraiser_s1585;
havoc description_s1585;
havoc price_s1585;
havoc offerPrice_s1717;
havoc inspector_s1717;
havoc appraiser_s1717;
havoc description_s1717;
havoc price_s1717;
havoc offerPrice_s1849;
havoc inspector_s1849;
havoc appraiser_s1849;
havoc description_s1849;
havoc price_s1849;
havoc offerPrice_s1981;
havoc inspector_s1981;
havoc appraiser_s1981;
havoc description_s1981;
havoc price_s1981;
havoc offerPrice_s2113;
havoc inspector_s2113;
havoc appraiser_s2113;
havoc description_s2113;
havoc price_s2113;
havoc offerPrice_s2245;
havoc inspector_s2245;
havoc appraiser_s2245;
havoc description_s2245;
havoc price_s2245;
havoc offerPrice_s2377;
havoc inspector_s2377;
havoc appraiser_s2377;
havoc description_s2377;
havoc price_s2377;
havoc offerPrice_s2509;
havoc inspector_s2509;
havoc appraiser_s2509;
havoc description_s2509;
havoc price_s2509;
havoc offerPrice_s2641;
havoc inspector_s2641;
havoc appraiser_s2641;
havoc description_s2641;
havoc price_s2641;
havoc offerPrice_s2773;
havoc inspector_s2773;
havoc appraiser_s2773;
havoc description_s2773;
havoc price_s2773;
havoc offerPrice_s2905;
havoc inspector_s2905;
havoc appraiser_s2905;
havoc description_s2905;
havoc price_s2905;
havoc offerPrice_s3037;
havoc inspector_s3037;
havoc appraiser_s3037;
havoc description_s3037;
havoc price_s3037;
havoc offerPrice_s3167;
havoc inspector_s3167;
havoc appraiser_s3167;
havoc description_s3167;
havoc price_s3167;
havoc offerPrice_s3297;
havoc inspector_s3297;
havoc appraiser_s3297;
havoc description_s3297;
havoc price_s3297;
havoc offerPrice_s3427;
havoc inspector_s3427;
havoc appraiser_s3427;
havoc description_s3427;
havoc price_s3427;
havoc offerPrice_s3557;
havoc inspector_s3557;
havoc appraiser_s3557;
havoc description_s3557;
havoc price_s3557;
havoc offerPrice_s3687;
havoc inspector_s3687;
havoc appraiser_s3687;
havoc description_s3687;
havoc price_s3687;
havoc offerPrice_s3817;
havoc inspector_s3817;
havoc appraiser_s3817;
havoc description_s3817;
havoc price_s3817;
havoc offerPrice_s3947;
havoc inspector_s3947;
havoc appraiser_s3947;
havoc description_s3947;
havoc price_s3947;
havoc offerPrice_s4077;
havoc inspector_s4077;
havoc appraiser_s4077;
havoc description_s4077;
havoc price_s4077;
havoc offerPrice_s4205;
havoc inspector_s4205;
havoc appraiser_s4205;
havoc description_s4205;
havoc price_s4205;
havoc description_s4258;
havoc price_s4258;
havoc description_s4310;
havoc price_s4310;
havoc inspector_s4380;
havoc appraiser_s4380;
havoc offerPrice_s4380;
havoc offerPrice_s4604;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s133, inspector_s133, appraiser_s133, description_s133, price_s133);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s265, inspector_s265, appraiser_s265, description_s265, price_s265);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s397, inspector_s397, appraiser_s397, description_s397, price_s397);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s529, inspector_s529, appraiser_s529, description_s529, price_s529);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s661, inspector_s661, appraiser_s661, description_s661, price_s661);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s793, inspector_s793, appraiser_s793, description_s793, price_s793);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s925, inspector_s925, appraiser_s925, description_s925, price_s925);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1057, inspector_s1057, appraiser_s1057, description_s1057, price_s1057);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1189, inspector_s1189, appraiser_s1189, description_s1189, price_s1189);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1321, inspector_s1321, appraiser_s1321, description_s1321, price_s1321);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1453, inspector_s1453, appraiser_s1453, description_s1453, price_s1453);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1585, inspector_s1585, appraiser_s1585, description_s1585, price_s1585);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1717, inspector_s1717, appraiser_s1717, description_s1717, price_s1717);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1849, inspector_s1849, appraiser_s1849, description_s1849, price_s1849);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1981, inspector_s1981, appraiser_s1981, description_s1981, price_s1981);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2113, inspector_s2113, appraiser_s2113, description_s2113, price_s2113);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2245, inspector_s2245, appraiser_s2245, description_s2245, price_s2245);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2377, inspector_s2377, appraiser_s2377, description_s2377, price_s2377);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2509, inspector_s2509, appraiser_s2509, description_s2509, price_s2509);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2641, inspector_s2641, appraiser_s2641, description_s2641, price_s2641);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2773, inspector_s2773, appraiser_s2773, description_s2773, price_s2773);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2905, inspector_s2905, appraiser_s2905, description_s2905, price_s2905);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3037, inspector_s3037, appraiser_s3037, description_s3037, price_s3037);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3167, inspector_s3167, appraiser_s3167, description_s3167, price_s3167);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3297, inspector_s3297, appraiser_s3297, description_s3297, price_s3297);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3427, inspector_s3427, appraiser_s3427, description_s3427, price_s3427);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3557, inspector_s3557, appraiser_s3557, description_s3557, price_s3557);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3687, inspector_s3687, appraiser_s3687, description_s3687, price_s3687);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3817, inspector_s3817, appraiser_s3817, description_s3817, price_s3817);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3947, inspector_s3947, appraiser_s3947, description_s3947, price_s3947);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4077, inspector_s4077, appraiser_s4077, description_s4077, price_s4077);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4205, inspector_s4205, appraiser_s4205, description_s4205, price_s4205);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4310, price_s4310);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4380, appraiser_s4380, offerPrice_s4380);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4604);
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
var description_s4258: int;
var price_s4258: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4258, price_s4258);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


