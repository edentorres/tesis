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
procedure {:public} {:inline 1} validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s137: int, inspector_s137: Ref, appraiser_s137: Ref, description_s137: int, price_s137: int);
procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s273: int, inspector_s273: Ref, appraiser_s273: Ref, description_s273: int, price_s273: int);
procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s409: int, inspector_s409: Ref, appraiser_s409: Ref, description_s409: int, price_s409: int);
procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s543: int, inspector_s543: Ref, appraiser_s543: Ref, description_s543: int, price_s543: int);
procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s677: int, inspector_s677: Ref, appraiser_s677: Ref, description_s677: int, price_s677: int);
procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s811: int, inspector_s811: Ref, appraiser_s811: Ref, description_s811: int, price_s811: int);
procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s945: int, inspector_s945: Ref, appraiser_s945: Ref, description_s945: int, price_s945: int);
procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1079: int, inspector_s1079: Ref, appraiser_s1079: Ref, description_s1079: int, price_s1079: int);
procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1213: int, inspector_s1213: Ref, appraiser_s1213: Ref, description_s1213: int, price_s1213: int);
procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1347: int, inspector_s1347: Ref, appraiser_s1347: Ref, description_s1347: int, price_s1347: int);
procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1481: int, inspector_s1481: Ref, appraiser_s1481: Ref, description_s1481: int, price_s1481: int);
procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1615: int, inspector_s1615: Ref, appraiser_s1615: Ref, description_s1615: int, price_s1615: int);
procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1749: int, inspector_s1749: Ref, appraiser_s1749: Ref, description_s1749: int, price_s1749: int);
procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1883: int, inspector_s1883: Ref, appraiser_s1883: Ref, description_s1883: int, price_s1883: int);
procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2017: int, inspector_s2017: Ref, appraiser_s2017: Ref, description_s2017: int, price_s2017: int);
procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2151: int, inspector_s2151: Ref, appraiser_s2151: Ref, description_s2151: int, price_s2151: int);
procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2285: int, inspector_s2285: Ref, appraiser_s2285: Ref, description_s2285: int, price_s2285: int);
procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2419: int, inspector_s2419: Ref, appraiser_s2419: Ref, description_s2419: int, price_s2419: int);
procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2553: int, inspector_s2553: Ref, appraiser_s2553: Ref, description_s2553: int, price_s2553: int);
procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2687: int, inspector_s2687: Ref, appraiser_s2687: Ref, description_s2687: int, price_s2687: int);
procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2821: int, inspector_s2821: Ref, appraiser_s2821: Ref, description_s2821: int, price_s2821: int);
procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2955: int, inspector_s2955: Ref, appraiser_s2955: Ref, description_s2955: int, price_s2955: int);
procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3089: int, inspector_s3089: Ref, appraiser_s3089: Ref, description_s3089: int, price_s3089: int);
procedure {:public} {:inline 1} validCombination23_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3223: int, inspector_s3223: Ref, appraiser_s3223: Ref, description_s3223: int, price_s3223: int);
procedure {:public} {:inline 1} validCombination24_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3357: int, inspector_s3357: Ref, appraiser_s3357: Ref, description_s3357: int, price_s3357: int);
procedure {:public} {:inline 1} validCombination25_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3491: int, inspector_s3491: Ref, appraiser_s3491: Ref, description_s3491: int, price_s3491: int);
procedure {:public} {:inline 1} validCombination26_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3625: int, inspector_s3625: Ref, appraiser_s3625: Ref, description_s3625: int, price_s3625: int);
procedure {:public} {:inline 1} validCombination27_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3759: int, inspector_s3759: Ref, appraiser_s3759: Ref, description_s3759: int, price_s3759: int);
procedure {:public} {:inline 1} validCombination28_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3893: int, inspector_s3893: Ref, appraiser_s3893: Ref, description_s3893: int, price_s3893: int);
procedure {:public} {:inline 1} validCombination29_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4027: int, inspector_s4027: Ref, appraiser_s4027: Ref, description_s4027: int, price_s4027: int);
procedure {:public} {:inline 1} validCombination30_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4161: int, inspector_s4161: Ref, appraiser_s4161: Ref, description_s4161: int, price_s4161: int);
procedure {:public} {:inline 1} validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4295: int, inspector_s4295: Ref, appraiser_s4295: Ref, description_s4295: int, price_s4295: int);
implementation validCombination31_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4295: int, inspector_s4295: Ref, appraiser_s4295: Ref, description_s4295: int, price_s4295: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4295);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4295);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4295);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4295);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4295);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 192} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 192} (true);
assume ((((((((((true) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (true)) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 197} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := -560321547;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4348);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4348);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 210} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 211} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 212} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4348) >= (0));
AskingPrice_AssetTransfer[this] := price_s4348;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 213} (true);
Description_AssetTransfer[this] := description_s4348;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 214} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4348: int, price_s4348: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4348);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4348);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s4348, price_s4348);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 219} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 219} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 222} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 224} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 225} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4400: int, price_s4400: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s4400: int, price_s4400: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s4400);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s4400);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 230} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 231} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 233} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 234} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 234} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 239} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 240} (true);
Description_AssetTransfer[this] := description_s4400;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 241} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s4400) >= (0));
AskingPrice_AssetTransfer[this] := price_s4400;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4470: Ref, appraiser_s4470: Ref, offerPrice_s4470: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s4470: Ref, appraiser_s4470: Ref, offerPrice_s4470: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s4470);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s4470);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4470);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 246} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 246} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s4470) >= (0));
if ((((inspector_s4470) == (null)) || ((appraiser_s4470) == (null))) || ((offerPrice_s4470) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 249} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 250} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 251} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 253} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 254} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 255} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 258} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 260} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 261} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 262} (true);
InstanceInspector_AssetTransfer[this] := inspector_s4470;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 263} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s4470;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 264} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4470) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4470;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 265} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 270} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 270} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 273} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 274} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 274} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 277} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 279} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 279} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 285} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 285} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 288} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 289} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 289} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 292} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 294} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 295} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 296} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 301} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 301} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 304} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 306} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 306} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 311} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 313} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 313} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 318} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 320} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 320} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 322} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 322} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 324} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 324} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 326} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 328} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 329} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 333} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 333} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 335} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 335} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 337} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 339} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 340} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4694: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s4694: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s4694);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 347} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 347} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 350} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 351} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 351} (true);
assume ((offerPrice_s4694) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s4694) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 356} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 357} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s4694) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s4694;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 362} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 365} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 366} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 366} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 369} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 371} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 372} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 373} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 374} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 379} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 379} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 382} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 384} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 384} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 386} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 387} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 388} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 390} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 390} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 395} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 396} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 401} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 401} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 404} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 406} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 406} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 408} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 409} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 410} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 412} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 412} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 417} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 418} (true);
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
var offerPrice_s137: int;
var inspector_s137: Ref;
var appraiser_s137: Ref;
var description_s137: int;
var price_s137: int;
var offerPrice_s273: int;
var inspector_s273: Ref;
var appraiser_s273: Ref;
var description_s273: int;
var price_s273: int;
var offerPrice_s409: int;
var inspector_s409: Ref;
var appraiser_s409: Ref;
var description_s409: int;
var price_s409: int;
var offerPrice_s543: int;
var inspector_s543: Ref;
var appraiser_s543: Ref;
var description_s543: int;
var price_s543: int;
var offerPrice_s677: int;
var inspector_s677: Ref;
var appraiser_s677: Ref;
var description_s677: int;
var price_s677: int;
var offerPrice_s811: int;
var inspector_s811: Ref;
var appraiser_s811: Ref;
var description_s811: int;
var price_s811: int;
var offerPrice_s945: int;
var inspector_s945: Ref;
var appraiser_s945: Ref;
var description_s945: int;
var price_s945: int;
var offerPrice_s1079: int;
var inspector_s1079: Ref;
var appraiser_s1079: Ref;
var description_s1079: int;
var price_s1079: int;
var offerPrice_s1213: int;
var inspector_s1213: Ref;
var appraiser_s1213: Ref;
var description_s1213: int;
var price_s1213: int;
var offerPrice_s1347: int;
var inspector_s1347: Ref;
var appraiser_s1347: Ref;
var description_s1347: int;
var price_s1347: int;
var offerPrice_s1481: int;
var inspector_s1481: Ref;
var appraiser_s1481: Ref;
var description_s1481: int;
var price_s1481: int;
var offerPrice_s1615: int;
var inspector_s1615: Ref;
var appraiser_s1615: Ref;
var description_s1615: int;
var price_s1615: int;
var offerPrice_s1749: int;
var inspector_s1749: Ref;
var appraiser_s1749: Ref;
var description_s1749: int;
var price_s1749: int;
var offerPrice_s1883: int;
var inspector_s1883: Ref;
var appraiser_s1883: Ref;
var description_s1883: int;
var price_s1883: int;
var offerPrice_s2017: int;
var inspector_s2017: Ref;
var appraiser_s2017: Ref;
var description_s2017: int;
var price_s2017: int;
var offerPrice_s2151: int;
var inspector_s2151: Ref;
var appraiser_s2151: Ref;
var description_s2151: int;
var price_s2151: int;
var offerPrice_s2285: int;
var inspector_s2285: Ref;
var appraiser_s2285: Ref;
var description_s2285: int;
var price_s2285: int;
var offerPrice_s2419: int;
var inspector_s2419: Ref;
var appraiser_s2419: Ref;
var description_s2419: int;
var price_s2419: int;
var offerPrice_s2553: int;
var inspector_s2553: Ref;
var appraiser_s2553: Ref;
var description_s2553: int;
var price_s2553: int;
var offerPrice_s2687: int;
var inspector_s2687: Ref;
var appraiser_s2687: Ref;
var description_s2687: int;
var price_s2687: int;
var offerPrice_s2821: int;
var inspector_s2821: Ref;
var appraiser_s2821: Ref;
var description_s2821: int;
var price_s2821: int;
var offerPrice_s2955: int;
var inspector_s2955: Ref;
var appraiser_s2955: Ref;
var description_s2955: int;
var price_s2955: int;
var offerPrice_s3089: int;
var inspector_s3089: Ref;
var appraiser_s3089: Ref;
var description_s3089: int;
var price_s3089: int;
var offerPrice_s3223: int;
var inspector_s3223: Ref;
var appraiser_s3223: Ref;
var description_s3223: int;
var price_s3223: int;
var offerPrice_s3357: int;
var inspector_s3357: Ref;
var appraiser_s3357: Ref;
var description_s3357: int;
var price_s3357: int;
var offerPrice_s3491: int;
var inspector_s3491: Ref;
var appraiser_s3491: Ref;
var description_s3491: int;
var price_s3491: int;
var offerPrice_s3625: int;
var inspector_s3625: Ref;
var appraiser_s3625: Ref;
var description_s3625: int;
var price_s3625: int;
var offerPrice_s3759: int;
var inspector_s3759: Ref;
var appraiser_s3759: Ref;
var description_s3759: int;
var price_s3759: int;
var offerPrice_s3893: int;
var inspector_s3893: Ref;
var appraiser_s3893: Ref;
var description_s3893: int;
var price_s3893: int;
var offerPrice_s4027: int;
var inspector_s4027: Ref;
var appraiser_s4027: Ref;
var description_s4027: int;
var price_s4027: int;
var offerPrice_s4161: int;
var inspector_s4161: Ref;
var appraiser_s4161: Ref;
var description_s4161: int;
var price_s4161: int;
var offerPrice_s4295: int;
var inspector_s4295: Ref;
var appraiser_s4295: Ref;
var description_s4295: int;
var price_s4295: int;
var description_s4348: int;
var price_s4348: int;
var description_s4400: int;
var price_s4400: int;
var inspector_s4470: Ref;
var appraiser_s4470: Ref;
var offerPrice_s4470: int;
var offerPrice_s4694: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4348, price_s4348);
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
havoc offerPrice_s137;
havoc inspector_s137;
havoc appraiser_s137;
havoc description_s137;
havoc price_s137;
havoc offerPrice_s273;
havoc inspector_s273;
havoc appraiser_s273;
havoc description_s273;
havoc price_s273;
havoc offerPrice_s409;
havoc inspector_s409;
havoc appraiser_s409;
havoc description_s409;
havoc price_s409;
havoc offerPrice_s543;
havoc inspector_s543;
havoc appraiser_s543;
havoc description_s543;
havoc price_s543;
havoc offerPrice_s677;
havoc inspector_s677;
havoc appraiser_s677;
havoc description_s677;
havoc price_s677;
havoc offerPrice_s811;
havoc inspector_s811;
havoc appraiser_s811;
havoc description_s811;
havoc price_s811;
havoc offerPrice_s945;
havoc inspector_s945;
havoc appraiser_s945;
havoc description_s945;
havoc price_s945;
havoc offerPrice_s1079;
havoc inspector_s1079;
havoc appraiser_s1079;
havoc description_s1079;
havoc price_s1079;
havoc offerPrice_s1213;
havoc inspector_s1213;
havoc appraiser_s1213;
havoc description_s1213;
havoc price_s1213;
havoc offerPrice_s1347;
havoc inspector_s1347;
havoc appraiser_s1347;
havoc description_s1347;
havoc price_s1347;
havoc offerPrice_s1481;
havoc inspector_s1481;
havoc appraiser_s1481;
havoc description_s1481;
havoc price_s1481;
havoc offerPrice_s1615;
havoc inspector_s1615;
havoc appraiser_s1615;
havoc description_s1615;
havoc price_s1615;
havoc offerPrice_s1749;
havoc inspector_s1749;
havoc appraiser_s1749;
havoc description_s1749;
havoc price_s1749;
havoc offerPrice_s1883;
havoc inspector_s1883;
havoc appraiser_s1883;
havoc description_s1883;
havoc price_s1883;
havoc offerPrice_s2017;
havoc inspector_s2017;
havoc appraiser_s2017;
havoc description_s2017;
havoc price_s2017;
havoc offerPrice_s2151;
havoc inspector_s2151;
havoc appraiser_s2151;
havoc description_s2151;
havoc price_s2151;
havoc offerPrice_s2285;
havoc inspector_s2285;
havoc appraiser_s2285;
havoc description_s2285;
havoc price_s2285;
havoc offerPrice_s2419;
havoc inspector_s2419;
havoc appraiser_s2419;
havoc description_s2419;
havoc price_s2419;
havoc offerPrice_s2553;
havoc inspector_s2553;
havoc appraiser_s2553;
havoc description_s2553;
havoc price_s2553;
havoc offerPrice_s2687;
havoc inspector_s2687;
havoc appraiser_s2687;
havoc description_s2687;
havoc price_s2687;
havoc offerPrice_s2821;
havoc inspector_s2821;
havoc appraiser_s2821;
havoc description_s2821;
havoc price_s2821;
havoc offerPrice_s2955;
havoc inspector_s2955;
havoc appraiser_s2955;
havoc description_s2955;
havoc price_s2955;
havoc offerPrice_s3089;
havoc inspector_s3089;
havoc appraiser_s3089;
havoc description_s3089;
havoc price_s3089;
havoc offerPrice_s3223;
havoc inspector_s3223;
havoc appraiser_s3223;
havoc description_s3223;
havoc price_s3223;
havoc offerPrice_s3357;
havoc inspector_s3357;
havoc appraiser_s3357;
havoc description_s3357;
havoc price_s3357;
havoc offerPrice_s3491;
havoc inspector_s3491;
havoc appraiser_s3491;
havoc description_s3491;
havoc price_s3491;
havoc offerPrice_s3625;
havoc inspector_s3625;
havoc appraiser_s3625;
havoc description_s3625;
havoc price_s3625;
havoc offerPrice_s3759;
havoc inspector_s3759;
havoc appraiser_s3759;
havoc description_s3759;
havoc price_s3759;
havoc offerPrice_s3893;
havoc inspector_s3893;
havoc appraiser_s3893;
havoc description_s3893;
havoc price_s3893;
havoc offerPrice_s4027;
havoc inspector_s4027;
havoc appraiser_s4027;
havoc description_s4027;
havoc price_s4027;
havoc offerPrice_s4161;
havoc inspector_s4161;
havoc appraiser_s4161;
havoc description_s4161;
havoc price_s4161;
havoc offerPrice_s4295;
havoc inspector_s4295;
havoc appraiser_s4295;
havoc description_s4295;
havoc price_s4295;
havoc description_s4348;
havoc price_s4348;
havoc description_s4400;
havoc price_s4400;
havoc inspector_s4470;
havoc appraiser_s4470;
havoc offerPrice_s4470;
havoc offerPrice_s4694;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s137, inspector_s137, appraiser_s137, description_s137, price_s137);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s273, inspector_s273, appraiser_s273, description_s273, price_s273);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s409, inspector_s409, appraiser_s409, description_s409, price_s409);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s543, inspector_s543, appraiser_s543, description_s543, price_s543);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s677, inspector_s677, appraiser_s677, description_s677, price_s677);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s811, inspector_s811, appraiser_s811, description_s811, price_s811);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s945, inspector_s945, appraiser_s945, description_s945, price_s945);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1079, inspector_s1079, appraiser_s1079, description_s1079, price_s1079);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1213, inspector_s1213, appraiser_s1213, description_s1213, price_s1213);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1347, inspector_s1347, appraiser_s1347, description_s1347, price_s1347);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1481, inspector_s1481, appraiser_s1481, description_s1481, price_s1481);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1615, inspector_s1615, appraiser_s1615, description_s1615, price_s1615);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1749, inspector_s1749, appraiser_s1749, description_s1749, price_s1749);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1883, inspector_s1883, appraiser_s1883, description_s1883, price_s1883);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2017, inspector_s2017, appraiser_s2017, description_s2017, price_s2017);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2151, inspector_s2151, appraiser_s2151, description_s2151, price_s2151);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2285, inspector_s2285, appraiser_s2285, description_s2285, price_s2285);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2419, inspector_s2419, appraiser_s2419, description_s2419, price_s2419);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2553, inspector_s2553, appraiser_s2553, description_s2553, price_s2553);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2687, inspector_s2687, appraiser_s2687, description_s2687, price_s2687);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2821, inspector_s2821, appraiser_s2821, description_s2821, price_s2821);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2955, inspector_s2955, appraiser_s2955, description_s2955, price_s2955);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3089, inspector_s3089, appraiser_s3089, description_s3089, price_s3089);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3223, inspector_s3223, appraiser_s3223, description_s3223, price_s3223);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3357, inspector_s3357, appraiser_s3357, description_s3357, price_s3357);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3491, inspector_s3491, appraiser_s3491, description_s3491, price_s3491);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3625, inspector_s3625, appraiser_s3625, description_s3625, price_s3625);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3759, inspector_s3759, appraiser_s3759, description_s3759, price_s3759);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3893, inspector_s3893, appraiser_s3893, description_s3893, price_s3893);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4027, inspector_s4027, appraiser_s4027, description_s4027, price_s4027);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4161, inspector_s4161, appraiser_s4161, description_s4161, price_s4161);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4295, inspector_s4295, appraiser_s4295, description_s4295, price_s4295);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4400, price_s4400);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4470, appraiser_s4470, offerPrice_s4470);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4694);
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
var offerPrice_s137: int;
var inspector_s137: Ref;
var appraiser_s137: Ref;
var description_s137: int;
var price_s137: int;
var offerPrice_s273: int;
var inspector_s273: Ref;
var appraiser_s273: Ref;
var description_s273: int;
var price_s273: int;
var offerPrice_s409: int;
var inspector_s409: Ref;
var appraiser_s409: Ref;
var description_s409: int;
var price_s409: int;
var offerPrice_s543: int;
var inspector_s543: Ref;
var appraiser_s543: Ref;
var description_s543: int;
var price_s543: int;
var offerPrice_s677: int;
var inspector_s677: Ref;
var appraiser_s677: Ref;
var description_s677: int;
var price_s677: int;
var offerPrice_s811: int;
var inspector_s811: Ref;
var appraiser_s811: Ref;
var description_s811: int;
var price_s811: int;
var offerPrice_s945: int;
var inspector_s945: Ref;
var appraiser_s945: Ref;
var description_s945: int;
var price_s945: int;
var offerPrice_s1079: int;
var inspector_s1079: Ref;
var appraiser_s1079: Ref;
var description_s1079: int;
var price_s1079: int;
var offerPrice_s1213: int;
var inspector_s1213: Ref;
var appraiser_s1213: Ref;
var description_s1213: int;
var price_s1213: int;
var offerPrice_s1347: int;
var inspector_s1347: Ref;
var appraiser_s1347: Ref;
var description_s1347: int;
var price_s1347: int;
var offerPrice_s1481: int;
var inspector_s1481: Ref;
var appraiser_s1481: Ref;
var description_s1481: int;
var price_s1481: int;
var offerPrice_s1615: int;
var inspector_s1615: Ref;
var appraiser_s1615: Ref;
var description_s1615: int;
var price_s1615: int;
var offerPrice_s1749: int;
var inspector_s1749: Ref;
var appraiser_s1749: Ref;
var description_s1749: int;
var price_s1749: int;
var offerPrice_s1883: int;
var inspector_s1883: Ref;
var appraiser_s1883: Ref;
var description_s1883: int;
var price_s1883: int;
var offerPrice_s2017: int;
var inspector_s2017: Ref;
var appraiser_s2017: Ref;
var description_s2017: int;
var price_s2017: int;
var offerPrice_s2151: int;
var inspector_s2151: Ref;
var appraiser_s2151: Ref;
var description_s2151: int;
var price_s2151: int;
var offerPrice_s2285: int;
var inspector_s2285: Ref;
var appraiser_s2285: Ref;
var description_s2285: int;
var price_s2285: int;
var offerPrice_s2419: int;
var inspector_s2419: Ref;
var appraiser_s2419: Ref;
var description_s2419: int;
var price_s2419: int;
var offerPrice_s2553: int;
var inspector_s2553: Ref;
var appraiser_s2553: Ref;
var description_s2553: int;
var price_s2553: int;
var offerPrice_s2687: int;
var inspector_s2687: Ref;
var appraiser_s2687: Ref;
var description_s2687: int;
var price_s2687: int;
var offerPrice_s2821: int;
var inspector_s2821: Ref;
var appraiser_s2821: Ref;
var description_s2821: int;
var price_s2821: int;
var offerPrice_s2955: int;
var inspector_s2955: Ref;
var appraiser_s2955: Ref;
var description_s2955: int;
var price_s2955: int;
var offerPrice_s3089: int;
var inspector_s3089: Ref;
var appraiser_s3089: Ref;
var description_s3089: int;
var price_s3089: int;
var offerPrice_s3223: int;
var inspector_s3223: Ref;
var appraiser_s3223: Ref;
var description_s3223: int;
var price_s3223: int;
var offerPrice_s3357: int;
var inspector_s3357: Ref;
var appraiser_s3357: Ref;
var description_s3357: int;
var price_s3357: int;
var offerPrice_s3491: int;
var inspector_s3491: Ref;
var appraiser_s3491: Ref;
var description_s3491: int;
var price_s3491: int;
var offerPrice_s3625: int;
var inspector_s3625: Ref;
var appraiser_s3625: Ref;
var description_s3625: int;
var price_s3625: int;
var offerPrice_s3759: int;
var inspector_s3759: Ref;
var appraiser_s3759: Ref;
var description_s3759: int;
var price_s3759: int;
var offerPrice_s3893: int;
var inspector_s3893: Ref;
var appraiser_s3893: Ref;
var description_s3893: int;
var price_s3893: int;
var offerPrice_s4027: int;
var inspector_s4027: Ref;
var appraiser_s4027: Ref;
var description_s4027: int;
var price_s4027: int;
var offerPrice_s4161: int;
var inspector_s4161: Ref;
var appraiser_s4161: Ref;
var description_s4161: int;
var price_s4161: int;
var offerPrice_s4295: int;
var inspector_s4295: Ref;
var appraiser_s4295: Ref;
var description_s4295: int;
var price_s4295: int;
var description_s4348: int;
var price_s4348: int;
var description_s4400: int;
var price_s4400: int;
var inspector_s4470: Ref;
var appraiser_s4470: Ref;
var offerPrice_s4470: int;
var offerPrice_s4694: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc offerPrice_s137;
havoc inspector_s137;
havoc appraiser_s137;
havoc description_s137;
havoc price_s137;
havoc offerPrice_s273;
havoc inspector_s273;
havoc appraiser_s273;
havoc description_s273;
havoc price_s273;
havoc offerPrice_s409;
havoc inspector_s409;
havoc appraiser_s409;
havoc description_s409;
havoc price_s409;
havoc offerPrice_s543;
havoc inspector_s543;
havoc appraiser_s543;
havoc description_s543;
havoc price_s543;
havoc offerPrice_s677;
havoc inspector_s677;
havoc appraiser_s677;
havoc description_s677;
havoc price_s677;
havoc offerPrice_s811;
havoc inspector_s811;
havoc appraiser_s811;
havoc description_s811;
havoc price_s811;
havoc offerPrice_s945;
havoc inspector_s945;
havoc appraiser_s945;
havoc description_s945;
havoc price_s945;
havoc offerPrice_s1079;
havoc inspector_s1079;
havoc appraiser_s1079;
havoc description_s1079;
havoc price_s1079;
havoc offerPrice_s1213;
havoc inspector_s1213;
havoc appraiser_s1213;
havoc description_s1213;
havoc price_s1213;
havoc offerPrice_s1347;
havoc inspector_s1347;
havoc appraiser_s1347;
havoc description_s1347;
havoc price_s1347;
havoc offerPrice_s1481;
havoc inspector_s1481;
havoc appraiser_s1481;
havoc description_s1481;
havoc price_s1481;
havoc offerPrice_s1615;
havoc inspector_s1615;
havoc appraiser_s1615;
havoc description_s1615;
havoc price_s1615;
havoc offerPrice_s1749;
havoc inspector_s1749;
havoc appraiser_s1749;
havoc description_s1749;
havoc price_s1749;
havoc offerPrice_s1883;
havoc inspector_s1883;
havoc appraiser_s1883;
havoc description_s1883;
havoc price_s1883;
havoc offerPrice_s2017;
havoc inspector_s2017;
havoc appraiser_s2017;
havoc description_s2017;
havoc price_s2017;
havoc offerPrice_s2151;
havoc inspector_s2151;
havoc appraiser_s2151;
havoc description_s2151;
havoc price_s2151;
havoc offerPrice_s2285;
havoc inspector_s2285;
havoc appraiser_s2285;
havoc description_s2285;
havoc price_s2285;
havoc offerPrice_s2419;
havoc inspector_s2419;
havoc appraiser_s2419;
havoc description_s2419;
havoc price_s2419;
havoc offerPrice_s2553;
havoc inspector_s2553;
havoc appraiser_s2553;
havoc description_s2553;
havoc price_s2553;
havoc offerPrice_s2687;
havoc inspector_s2687;
havoc appraiser_s2687;
havoc description_s2687;
havoc price_s2687;
havoc offerPrice_s2821;
havoc inspector_s2821;
havoc appraiser_s2821;
havoc description_s2821;
havoc price_s2821;
havoc offerPrice_s2955;
havoc inspector_s2955;
havoc appraiser_s2955;
havoc description_s2955;
havoc price_s2955;
havoc offerPrice_s3089;
havoc inspector_s3089;
havoc appraiser_s3089;
havoc description_s3089;
havoc price_s3089;
havoc offerPrice_s3223;
havoc inspector_s3223;
havoc appraiser_s3223;
havoc description_s3223;
havoc price_s3223;
havoc offerPrice_s3357;
havoc inspector_s3357;
havoc appraiser_s3357;
havoc description_s3357;
havoc price_s3357;
havoc offerPrice_s3491;
havoc inspector_s3491;
havoc appraiser_s3491;
havoc description_s3491;
havoc price_s3491;
havoc offerPrice_s3625;
havoc inspector_s3625;
havoc appraiser_s3625;
havoc description_s3625;
havoc price_s3625;
havoc offerPrice_s3759;
havoc inspector_s3759;
havoc appraiser_s3759;
havoc description_s3759;
havoc price_s3759;
havoc offerPrice_s3893;
havoc inspector_s3893;
havoc appraiser_s3893;
havoc description_s3893;
havoc price_s3893;
havoc offerPrice_s4027;
havoc inspector_s4027;
havoc appraiser_s4027;
havoc description_s4027;
havoc price_s4027;
havoc offerPrice_s4161;
havoc inspector_s4161;
havoc appraiser_s4161;
havoc description_s4161;
havoc price_s4161;
havoc offerPrice_s4295;
havoc inspector_s4295;
havoc appraiser_s4295;
havoc description_s4295;
havoc price_s4295;
havoc description_s4348;
havoc price_s4348;
havoc description_s4400;
havoc price_s4400;
havoc inspector_s4470;
havoc appraiser_s4470;
havoc offerPrice_s4470;
havoc offerPrice_s4694;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (42)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s137, inspector_s137, appraiser_s137, description_s137, price_s137);
} else if ((choice) == (41)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s273, inspector_s273, appraiser_s273, description_s273, price_s273);
} else if ((choice) == (40)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s409, inspector_s409, appraiser_s409, description_s409, price_s409);
} else if ((choice) == (39)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s543, inspector_s543, appraiser_s543, description_s543, price_s543);
} else if ((choice) == (38)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s677, inspector_s677, appraiser_s677, description_s677, price_s677);
} else if ((choice) == (37)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s811, inspector_s811, appraiser_s811, description_s811, price_s811);
} else if ((choice) == (36)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s945, inspector_s945, appraiser_s945, description_s945, price_s945);
} else if ((choice) == (35)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1079, inspector_s1079, appraiser_s1079, description_s1079, price_s1079);
} else if ((choice) == (34)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1213, inspector_s1213, appraiser_s1213, description_s1213, price_s1213);
} else if ((choice) == (33)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1347, inspector_s1347, appraiser_s1347, description_s1347, price_s1347);
} else if ((choice) == (32)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1481, inspector_s1481, appraiser_s1481, description_s1481, price_s1481);
} else if ((choice) == (31)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1615, inspector_s1615, appraiser_s1615, description_s1615, price_s1615);
} else if ((choice) == (30)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1749, inspector_s1749, appraiser_s1749, description_s1749, price_s1749);
} else if ((choice) == (29)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1883, inspector_s1883, appraiser_s1883, description_s1883, price_s1883);
} else if ((choice) == (28)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2017, inspector_s2017, appraiser_s2017, description_s2017, price_s2017);
} else if ((choice) == (27)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2151, inspector_s2151, appraiser_s2151, description_s2151, price_s2151);
} else if ((choice) == (26)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2285, inspector_s2285, appraiser_s2285, description_s2285, price_s2285);
} else if ((choice) == (25)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2419, inspector_s2419, appraiser_s2419, description_s2419, price_s2419);
} else if ((choice) == (24)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2553, inspector_s2553, appraiser_s2553, description_s2553, price_s2553);
} else if ((choice) == (23)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2687, inspector_s2687, appraiser_s2687, description_s2687, price_s2687);
} else if ((choice) == (22)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2821, inspector_s2821, appraiser_s2821, description_s2821, price_s2821);
} else if ((choice) == (21)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2955, inspector_s2955, appraiser_s2955, description_s2955, price_s2955);
} else if ((choice) == (20)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3089, inspector_s3089, appraiser_s3089, description_s3089, price_s3089);
} else if ((choice) == (19)) {
call validCombination23_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3223, inspector_s3223, appraiser_s3223, description_s3223, price_s3223);
} else if ((choice) == (18)) {
call validCombination24_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3357, inspector_s3357, appraiser_s3357, description_s3357, price_s3357);
} else if ((choice) == (17)) {
call validCombination25_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3491, inspector_s3491, appraiser_s3491, description_s3491, price_s3491);
} else if ((choice) == (16)) {
call validCombination26_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3625, inspector_s3625, appraiser_s3625, description_s3625, price_s3625);
} else if ((choice) == (15)) {
call validCombination27_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3759, inspector_s3759, appraiser_s3759, description_s3759, price_s3759);
} else if ((choice) == (14)) {
call validCombination28_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3893, inspector_s3893, appraiser_s3893, description_s3893, price_s3893);
} else if ((choice) == (13)) {
call validCombination29_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4027, inspector_s4027, appraiser_s4027, description_s4027, price_s4027);
} else if ((choice) == (12)) {
call validCombination30_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4161, inspector_s4161, appraiser_s4161, description_s4161, price_s4161);
} else if ((choice) == (11)) {
call validCombination31_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4295, inspector_s4295, appraiser_s4295, description_s4295, price_s4295);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4400, price_s4400);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s4470, appraiser_s4470, offerPrice_s4470);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s4694);
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
var description_s4348: int;
var price_s4348: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s4348, price_s4348);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


