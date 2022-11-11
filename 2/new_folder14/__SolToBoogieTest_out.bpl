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
implementation validCombination0_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s150: int, inspector_s150: Ref, appraiser_s150: Ref, description_s150: int, price_s150: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s150);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s150);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s150);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s150);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s150);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 4} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 6} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 7} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s299: int, inspector_s299: Ref, appraiser_s299: Ref, description_s299: int, price_s299: int);
implementation validCombination1_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s299: int, inspector_s299: Ref, appraiser_s299: Ref, description_s299: int, price_s299: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s299);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s299);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s299);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s299);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s299);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 10} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 12} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 13} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s448: int, inspector_s448: Ref, appraiser_s448: Ref, description_s448: int, price_s448: int);
implementation validCombination2_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s448: int, inspector_s448: Ref, appraiser_s448: Ref, description_s448: int, price_s448: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s448);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s448);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s448);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s448);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s448);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 17} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 18} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 19} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s597: int, inspector_s597: Ref, appraiser_s597: Ref, description_s597: int, price_s597: int);
implementation validCombination3_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s597: int, inspector_s597: Ref, appraiser_s597: Ref, description_s597: int, price_s597: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s597);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s597);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s597);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s597);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s597);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 23} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 24} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 25} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s746: int, inspector_s746: Ref, appraiser_s746: Ref, description_s746: int, price_s746: int);
implementation validCombination4_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s746: int, inspector_s746: Ref, appraiser_s746: Ref, description_s746: int, price_s746: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s746);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s746);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s746);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s746);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s746);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 29} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 30} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 31} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s895: int, inspector_s895: Ref, appraiser_s895: Ref, description_s895: int, price_s895: int);
implementation validCombination5_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s895: int, inspector_s895: Ref, appraiser_s895: Ref, description_s895: int, price_s895: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s895);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s895);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s895);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s895);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s895);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 35} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 36} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 37} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1044: int, inspector_s1044: Ref, appraiser_s1044: Ref, description_s1044: int, price_s1044: int);
implementation validCombination6_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1044: int, inspector_s1044: Ref, appraiser_s1044: Ref, description_s1044: int, price_s1044: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1044);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1044);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1044);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1044);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1044);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 41} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 42} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 43} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1193: int, inspector_s1193: Ref, appraiser_s1193: Ref, description_s1193: int, price_s1193: int);
implementation validCombination7_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1193: int, inspector_s1193: Ref, appraiser_s1193: Ref, description_s1193: int, price_s1193: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1193);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1193);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1193);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1193);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1193);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 47} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 48} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 49} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1342: int, inspector_s1342: Ref, appraiser_s1342: Ref, description_s1342: int, price_s1342: int);
implementation validCombination8_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1342: int, inspector_s1342: Ref, appraiser_s1342: Ref, description_s1342: int, price_s1342: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1342);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1342);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1342);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1342);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1342);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 53} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 54} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 55} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1491: int, inspector_s1491: Ref, appraiser_s1491: Ref, description_s1491: int, price_s1491: int);
implementation validCombination9_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1491: int, inspector_s1491: Ref, appraiser_s1491: Ref, description_s1491: int, price_s1491: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1491);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1491);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1491);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1491);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1491);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 59} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 60} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 61} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1640: int, inspector_s1640: Ref, appraiser_s1640: Ref, description_s1640: int, price_s1640: int);
implementation validCombination10_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1640: int, inspector_s1640: Ref, appraiser_s1640: Ref, description_s1640: int, price_s1640: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1640);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1640);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1640);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1640);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1640);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 65} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 66} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 67} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1789: int, inspector_s1789: Ref, appraiser_s1789: Ref, description_s1789: int, price_s1789: int);
implementation validCombination11_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1789: int, inspector_s1789: Ref, appraiser_s1789: Ref, description_s1789: int, price_s1789: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1789);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1789);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1789);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1789);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1789);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 71} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 72} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 73} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1938: int, inspector_s1938: Ref, appraiser_s1938: Ref, description_s1938: int, price_s1938: int);
implementation validCombination12_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s1938: int, inspector_s1938: Ref, appraiser_s1938: Ref, description_s1938: int, price_s1938: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s1938);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s1938);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s1938);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s1938);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1938);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 77} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 78} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 79} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2087: int, inspector_s2087: Ref, appraiser_s2087: Ref, description_s2087: int, price_s2087: int);
implementation validCombination13_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2087: int, inspector_s2087: Ref, appraiser_s2087: Ref, description_s2087: int, price_s2087: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2087);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2087);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2087);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2087);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2087);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 83} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 84} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 85} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2236: int, inspector_s2236: Ref, appraiser_s2236: Ref, description_s2236: int, price_s2236: int);
implementation validCombination14_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2236: int, inspector_s2236: Ref, appraiser_s2236: Ref, description_s2236: int, price_s2236: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2236);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2236);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2236);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2236);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2236);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 89} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 90} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 92} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2385: int, inspector_s2385: Ref, appraiser_s2385: Ref, description_s2385: int, price_s2385: int);
implementation validCombination15_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2385: int, inspector_s2385: Ref, appraiser_s2385: Ref, description_s2385: int, price_s2385: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2385);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2385);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2385);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2385);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2385);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 95} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 96} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 99} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2534: int, inspector_s2534: Ref, appraiser_s2534: Ref, description_s2534: int, price_s2534: int);
implementation validCombination16_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2534: int, inspector_s2534: Ref, appraiser_s2534: Ref, description_s2534: int, price_s2534: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2534);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2534);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2534);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2534);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2534);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 101} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 102} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 105} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2683: int, inspector_s2683: Ref, appraiser_s2683: Ref, description_s2683: int, price_s2683: int);
implementation validCombination17_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2683: int, inspector_s2683: Ref, appraiser_s2683: Ref, description_s2683: int, price_s2683: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2683);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2683);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2683);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2683);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2683);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 107} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 108} (true);
assume ((((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && ((State_AssetTransfer[this]) == (1))) && (!(((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((((State_AssetTransfer[this]) == (7)) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (6)))))) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 112} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2832: int, inspector_s2832: Ref, appraiser_s2832: Ref, description_s2832: int, price_s2832: int);
implementation validCombination18_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2832: int, inspector_s2832: Ref, appraiser_s2832: Ref, description_s2832: int, price_s2832: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2832);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2832);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2832);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2832);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2832);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 113} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 114} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 118} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2981: int, inspector_s2981: Ref, appraiser_s2981: Ref, description_s2981: int, price_s2981: int);
implementation validCombination19_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s2981: int, inspector_s2981: Ref, appraiser_s2981: Ref, description_s2981: int, price_s2981: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s2981);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s2981);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s2981);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s2981);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s2981);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 120} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 120} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 124} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3130: int, inspector_s3130: Ref, appraiser_s3130: Ref, description_s3130: int, price_s3130: int);
implementation validCombination20_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3130: int, inspector_s3130: Ref, appraiser_s3130: Ref, description_s3130: int, price_s3130: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3130);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s3130);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s3130);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3130);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3130);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 126} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 126} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && ((State_AssetTransfer[this]) == (1))) && (!((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7)))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 130} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3279: int, inspector_s3279: Ref, appraiser_s3279: Ref, description_s3279: int, price_s3279: int);
implementation validCombination21_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3279: int, inspector_s3279: Ref, appraiser_s3279: Ref, description_s3279: int, price_s3279: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3279);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s3279);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s3279);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3279);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3279);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 132} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 132} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4)))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 136} (true);
assert (false);
}

procedure {:public} {:inline 1} validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3428: int, inspector_s3428: Ref, appraiser_s3428: Ref, description_s3428: int, price_s3428: int);
implementation validCombination22_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3428: int, inspector_s3428: Ref, appraiser_s3428: Ref, description_s3428: int, price_s3428: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3428);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s3428);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s3428);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3428);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3428);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 138} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 138} (true);
assume ((((((((true) && (!(((State_AssetTransfer[this]) == (0))))) && ((State_AssetTransfer[this]) == (0))) && (!(((State_AssetTransfer[this]) == (1))))) && (((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || (((State_AssetTransfer[this]) == (4)) && ((State_AssetTransfer[this]) == (5)))) || ((State_AssetTransfer[this]) == (6))))) && ((State_AssetTransfer[this]) == (7))) || ((State_AssetTransfer[this]) == (5))) || ((((((State_AssetTransfer[this]) == (6)) && (!(((State_AssetTransfer[this]) == (1))))) && ((((((((State_AssetTransfer[this]) == (1)) || ((State_AssetTransfer[this]) == (2))) || ((State_AssetTransfer[this]) == (3))) || ((State_AssetTransfer[this]) == (4))) || ((State_AssetTransfer[this]) == (5))) || ((State_AssetTransfer[this]) == (7))))) && (!((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (3)))))) && ((((State_AssetTransfer[this]) != (2)) || ((State_AssetTransfer[this]) != (4))))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 143} (true);
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
procedure {:inline 1} AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3481: int, price_s3481: int);
implementation AssetTransfer_AssetTransfer_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3481: int, price_s3481: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InstanceOwner_AssetTransfer[this] := null;
Description_AssetTransfer[this] := 467566804;
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
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3481);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3481);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 156} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 156} (true);
InstanceOwner_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceOwner"} boogie_si_record_sol2Bpl_ref(InstanceOwner_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 158} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s3481) >= (0));
AskingPrice_AssetTransfer[this] := price_s3481;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 158} (true);
Description_AssetTransfer[this] := description_s3481;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 159} (true);
State_AssetTransfer[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3481: int, price_s3481: int);
implementation AssetTransfer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3481: int, price_s3481: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3481);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3481);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call AssetTransfer_AssetTransfer_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, description_s3481, price_s3481);
}

procedure {:public} {:inline 1} Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Terminate_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 165} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 165} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 167} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 170} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 170} (true);
State_AssetTransfer[this] := 9;
}

procedure {:public} {:inline 1} Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3533: int, price_s3533: int);
implementation Modify_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, description_s3533: int, price_s3533: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "description"} boogie_si_record_sol2Bpl_int(description_s3533);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s3533);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 176} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 176} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 178} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 180} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 180} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 182} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 185} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 185} (true);
Description_AssetTransfer[this] := description_s3533;
call  {:cexpr "Description"} boogie_si_record_sol2Bpl_int(Description_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 187} (true);
assume ((AskingPrice_AssetTransfer[this]) >= (0));
assume ((price_s3533) >= (0));
AskingPrice_AssetTransfer[this] := price_s3533;
call  {:cexpr "AskingPrice"} boogie_si_record_sol2Bpl_int(AskingPrice_AssetTransfer[this]);
}

procedure {:public} {:inline 1} MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s3603: Ref, appraiser_s3603: Ref, offerPrice_s3603: int);
implementation MakeOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, inspector_s3603: Ref, appraiser_s3603: Ref, offerPrice_s3603: int)
{
var __var_1: Ref;
var __var_2: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "inspector"} boogie_si_record_sol2Bpl_ref(inspector_s3603);
call  {:cexpr "appraiser"} boogie_si_record_sol2Bpl_ref(appraiser_s3603);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3603);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 192} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 192} (true);
__var_1 := null;
__var_2 := null;
assume ((offerPrice_s3603) >= (0));
if ((((inspector_s3603) == (null)) || ((appraiser_s3603) == (null))) || ((offerPrice_s3603) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 194} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 196} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 196} (true);
if ((State_AssetTransfer[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 198} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 200} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 201} (true);
if ((InstanceOwner_AssetTransfer[this]) == (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 203} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 206} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 206} (true);
InstanceBuyer_AssetTransfer[this] := msgsender_MSG;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 207} (true);
InstanceInspector_AssetTransfer[this] := inspector_s3603;
call  {:cexpr "InstanceInspector"} boogie_si_record_sol2Bpl_ref(InstanceInspector_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 208} (true);
InstanceAppraiser_AssetTransfer[this] := appraiser_s3603;
call  {:cexpr "InstanceAppraiser"} boogie_si_record_sol2Bpl_ref(InstanceAppraiser_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 209} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s3603) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s3603;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 210} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 216} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 216} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 218} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 220} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 220} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 222} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 225} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 225} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 231} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 231} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 233} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 235} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 235} (true);
if ((InstanceOwner_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 237} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 240} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 240} (true);
__var_3 := null;
InstanceBuyer_AssetTransfer[this] := __var_3;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 241} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 247} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 247} (true);
if (((msgsender_MSG) != (InstanceBuyer_AssetTransfer[this])) && ((msgsender_MSG) != (InstanceOwner_AssetTransfer[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 249} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 252} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 252} (true);
if ((((msgsender_MSG) == (InstanceOwner_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (6))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 256} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 259} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 259} (true);
if ((((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 263} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 266} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 266} (true);
if ((msgsender_MSG) == (InstanceBuyer_AssetTransfer[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 268} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 268} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 270} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 270} (true);
State_AssetTransfer[this] := 6;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 272} (true);
if ((State_AssetTransfer[this]) == (7)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 274} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 274} (true);
State_AssetTransfer[this] := 8;
}
}
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 279} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 279} (true);
if ((State_AssetTransfer[this]) == (5)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 281} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 281} (true);
State_AssetTransfer[this] := 7;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 283} (true);
if ((State_AssetTransfer[this]) == (6)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 285} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 285} (true);
State_AssetTransfer[this] := 8;
}
}
}
}

procedure {:public} {:inline 1} ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3827: int);
implementation ModifyOffer_AssetTransfer(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, offerPrice_s3827: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "offerPrice"} boogie_si_record_sol2Bpl_int(offerPrice_s3827);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 293} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 293} (true);
if ((State_AssetTransfer[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 295} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 297} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 297} (true);
assume ((offerPrice_s3827) >= (0));
if (((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) || ((offerPrice_s3827) == (0))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 299} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 302} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 302} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
assume ((offerPrice_s3827) >= (0));
OfferPrice_AssetTransfer[this] := offerPrice_s3827;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 308} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 308} (true);
if (((((((State_AssetTransfer[this]) != (1)) && ((State_AssetTransfer[this]) != (2))) && ((State_AssetTransfer[this]) != (3))) && ((State_AssetTransfer[this]) != (4))) && ((State_AssetTransfer[this]) != (5))) && ((State_AssetTransfer[this]) != (7))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 310} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 312} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 312} (true);
if ((InstanceBuyer_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 314} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 317} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 317} (true);
__var_4 := null;
InstanceBuyer_AssetTransfer[this] := __var_4;
call  {:cexpr "InstanceBuyer"} boogie_si_record_sol2Bpl_ref(InstanceBuyer_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 319} (true);
assume ((OfferPrice_AssetTransfer[this]) >= (0));
OfferPrice_AssetTransfer[this] := 0;
call  {:cexpr "OfferPrice"} boogie_si_record_sol2Bpl_int(OfferPrice_AssetTransfer[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 319} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 325} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 325} (true);
if ((InstanceAppraiser_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 327} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 330} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 330} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 332} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 332} (true);
State_AssetTransfer[this] := 4;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 334} (true);
if ((State_AssetTransfer[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 336} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 336} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 340} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 342} (true);
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 347} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 347} (true);
if ((InstanceInspector_AssetTransfer[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 352} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 352} (true);
if ((State_AssetTransfer[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 354} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 354} (true);
State_AssetTransfer[this] := 3;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 356} (true);
if ((State_AssetTransfer[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 358} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 358} (true);
State_AssetTransfer[this] := 5;
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 362} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder14/CombinationsTemp14.sol"} {:sourceLine 364} (true);
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
var description_s3481: int;
var price_s3481: int;
var description_s3533: int;
var price_s3533: int;
var inspector_s3603: Ref;
var appraiser_s3603: Ref;
var offerPrice_s3603: int;
var offerPrice_s3827: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s3481, price_s3481);
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
havoc description_s3481;
havoc price_s3481;
havoc description_s3533;
havoc price_s3533;
havoc inspector_s3603;
havoc appraiser_s3603;
havoc offerPrice_s3603;
havoc offerPrice_s3827;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (33)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s150, inspector_s150, appraiser_s150, description_s150, price_s150);
} else if ((choice) == (32)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s299, inspector_s299, appraiser_s299, description_s299, price_s299);
} else if ((choice) == (31)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s448, inspector_s448, appraiser_s448, description_s448, price_s448);
} else if ((choice) == (30)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s597, inspector_s597, appraiser_s597, description_s597, price_s597);
} else if ((choice) == (29)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s746, inspector_s746, appraiser_s746, description_s746, price_s746);
} else if ((choice) == (28)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s895, inspector_s895, appraiser_s895, description_s895, price_s895);
} else if ((choice) == (27)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1044, inspector_s1044, appraiser_s1044, description_s1044, price_s1044);
} else if ((choice) == (26)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1193, inspector_s1193, appraiser_s1193, description_s1193, price_s1193);
} else if ((choice) == (25)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1342, inspector_s1342, appraiser_s1342, description_s1342, price_s1342);
} else if ((choice) == (24)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1491, inspector_s1491, appraiser_s1491, description_s1491, price_s1491);
} else if ((choice) == (23)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1640, inspector_s1640, appraiser_s1640, description_s1640, price_s1640);
} else if ((choice) == (22)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1789, inspector_s1789, appraiser_s1789, description_s1789, price_s1789);
} else if ((choice) == (21)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1938, inspector_s1938, appraiser_s1938, description_s1938, price_s1938);
} else if ((choice) == (20)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2087, inspector_s2087, appraiser_s2087, description_s2087, price_s2087);
} else if ((choice) == (19)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2236, inspector_s2236, appraiser_s2236, description_s2236, price_s2236);
} else if ((choice) == (18)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2385, inspector_s2385, appraiser_s2385, description_s2385, price_s2385);
} else if ((choice) == (17)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2534, inspector_s2534, appraiser_s2534, description_s2534, price_s2534);
} else if ((choice) == (16)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2683, inspector_s2683, appraiser_s2683, description_s2683, price_s2683);
} else if ((choice) == (15)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2832, inspector_s2832, appraiser_s2832, description_s2832, price_s2832);
} else if ((choice) == (14)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2981, inspector_s2981, appraiser_s2981, description_s2981, price_s2981);
} else if ((choice) == (13)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3130, inspector_s3130, appraiser_s3130, description_s3130, price_s3130);
} else if ((choice) == (12)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3279, inspector_s3279, appraiser_s3279, description_s3279, price_s3279);
} else if ((choice) == (11)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3428, inspector_s3428, appraiser_s3428, description_s3428, price_s3428);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s3533, price_s3533);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s3603, appraiser_s3603, offerPrice_s3603);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3827);
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
var description_s3481: int;
var price_s3481: int;
var description_s3533: int;
var price_s3533: int;
var inspector_s3603: Ref;
var appraiser_s3603: Ref;
var offerPrice_s3603: int;
var offerPrice_s3827: int;
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
havoc description_s3481;
havoc price_s3481;
havoc description_s3533;
havoc price_s3533;
havoc inspector_s3603;
havoc appraiser_s3603;
havoc offerPrice_s3603;
havoc offerPrice_s3827;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (AssetTransfer));
Alloc[msgsender_MSG] := true;
if ((choice) == (33)) {
call validCombination0_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s150, inspector_s150, appraiser_s150, description_s150, price_s150);
} else if ((choice) == (32)) {
call validCombination1_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s299, inspector_s299, appraiser_s299, description_s299, price_s299);
} else if ((choice) == (31)) {
call validCombination2_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s448, inspector_s448, appraiser_s448, description_s448, price_s448);
} else if ((choice) == (30)) {
call validCombination3_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s597, inspector_s597, appraiser_s597, description_s597, price_s597);
} else if ((choice) == (29)) {
call validCombination4_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s746, inspector_s746, appraiser_s746, description_s746, price_s746);
} else if ((choice) == (28)) {
call validCombination5_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s895, inspector_s895, appraiser_s895, description_s895, price_s895);
} else if ((choice) == (27)) {
call validCombination6_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1044, inspector_s1044, appraiser_s1044, description_s1044, price_s1044);
} else if ((choice) == (26)) {
call validCombination7_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1193, inspector_s1193, appraiser_s1193, description_s1193, price_s1193);
} else if ((choice) == (25)) {
call validCombination8_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1342, inspector_s1342, appraiser_s1342, description_s1342, price_s1342);
} else if ((choice) == (24)) {
call validCombination9_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1491, inspector_s1491, appraiser_s1491, description_s1491, price_s1491);
} else if ((choice) == (23)) {
call validCombination10_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1640, inspector_s1640, appraiser_s1640, description_s1640, price_s1640);
} else if ((choice) == (22)) {
call validCombination11_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1789, inspector_s1789, appraiser_s1789, description_s1789, price_s1789);
} else if ((choice) == (21)) {
call validCombination12_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s1938, inspector_s1938, appraiser_s1938, description_s1938, price_s1938);
} else if ((choice) == (20)) {
call validCombination13_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2087, inspector_s2087, appraiser_s2087, description_s2087, price_s2087);
} else if ((choice) == (19)) {
call validCombination14_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2236, inspector_s2236, appraiser_s2236, description_s2236, price_s2236);
} else if ((choice) == (18)) {
call validCombination15_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2385, inspector_s2385, appraiser_s2385, description_s2385, price_s2385);
} else if ((choice) == (17)) {
call validCombination16_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2534, inspector_s2534, appraiser_s2534, description_s2534, price_s2534);
} else if ((choice) == (16)) {
call validCombination17_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2683, inspector_s2683, appraiser_s2683, description_s2683, price_s2683);
} else if ((choice) == (15)) {
call validCombination18_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2832, inspector_s2832, appraiser_s2832, description_s2832, price_s2832);
} else if ((choice) == (14)) {
call validCombination19_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s2981, inspector_s2981, appraiser_s2981, description_s2981, price_s2981);
} else if ((choice) == (13)) {
call validCombination20_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3130, inspector_s3130, appraiser_s3130, description_s3130, price_s3130);
} else if ((choice) == (12)) {
call validCombination21_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3279, inspector_s3279, appraiser_s3279, description_s3279, price_s3279);
} else if ((choice) == (11)) {
call validCombination22_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3428, inspector_s3428, appraiser_s3428, description_s3428, price_s3428);
} else if ((choice) == (10)) {
call Terminate_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call Modify_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s3533, price_s3533);
} else if ((choice) == (8)) {
call MakeOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, inspector_s3603, appraiser_s3603, offerPrice_s3603);
} else if ((choice) == (7)) {
call AcceptOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call Reject_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call Accept_AssetTransfer(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call ModifyOffer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, offerPrice_s3827);
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
var description_s3481: int;
var price_s3481: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (AssetTransfer));
call AssetTransfer_AssetTransfer(this, msgsender_MSG, msgvalue_MSG, description_s3481, price_s3481);
while (true)
{
call CorralChoice_AssetTransfer(this);
}
}


