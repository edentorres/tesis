type Ref;
type ContractName;
const unique null: Ref;
const unique SafeMath: ContractName;
const unique Ownable: ContractName;
const unique EscrowVault: ContractName;
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
var M_Ref_int: [Ref][Ref]int;
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
procedure {:inline 1} SafeMath_SafeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SafeMath_SafeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

procedure {:inline 1} SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation SafeMath_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 10} (true);
call SafeMath_SafeMath_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:inline 1} mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int);
implementation mul_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s34: int, b_s34: int) returns (__ret_0_: int)
{
var c_s33: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s34);
call  {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s34);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 15} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 16} (true);
assume ((a_s34) >= (0));
if ((a_s34) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 16} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 17} (true);
__ret_0_ := 0;
return;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 19} (true);
assume ((c_s33) >= (0));
assume ((a_s34) >= (0));
assume ((b_s34) >= (0));
assume (((a_s34) * (b_s34)) >= (0));
c_s33 := (a_s34) * (b_s34);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s33);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 20} (true);
assume ((c_s33) >= (0));
assume ((a_s34) >= (0));
assume (((c_s33) div (a_s34)) >= (0));
assume ((b_s34) >= (0));
assume (((c_s33) div (a_s34)) == (b_s34));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 21} (true);
assume ((c_s33) >= (0));
__ret_0_ := c_s33;
return;
}

procedure {:inline 1} div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int) returns (__ret_0_: int);
implementation div_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s52: int, b_s52: int) returns (__ret_0_: int)
{
var c_s51: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s52);
call  {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s52);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 27} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 29} (true);
assume ((c_s51) >= (0));
assume ((a_s52) >= (0));
assume ((b_s52) >= (0));
assume (((a_s52) div (b_s52)) >= (0));
c_s51 := (a_s52) div (b_s52);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s51);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 31} (true);
assume ((c_s51) >= (0));
__ret_0_ := c_s51;
return;
}

procedure {:inline 1} sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int);
implementation sub_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s72: int, b_s72: int) returns (__ret_0_: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s72);
call  {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s72);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 37} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 38} (true);
assume ((b_s72) >= (0));
assume ((a_s72) >= (0));
assume ((b_s72) <= (a_s72));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 39} (true);
assume ((a_s72) >= (0));
assume ((b_s72) >= (0));
assume (((a_s72) - (b_s72)) >= (0));
__ret_0_ := (a_s72) - (b_s72);
return;
}

procedure {:inline 1} add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int) returns (__ret_0_: int);
implementation add_SafeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s96: int, b_s96: int) returns (__ret_0_: int)
{
var c_s95: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s96);
call  {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s96);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 45} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 46} (true);
assume ((c_s95) >= (0));
assume ((a_s96) >= (0));
assume ((b_s96) >= (0));
assume (((a_s96) + (b_s96)) >= (0));
c_s95 := (a_s96) + (b_s96);
call  {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s95);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 47} (true);
assume ((c_s95) >= (0));
assume ((a_s96) >= (0));
assume ((c_s95) >= (a_s96));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 48} (true);
assume ((c_s95) >= (0));
__ret_0_ := c_s95;
return;
}

var owner_Ownable: [Ref]Ref;
procedure {:inline 1} Ownable_Ownable_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Ownable_Ownable_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
owner_Ownable[this] := null;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 68} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 69} (true);
owner_Ownable[this] := msgsender_MSG;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
}

procedure {:constructor} {:public} {:inline 1} Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Ownable_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call Ownable_Ownable_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref);
implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s150: Ref)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newOwner"} boogie_si_record_sol2Bpl_ref(newOwner_s150);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 84} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 85} (true);
__var_1 := null;
assume ((newOwner_s150) != (null));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 86} (true);
assert {:EventEmitted "OwnershipTransferred_Ownable"} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 87} (true);
owner_Ownable[this] := newOwner_s150;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
}

procedure {:public} {:inline 1} vc0x0x0_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s214: int, investor_s214: Ref);
implementation vc0x0x0_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s214: int, investor_s214: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_amount"} boogie_si_record_sol2Bpl_int(_amount_s214);
call  {:cexpr "investor"} boogie_si_record_sol2Bpl_ref(investor_s214);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 97} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 98} (true);
assume (((((((!((((state_EscrowVault[this]) == (0)) || ((state_EscrowVault[this]) == (2))))) && ((state_EscrowVault[this]) == (0))) && ((state_EscrowVault[this]) == (2))) && ((state_EscrowVault[this]) == (2))) && ((state_EscrowVault[this]) == (2))) && ((state_EscrowVault[this]) == (0))) && ((state_EscrowVault[this]) == (1)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 99} (true);
assume (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 100} (true);
assert (false);
}

var deposited_EscrowVault: [Ref]Ref;
var beneficiary_EscrowVault: [Ref]Ref;
var superOwner_EscrowVault: [Ref]Ref;
var state_EscrowVault: [Ref]int;
procedure {:inline 1} EscrowVault_EscrowVault_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _superOwner_s285: Ref, _beneficiary_s285: Ref);
implementation EscrowVault_EscrowVault_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _superOwner_s285: Ref, _beneficiary_s285: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// Make array/mapping vars distinct for deposited
call __var_4 := FreshRefGenerator();
deposited_EscrowVault[this] := __var_4;
// Initialize Integer mapping deposited
assume (forall  __i__0_0:Ref ::  ((M_Ref_int[deposited_EscrowVault[this]][__i__0_0]) == (0)));
beneficiary_EscrowVault[this] := null;
superOwner_EscrowVault[this] := null;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_superOwner"} boogie_si_record_sol2Bpl_ref(_superOwner_s285);
call  {:cexpr "_beneficiary"} boogie_si_record_sol2Bpl_ref(_beneficiary_s285);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 117} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 118} (true);
__var_2 := null;
assume ((_beneficiary_s285) != (null));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 119} (true);
__var_3 := null;
assume ((_superOwner_s285) != (null));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 120} (true);
beneficiary_EscrowVault[this] := _beneficiary_s285;
call  {:cexpr "beneficiary"} boogie_si_record_sol2Bpl_ref(beneficiary_EscrowVault[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 121} (true);
superOwner_EscrowVault[this] := _superOwner_s285;
call  {:cexpr "superOwner"} boogie_si_record_sol2Bpl_ref(superOwner_EscrowVault[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 122} (true);
state_EscrowVault[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} EscrowVault_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _superOwner_s285: Ref, _beneficiary_s285: Ref);
implementation EscrowVault_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _superOwner_s285: Ref, _beneficiary_s285: Ref)
{
var __var_2: Ref;
var __var_3: Ref;
var __var_4: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_superOwner"} boogie_si_record_sol2Bpl_ref(_superOwner_s285);
call  {:cexpr "_beneficiary"} boogie_si_record_sol2Bpl_ref(_beneficiary_s285);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
call EscrowVault_EscrowVault_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, _superOwner_s285, _beneficiary_s285);
}

procedure {:public} {:inline 1} deposit_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s317: Ref);
implementation deposit_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s317: Ref)
{
var __var_5: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "investor"} boogie_si_record_sol2Bpl_ref(investor_s317);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 125} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 126} (true);
assume (((state_EscrowVault[this]) == (0)) || ((state_EscrowVault[this]) == (2)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 127} (true);
assume ((M_Ref_int[deposited_EscrowVault[this]][investor_s317]) >= (0));
assume ((M_Ref_int[deposited_EscrowVault[this]][investor_s317]) >= (0));
assume ((msgvalue_MSG) >= (0));
call __var_5 := add_SafeMath(this, this, 0, M_Ref_int[deposited_EscrowVault[this]][investor_s317], msgvalue_MSG);
M_Ref_int[deposited_EscrowVault[this]][investor_s317] := __var_5;
assume ((__var_5) >= (0));
call  {:cexpr "deposited[investor]"} boogie_si_record_sol2Bpl_int(M_Ref_int[deposited_EscrowVault[this]][investor_s317]);
}

procedure {:public} {:inline 1} setGoalReached_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation setGoalReached_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 130} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 131} (true);
assume ((state_EscrowVault[this]) == (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 132} (true);
state_EscrowVault[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 133} (true);
assert {:EventEmitted "GoalReached_EscrowVault"} (true);
}

procedure {:public} {:inline 1} withdraw_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s381: int);
implementation withdraw_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s381: int)
{
var __var_6: Ref;
var __var_7: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_amount"} boogie_si_record_sol2Bpl_int(_amount_s381);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 136} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 137} (true);
assume ((msgsender_MSG) == (superOwner_EscrowVault[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 138} (true);
assume ((state_EscrowVault[this]) == (2));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 139} (true);
assume ((_amount_s381) >= (0));
__var_6 := this;
assume ((Balance[this]) >= (0));
assume ((_amount_s381) >= (0));
assume (((_amount_s381) <= (Balance[this])) && ((_amount_s381) > (0)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 140} (true);
assume ((_amount_s381) >= (0));
call __var_7 := send(this, beneficiary_EscrowVault[this], _amount_s381);
assume (__var_7);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 141} (true);
assert {:EventEmitted "Withdrawal_EscrowVault"} (true);
}

procedure {:public} {:inline 1} withdrawAll_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdrawAll_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var balance_s410: int;
var __var_8: Ref;
var __var_9: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 144} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 145} (true);
assume ((state_EscrowVault[this]) == (2));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 146} (true);
assume ((balance_s410) >= (0));
__var_8 := this;
assume ((Balance[this]) >= (0));
balance_s410 := Balance[this];
call  {:cexpr "balance"} boogie_si_record_sol2Bpl_int(balance_s410);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 147} (true);
assert {:EventEmitted "Withdrawal_EscrowVault"} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 148} (true);
assume ((balance_s410) >= (0));
call __var_9 := send(this, beneficiary_EscrowVault[this], balance_s410);
assume (__var_9);
}

procedure {:public} {:inline 1} close_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation close_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 151} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 152} (true);
assume ((state_EscrowVault[this]) == (2));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 153} (true);
call withdrawAll_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 154} (true);
state_EscrowVault[this] := 3;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 155} (true);
assert {:EventEmitted "Close_EscrowVault"} (true);
}

procedure {:public} {:inline 1} enableRefunds_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation enableRefunds_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 158} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 159} (true);
assume ((state_EscrowVault[this]) == (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 160} (true);
state_EscrowVault[this] := 1;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 161} (true);
assert {:EventEmitted "RefundsEnabled_EscrowVault"} (true);
}

procedure {:public} {:inline 1} refund_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s492: Ref);
implementation refund_EscrowVault(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, investor_s492: Ref)
{
var depositedValue_s491: int;
var __var_10: bool;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "investor"} boogie_si_record_sol2Bpl_ref(investor_s492);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 164} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 165} (true);
assume ((state_EscrowVault[this]) == (1));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 166} (true);
assume ((depositedValue_s491) >= (0));
assume ((M_Ref_int[deposited_EscrowVault[this]][investor_s492]) >= (0));
depositedValue_s491 := M_Ref_int[deposited_EscrowVault[this]][investor_s492];
call  {:cexpr "depositedValue"} boogie_si_record_sol2Bpl_int(depositedValue_s491);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 167} (true);
assume ((M_Ref_int[deposited_EscrowVault[this]][investor_s492]) >= (0));
M_Ref_int[deposited_EscrowVault[this]][investor_s492] := 0;
call  {:cexpr "deposited[investor]"} boogie_si_record_sol2Bpl_int(M_Ref_int[deposited_EscrowVault[this]][investor_s492]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 168} (true);
assume ((depositedValue_s491) >= (0));
call __var_10 := send(this, investor_s492, depositedValue_s491);
assume (__var_10);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 169} (true);
assert {:EventEmitted "Refunded_EscrowVault"} (true);
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (EscrowVault)) {
assume ((amount) == (0));
} else if ((DType[to]) == (Ownable)) {
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

procedure BoogieEntry_SafeMath();
implementation BoogieEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (SafeMath));
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
}
}

const {:existential true} HoudiniB1_Ownable: bool;
const {:existential true} HoudiniB2_Ownable: bool;
procedure BoogieEntry_Ownable();
implementation BoogieEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s150: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (Ownable)) || ((DType[this]) == (EscrowVault)));
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
while (true)
  invariant (HoudiniB1_Ownable) ==> ((owner_Ownable[this]) == (null));
  invariant (HoudiniB2_Ownable) ==> ((owner_Ownable[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s150;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
}
}
}

const {:existential true} HoudiniB1_EscrowVault: bool;
const {:existential true} HoudiniB2_EscrowVault: bool;
const {:existential true} HoudiniB3_EscrowVault: bool;
const {:existential true} HoudiniB4_EscrowVault: bool;
const {:existential true} HoudiniB5_EscrowVault: bool;
const {:existential true} HoudiniB6_EscrowVault: bool;
const {:existential true} HoudiniB7_EscrowVault: bool;
const {:existential true} HoudiniB8_EscrowVault: bool;
const {:existential true} HoudiniB9_EscrowVault: bool;
const {:existential true} HoudiniB10_EscrowVault: bool;
const {:existential true} HoudiniB11_EscrowVault: bool;
const {:existential true} HoudiniB12_EscrowVault: bool;
procedure BoogieEntry_EscrowVault();
implementation BoogieEntry_EscrowVault()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s150: Ref;
var _amount_s214: int;
var investor_s214: Ref;
var _superOwner_s285: Ref;
var _beneficiary_s285: Ref;
var investor_s317: Ref;
var _amount_s381: int;
var investor_s492: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (EscrowVault));
call EscrowVault_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _superOwner_s285, _beneficiary_s285);
while (true)
  invariant (HoudiniB1_EscrowVault) ==> ((owner_Ownable[this]) == (null));
  invariant (HoudiniB2_EscrowVault) ==> ((owner_Ownable[this]) != (null));
  invariant (HoudiniB3_EscrowVault) ==> ((beneficiary_EscrowVault[this]) == (null));
  invariant (HoudiniB4_EscrowVault) ==> ((beneficiary_EscrowVault[this]) != (null));
  invariant (HoudiniB5_EscrowVault) ==> ((superOwner_EscrowVault[this]) == (null));
  invariant (HoudiniB6_EscrowVault) ==> ((superOwner_EscrowVault[this]) != (null));
  invariant (HoudiniB7_EscrowVault) ==> ((owner_Ownable[this]) == (beneficiary_EscrowVault[this]));
  invariant (HoudiniB8_EscrowVault) ==> ((owner_Ownable[this]) != (beneficiary_EscrowVault[this]));
  invariant (HoudiniB9_EscrowVault) ==> ((owner_Ownable[this]) == (superOwner_EscrowVault[this]));
  invariant (HoudiniB10_EscrowVault) ==> ((owner_Ownable[this]) != (superOwner_EscrowVault[this]));
  invariant (HoudiniB11_EscrowVault) ==> ((beneficiary_EscrowVault[this]) == (superOwner_EscrowVault[this]));
  invariant (HoudiniB12_EscrowVault) ==> ((beneficiary_EscrowVault[this]) != (superOwner_EscrowVault[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s150;
havoc _amount_s214;
havoc investor_s214;
havoc _superOwner_s285;
havoc _beneficiary_s285;
havoc investor_s317;
havoc _amount_s381;
havoc investor_s492;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
} else if ((choice) == (8)) {
call vc0x0x0_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _amount_s214, investor_s214);
} else if ((choice) == (7)) {
call deposit_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s317);
} else if ((choice) == (6)) {
call setGoalReached_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call withdraw_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _amount_s381);
} else if ((choice) == (4)) {
call withdrawAll_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call close_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call enableRefunds_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call refund_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s492);
}
}
}

procedure {:inline 1} onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output8/OutputTemp8.sol"} {:sourceLine 76} (true);
assume ((msgsender_MSG) == (owner_Ownable[this]));
}

procedure CorralChoice_SafeMath(this: Ref);
implementation CorralChoice_SafeMath(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
}

procedure CorralEntry_SafeMath();
implementation CorralEntry_SafeMath()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (SafeMath));
call SafeMath_SafeMath(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_SafeMath(this);
}
}

procedure CorralChoice_Ownable(this: Ref);
implementation CorralChoice_Ownable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s150: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s150;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
}
}

procedure CorralEntry_Ownable();
implementation CorralEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume (((DType[this]) == (Ownable)) || ((DType[this]) == (EscrowVault)));
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_Ownable(this);
}
}

procedure CorralChoice_EscrowVault(this: Ref);
implementation CorralChoice_EscrowVault(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s150: Ref;
var _amount_s214: int;
var investor_s214: Ref;
var _superOwner_s285: Ref;
var _beneficiary_s285: Ref;
var investor_s317: Ref;
var _amount_s381: int;
var investor_s492: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s150;
havoc _amount_s214;
havoc investor_s214;
havoc _superOwner_s285;
havoc _beneficiary_s285;
havoc investor_s317;
havoc _amount_s381;
havoc investor_s492;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (SafeMath));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (EscrowVault));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s150);
} else if ((choice) == (8)) {
call vc0x0x0_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _amount_s214, investor_s214);
} else if ((choice) == (7)) {
call deposit_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s317);
} else if ((choice) == (6)) {
call setGoalReached_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (5)) {
call withdraw_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _amount_s381);
} else if ((choice) == (4)) {
call withdrawAll_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call close_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call enableRefunds_EscrowVault(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (1)) {
call refund_EscrowVault(this, msgsender_MSG, msgvalue_MSG, investor_s492);
}
}

procedure CorralEntry_EscrowVault();
implementation CorralEntry_EscrowVault()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _superOwner_s285: Ref;
var _beneficiary_s285: Ref;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (EscrowVault));
call EscrowVault_EscrowVault(this, msgsender_MSG, msgvalue_MSG, _superOwner_s285, _beneficiary_s285);
while (true)
{
call CorralChoice_EscrowVault(this);
}
}


