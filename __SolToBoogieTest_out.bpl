type Ref;
type ContractName;
const unique null: Ref;
const unique Ownable: ContractName;
const unique DepositLockerInterface: ContractName;
const unique DepositLocker: ContractName;
const unique ValidatorAuction: ContractName;
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
var M_Ref_bool: [Ref][Ref]bool;
var M_Ref_int: [Ref][Ref]int;
var M_int_Ref: [Ref][int]Ref;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 12} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 13} (true);
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

procedure {:public} {:inline 1} transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref);
implementation transferOwnership_Ownable(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newOwner_s43: Ref)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newOwner"} boogie_si_record_sol2Bpl_ref(newOwner_s43);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 24} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 25} (true);
__var_1 := null;
if ((newOwner_s43) != (null)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 25} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 26} (true);
owner_Ownable[this] := newOwner_s43;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
}
}

procedure {:inline 1} DepositLockerInterface_DepositLockerInterface_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation DepositLockerInterface_DepositLockerInterface_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
// end of initialization
}

procedure {:inline 1} DepositLockerInterface_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation DepositLockerInterface_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 31} (true);
call DepositLockerInterface_DepositLockerInterface_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} slash_DepositLockerInterface(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s49: Ref);
procedure {:inline 1} DepositLocker_DepositLocker_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation DepositLocker_DepositLocker_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_2: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
initialized_DepositLocker[this] := false;
deposited_DepositLocker[this] := false;
slasher_DepositLocker[this] := null;
depositorsProxy_DepositLocker[this] := null;
releaseTimestamp_DepositLocker[this] := 0;
// Make array/mapping vars distinct for canWithdraw
call __var_2 := FreshRefGenerator();
canWithdraw_DepositLocker[this] := __var_2;
// Initialize Boolean mapping canWithdraw
assume (forall  __i__0_0:Ref ::  (!(M_Ref_bool[canWithdraw_DepositLocker[this]][__i__0_0])));
numberOfDepositors_DepositLocker[this] := 0;
valuePerDepositor_DepositLocker[this] := 0;
time_DepositLocker[this] := 0;
// end of initialization
}

procedure {:inline 1} DepositLocker_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation DepositLocker_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 36} (true);
call DepositLockerInterface_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
call DepositLocker_DepositLocker_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
}

var initialized_DepositLocker: [Ref]bool;
var deposited_DepositLocker: [Ref]bool;
var slasher_DepositLocker: [Ref]Ref;
var depositorsProxy_DepositLocker: [Ref]Ref;
var releaseTimestamp_DepositLocker: [Ref]int;
var canWithdraw_DepositLocker: [Ref]Ref;
var numberOfDepositors_DepositLocker: [Ref]int;
var valuePerDepositor_DepositLocker: [Ref]int;
var time_DepositLocker: [Ref]int;
procedure {:inline 1} FallbackMethod_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation FallbackMethod_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 91} (true);
}

procedure {:public} {:inline 1} init_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _releaseTimestamp_s200: int, _slasher_s200: Ref, _depositorsProxy_s200: Ref, _time_s200: int);
implementation init_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _releaseTimestamp_s200: int, _slasher_s200: Ref, _depositorsProxy_s200: Ref, _time_s200: int)
{
var __var_3: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_releaseTimestamp"} boogie_si_record_sol2Bpl_int(_releaseTimestamp_s200);
call  {:cexpr "_slasher"} boogie_si_record_sol2Bpl_ref(_slasher_s200);
call  {:cexpr "_depositorsProxy"} boogie_si_record_sol2Bpl_ref(_depositorsProxy_s200);
call  {:cexpr "_time"} boogie_si_record_sol2Bpl_int(_time_s200);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 98} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 99} (true);
assume ((time_DepositLocker[this]) >= (0));
assume ((_time_s200) >= (0));
time_DepositLocker[this] := _time_s200;
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 100} (true);
assume (!(initialized_DepositLocker[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 101} (true);
assume ((_releaseTimestamp_s200) >= (0));
assume ((time_DepositLocker[this]) >= (0));
assume ((_releaseTimestamp_s200) > (time_DepositLocker[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 106} (true);
assume ((releaseTimestamp_DepositLocker[this]) >= (0));
assume ((_releaseTimestamp_s200) >= (0));
releaseTimestamp_DepositLocker[this] := _releaseTimestamp_s200;
call  {:cexpr "releaseTimestamp"} boogie_si_record_sol2Bpl_int(releaseTimestamp_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 107} (true);
slasher_DepositLocker[this] := _slasher_s200;
call  {:cexpr "slasher"} boogie_si_record_sol2Bpl_ref(slasher_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 108} (true);
depositorsProxy_DepositLocker[this] := _depositorsProxy_s200;
call  {:cexpr "depositorsProxy"} boogie_si_record_sol2Bpl_ref(depositorsProxy_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 109} (true);
initialized_DepositLocker[this] := true;
call  {:cexpr "initialized"} boogie_si_record_sol2Bpl_bool(initialized_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 110} (true);
__var_3 := null;
owner_Ownable[this] := __var_3;
call  {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_Ownable[this]);
}

procedure {:public} {:inline 1} registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s237: Ref);
implementation registerDepositor_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositor_s237: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_depositor"} boogie_si_record_sol2Bpl_ref(_depositor_s237);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
call isNotDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
call onlyDepositorsProxy_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 118} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 119} (true);
assume ((M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s237]) == (false));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 123} (true);
M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s237] := true;
call  {:cexpr "canWithdraw[_depositor]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[canWithdraw_DepositLocker[this]][_depositor_s237]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 124} (true);
assume ((numberOfDepositors_DepositLocker[this]) >= (0));
numberOfDepositors_DepositLocker[this] := (numberOfDepositors_DepositLocker[this]) + (1);
call  {:cexpr "numberOfDepositors"} boogie_si_record_sol2Bpl_int(numberOfDepositors_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 125} (true);
assume ((time_DepositLocker[this]) >= (0));
assume ((time_DepositLocker[this]) >= (0));
assume (((time_DepositLocker[this]) + (1)) >= (0));
time_DepositLocker[this] := (time_DepositLocker[this]) + (1);
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_DepositLocker[this]);
}

procedure {:public} {:inline 1} deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s294: int);
implementation deposit_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valuePerDepositor_s294: int)
{
var depositAmount_s293: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_valuePerDepositor"} boogie_si_record_sol2Bpl_int(_valuePerDepositor_s294);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
call isNotDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
call onlyDepositorsProxy_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 135} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 136} (true);
assume ((numberOfDepositors_DepositLocker[this]) >= (0));
assume ((numberOfDepositors_DepositLocker[this]) > (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 137} (true);
assume ((_valuePerDepositor_s294) >= (0));
assume ((_valuePerDepositor_s294) > (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 139} (true);
assume ((depositAmount_s293) >= (0));
assume ((numberOfDepositors_DepositLocker[this]) >= (0));
assume ((_valuePerDepositor_s294) >= (0));
assume (((numberOfDepositors_DepositLocker[this]) * (_valuePerDepositor_s294)) >= (0));
depositAmount_s293 := (numberOfDepositors_DepositLocker[this]) * (_valuePerDepositor_s294);
call  {:cexpr "depositAmount"} boogie_si_record_sol2Bpl_int(depositAmount_s293);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 140} (true);
assume ((_valuePerDepositor_s294) >= (0));
assume ((depositAmount_s293) >= (0));
assume (((depositAmount_s293) div (1)) >= (0));
assume ((_valuePerDepositor_s294) == ((depositAmount_s293) div (1)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 144} (true);
assume ((msgvalue_MSG) >= (0));
assume ((depositAmount_s293) >= (0));
assume ((msgvalue_MSG) == (depositAmount_s293));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 149} (true);
assume ((valuePerDepositor_DepositLocker[this]) >= (0));
assume ((_valuePerDepositor_s294) >= (0));
valuePerDepositor_DepositLocker[this] := _valuePerDepositor_s294;
call  {:cexpr "valuePerDepositor"} boogie_si_record_sol2Bpl_int(valuePerDepositor_DepositLocker[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 150} (true);
deposited_DepositLocker[this] := true;
call  {:cexpr "deposited"} boogie_si_record_sol2Bpl_bool(deposited_DepositLocker[this]);
}

procedure {:public} {:inline 1} withdraw_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdraw_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
call isDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 155} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 156} (true);
assume ((time_DepositLocker[this]) >= (0));
assume ((releaseTimestamp_DepositLocker[this]) >= (0));
assume ((time_DepositLocker[this]) >= (releaseTimestamp_DepositLocker[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 160} (true);
assume (M_Ref_bool[canWithdraw_DepositLocker[this]][msgsender_MSG]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 162} (true);
M_Ref_bool[canWithdraw_DepositLocker[this]][msgsender_MSG] := false;
call  {:cexpr "canWithdraw[msg.sender]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[canWithdraw_DepositLocker[this]][msgsender_MSG]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 163} (true);
assume ((time_DepositLocker[this]) >= (0));
assume ((time_DepositLocker[this]) >= (0));
assume (((time_DepositLocker[this]) + (1)) >= (0));
time_DepositLocker[this] := (time_DepositLocker[this]) + (1);
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_DepositLocker[this]);
}

procedure {:public} {:inline 1} slash_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s367: Ref);
implementation slash_DepositLocker(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _depositorToBeSlashed_s367: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_depositorToBeSlashed"} boogie_si_record_sol2Bpl_ref(_depositorToBeSlashed_s367);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call isInitialised_pre(this, msgsender_MSG, msgvalue_MSG);
call isDeposited_pre(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 172} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 173} (true);
assume ((msgsender_MSG) == (slasher_DepositLocker[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 177} (true);
assume (M_Ref_bool[canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s367]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 178} (true);
M_Ref_bool[canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s367] := false;
call  {:cexpr "canWithdraw[_depositorToBeSlashed]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[canWithdraw_DepositLocker[this]][_depositorToBeSlashed_s367]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 179} (true);
assume ((time_DepositLocker[this]) >= (0));
assume ((time_DepositLocker[this]) >= (0));
assume (((time_DepositLocker[this]) + (1)) >= (0));
time_DepositLocker[this] := (time_DepositLocker[this]) + (1);
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_DepositLocker[this]);
}

var auctionDurationInDays_ValidatorAuction: [Ref]int;
var startPrice_ValidatorAuction: [Ref]int;
var minimalNumberOfParticipants_ValidatorAuction: [Ref]int;
var maximalNumberOfParticipants_ValidatorAuction: [Ref]int;
var time_ValidatorAuction: [Ref]int;
var auctionState_ValidatorAuction: [Ref]int;
var depositLocker_ValidatorAuction: [Ref]Ref;
var whitelist_ValidatorAuction: [Ref]Ref;
var bids_ValidatorAuction: [Ref]Ref;
var bidders_ValidatorAuction: [Ref]Ref;
var biddersArray_ValidatorAuction: [Ref]Ref;
var count_ValidatorAuction: [Ref]int;
var auxArray_ValidatorAuction: [Ref]Ref;
var A_ValidatorAuction: [Ref]Ref;
var hasA_ValidatorAuction: [Ref]bool;
var startTime_ValidatorAuction: [Ref]int;
var closeTime_ValidatorAuction: [Ref]int;
var lowestSlotPrice_ValidatorAuction: [Ref]int;
procedure {:inline 1} ValidatorAuction_ValidatorAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s598: int, _auctionDurationInDays_s598: int, _minimalNumberOfParticipants_s598: int, _maximalNumberOfParticipants_s598: int, _depositLocker_s598: Ref, _time_s598: int, _A_s598: Ref, _lowestPrice_s598: int);
implementation ValidatorAuction_ValidatorAuction_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s598: int, _auctionDurationInDays_s598: int, _minimalNumberOfParticipants_s598: int, _maximalNumberOfParticipants_s598: int, _depositLocker_s598: Ref, _time_s598: int, _A_s598: Ref, _lowestPrice_s598: int)
{
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
auctionDurationInDays_ValidatorAuction[this] := 0;
startPrice_ValidatorAuction[this] := 0;
minimalNumberOfParticipants_ValidatorAuction[this] := 0;
maximalNumberOfParticipants_ValidatorAuction[this] := 0;
time_ValidatorAuction[this] := 0;
// Make array/mapping vars distinct for whitelist
call __var_4 := FreshRefGenerator();
whitelist_ValidatorAuction[this] := __var_4;
// Initialize Boolean mapping whitelist
assume (forall  __i__0_0:Ref ::  (!(M_Ref_bool[whitelist_ValidatorAuction[this]][__i__0_0])));
// Make array/mapping vars distinct for bids
call __var_5 := FreshRefGenerator();
bids_ValidatorAuction[this] := __var_5;
// Initialize Integer mapping bids
assume (forall  __i__0_0:Ref ::  ((M_Ref_int[bids_ValidatorAuction[this]][__i__0_0]) == (0)));
// Make array/mapping vars distinct for bidders
call __var_6 := FreshRefGenerator();
bidders_ValidatorAuction[this] := __var_6;
assume ((Length[bidders_ValidatorAuction[this]]) == (0));
// Make array/mapping vars distinct for biddersArray
call __var_7 := FreshRefGenerator();
biddersArray_ValidatorAuction[this] := __var_7;
assume ((Length[biddersArray_ValidatorAuction[this]]) == (0));
count_ValidatorAuction[this] := 0;
// Make array/mapping vars distinct for auxArray
call __var_8 := FreshRefGenerator();
auxArray_ValidatorAuction[this] := __var_8;
assume ((Length[auxArray_ValidatorAuction[this]]) == (0));
A_ValidatorAuction[this] := null;
hasA_ValidatorAuction[this] := false;
startTime_ValidatorAuction[this] := 0;
closeTime_ValidatorAuction[this] := 0;
lowestSlotPrice_ValidatorAuction[this] := 0;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_startPriceInWei"} boogie_si_record_sol2Bpl_int(_startPriceInWei_s598);
call  {:cexpr "_auctionDurationInDays"} boogie_si_record_sol2Bpl_int(_auctionDurationInDays_s598);
call  {:cexpr "_minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_minimalNumberOfParticipants_s598);
call  {:cexpr "_maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_maximalNumberOfParticipants_s598);
call  {:cexpr "_depositLocker"} boogie_si_record_sol2Bpl_ref(_depositLocker_s598);
call  {:cexpr "_time"} boogie_si_record_sol2Bpl_int(_time_s598);
call  {:cexpr "_A"} boogie_si_record_sol2Bpl_ref(_A_s598);
call  {:cexpr "_lowestPrice"} boogie_si_record_sol2Bpl_int(_lowestPrice_s598);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 258} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 259} (true);
assume ((_auctionDurationInDays_s598) >= (0));
assume ((_auctionDurationInDays_s598) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 263} (true);
assume ((_auctionDurationInDays_s598) >= (0));
assume ((_auctionDurationInDays_s598) < ((100) * (365)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 267} (true);
assume ((_minimalNumberOfParticipants_s598) >= (0));
assume ((_minimalNumberOfParticipants_s598) > (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 271} (true);
assume ((_maximalNumberOfParticipants_s598) >= (0));
assume ((_maximalNumberOfParticipants_s598) > (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 275} (true);
assume ((_minimalNumberOfParticipants_s598) >= (0));
assume ((_maximalNumberOfParticipants_s598) >= (0));
assume ((_minimalNumberOfParticipants_s598) <= (_maximalNumberOfParticipants_s598));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 279} (true);
assume ((_startPriceInWei_s598) >= (0));
assume ((_startPriceInWei_s598) < (10000000000000000000000000000000));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 285} (true);
assume ((startPrice_ValidatorAuction[this]) >= (0));
assume ((_startPriceInWei_s598) >= (0));
startPrice_ValidatorAuction[this] := _startPriceInWei_s598;
call  {:cexpr "startPrice"} boogie_si_record_sol2Bpl_int(startPrice_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 286} (true);
assume ((auctionDurationInDays_ValidatorAuction[this]) >= (0));
assume ((_auctionDurationInDays_s598) >= (0));
auctionDurationInDays_ValidatorAuction[this] := _auctionDurationInDays_s598;
call  {:cexpr "auctionDurationInDays"} boogie_si_record_sol2Bpl_int(auctionDurationInDays_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 287} (true);
assume ((maximalNumberOfParticipants_ValidatorAuction[this]) >= (0));
assume ((_maximalNumberOfParticipants_s598) >= (0));
maximalNumberOfParticipants_ValidatorAuction[this] := _maximalNumberOfParticipants_s598;
call  {:cexpr "maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(maximalNumberOfParticipants_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 288} (true);
assume ((minimalNumberOfParticipants_ValidatorAuction[this]) >= (0));
assume ((_minimalNumberOfParticipants_s598) >= (0));
minimalNumberOfParticipants_ValidatorAuction[this] := _minimalNumberOfParticipants_s598;
call  {:cexpr "minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(minimalNumberOfParticipants_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 289} (true);
depositLocker_ValidatorAuction[this] := _depositLocker_s598;
call  {:cexpr "depositLocker"} boogie_si_record_sol2Bpl_ref(depositLocker_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 291} (true);
assume ((lowestSlotPrice_ValidatorAuction[this]) >= (0));
assume ((_lowestPrice_s598) >= (0));
lowestSlotPrice_ValidatorAuction[this] := _lowestPrice_s598;
call  {:cexpr "lowestSlotPrice"} boogie_si_record_sol2Bpl_int(lowestSlotPrice_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 299} (true);
auctionState_ValidatorAuction[this] := 0;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 300} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((_time_s598) >= (0));
time_ValidatorAuction[this] := _time_s598;
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 301} (true);
A_ValidatorAuction[this] := _A_s598;
call  {:cexpr "A"} boogie_si_record_sol2Bpl_ref(A_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 302} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:constructor} {:public} {:inline 1} ValidatorAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s598: int, _auctionDurationInDays_s598: int, _minimalNumberOfParticipants_s598: int, _maximalNumberOfParticipants_s598: int, _depositLocker_s598: Ref, _time_s598: int, _A_s598: Ref, _lowestPrice_s598: int);
implementation ValidatorAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _startPriceInWei_s598: int, _auctionDurationInDays_s598: int, _minimalNumberOfParticipants_s598: int, _maximalNumberOfParticipants_s598: int, _depositLocker_s598: Ref, _time_s598: int, _A_s598: Ref, _lowestPrice_s598: int)
{
var __var_4: Ref;
var __var_5: Ref;
var __var_6: Ref;
var __var_7: Ref;
var __var_8: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_startPriceInWei"} boogie_si_record_sol2Bpl_int(_startPriceInWei_s598);
call  {:cexpr "_auctionDurationInDays"} boogie_si_record_sol2Bpl_int(_auctionDurationInDays_s598);
call  {:cexpr "_minimalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_minimalNumberOfParticipants_s598);
call  {:cexpr "_maximalNumberOfParticipants"} boogie_si_record_sol2Bpl_int(_maximalNumberOfParticipants_s598);
call  {:cexpr "_depositLocker"} boogie_si_record_sol2Bpl_ref(_depositLocker_s598);
call  {:cexpr "_time"} boogie_si_record_sol2Bpl_int(_time_s598);
call  {:cexpr "_A"} boogie_si_record_sol2Bpl_ref(_A_s598);
call  {:cexpr "_lowestPrice"} boogie_si_record_sol2Bpl_int(_lowestPrice_s598);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
call ValidatorAuction_ValidatorAuction_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s598, _auctionDurationInDays_s598, _minimalNumberOfParticipants_s598, _maximalNumberOfParticipants_s598, _depositLocker_s598, _time_s598, _A_s598, _lowestPrice_s598);
}

procedure {:inline 1} FallbackMethod_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation FallbackMethod_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 305} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 306} (true);
call bid_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation bid_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var slotPrice_s729: int;
var __var_9: bool;
var __var_10: int;
var __var_11: int;
var __var_12: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 309} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 310} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) > (startTime_ValidatorAuction[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 311} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((auctionDurationInDays_ValidatorAuction[this]) >= (0));
assume (((startTime_ValidatorAuction[this]) + (auctionDurationInDays_ValidatorAuction[this])) >= (0));
assume ((time_ValidatorAuction[this]) <= ((startTime_ValidatorAuction[this]) + (auctionDurationInDays_ValidatorAuction[this])));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 315} (true);
assume ((slotPrice_s729) >= (0));
slotPrice_s729 := 1;
call  {:cexpr "slotPrice"} boogie_si_record_sol2Bpl_int(slotPrice_s729);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 316} (true);
assume ((msgvalue_MSG) >= (0));
assume ((slotPrice_s729) >= (0));
assume ((msgvalue_MSG) >= (slotPrice_s729));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 321} (true);
call __var_9 := isSenderContract_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
assume (!(__var_9));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 322} (true);
assume ((Length[bidders_ValidatorAuction[this]]) >= (0));
assume ((maximalNumberOfParticipants_ValidatorAuction[this]) >= (0));
assume ((Length[bidders_ValidatorAuction[this]]) < (maximalNumberOfParticipants_ValidatorAuction[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 326} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) == (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 328} (true);
assume ((slotPrice_s729) >= (0));
assume ((lowestSlotPrice_ValidatorAuction[this]) >= (0));
if ((slotPrice_s729) < (lowestSlotPrice_ValidatorAuction[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 328} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 329} (true);
assume ((lowestSlotPrice_ValidatorAuction[this]) >= (0));
assume ((slotPrice_s729) >= (0));
lowestSlotPrice_ValidatorAuction[this] := slotPrice_s729;
call  {:cexpr "lowestSlotPrice"} boogie_si_record_sol2Bpl_int(lowestSlotPrice_ValidatorAuction[this]);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 331} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((msgvalue_MSG) >= (0));
M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := msgvalue_MSG;
call  {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 332} (true);
__var_10 := Length[bidders_ValidatorAuction[this]];
M_int_Ref[bidders_ValidatorAuction[this]][__var_10] := msgsender_MSG;
Length[bidders_ValidatorAuction[this]] := (__var_10) + (1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 333} (true);
__var_11 := Length[biddersArray_ValidatorAuction[this]];
M_int_Ref[biddersArray_ValidatorAuction[this]][__var_11] := msgsender_MSG;
Length[biddersArray_ValidatorAuction[this]] := (__var_11) + (1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 335} (true);
call registerDepositor_DepositLocker(depositLocker_ValidatorAuction[this], this, __var_12, msgsender_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 338} (true);
assume ((Length[bidders_ValidatorAuction[this]]) >= (0));
assume ((maximalNumberOfParticipants_ValidatorAuction[this]) >= (0));
if ((Length[bidders_ValidatorAuction[this]]) == (maximalNumberOfParticipants_ValidatorAuction[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 338} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 339} (true);
call transitionToDepositPending_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 342} (true);
if ((msgsender_MSG) == (A_ValidatorAuction[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 342} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 343} (true);
hasA_ValidatorAuction[this] := true;
call  {:cexpr "hasA"} boogie_si_record_sol2Bpl_bool(hasA_ValidatorAuction[this]);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 346} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation startAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_13: bool;
var __var_14: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 0);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 349} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 350} (true);
assume ((DType[depositLocker_ValidatorAuction[this]]) == (DepositLocker));
__var_13 := initialized_DepositLocker[depositLocker_ValidatorAuction[this]];
assume (__var_13);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 355} (true);
auctionState_ValidatorAuction[this] := 1;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 356} (true);
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) >= (0));
startTime_ValidatorAuction[this] := time_ValidatorAuction[this];
call  {:cexpr "startTime"} boogie_si_record_sol2Bpl_int(startTime_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 357} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation depositBids_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 2);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 361} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 362} (true);
auctionState_ValidatorAuction[this] := 3;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 366} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation closeAuction_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 370} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 371} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((auctionDurationInDays_ValidatorAuction[this]) >= (0));
assume (((startTime_ValidatorAuction[this]) + (auctionDurationInDays_ValidatorAuction[this])) >= (0));
assume ((time_ValidatorAuction[this]) > ((startTime_ValidatorAuction[this]) + (auctionDurationInDays_ValidatorAuction[this])));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 375} (true);
assume ((Length[bidders_ValidatorAuction[this]]) >= (0));
assume ((maximalNumberOfParticipants_ValidatorAuction[this]) >= (0));
assume ((Length[bidders_ValidatorAuction[this]]) < (maximalNumberOfParticipants_ValidatorAuction[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 377} (true);
assume ((Length[bidders_ValidatorAuction[this]]) >= (0));
assume ((minimalNumberOfParticipants_ValidatorAuction[this]) >= (0));
if ((Length[bidders_ValidatorAuction[this]]) >= (minimalNumberOfParticipants_ValidatorAuction[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 377} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 378} (true);
call transitionToDepositPending_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 379} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 380} (true);
call transitionToAuctionFailed_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 382} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref);
implementation addToWhitelist_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, addressesToWhitelist_s852: Ref)
{
var i_s847: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 0);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 389} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 390} (true);
assume ((i_s847) >= (0));
assume ((Length[addressesToWhitelist_s852]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 390} (true);
assume ((i_s847) >= (0));
i_s847 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s847);
while ((i_s847) < (Length[addressesToWhitelist_s852]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 390} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 391} (true);
assume ((i_s847) >= (0));
M_Ref_bool[whitelist_ValidatorAuction[this]][M_int_Ref[addressesToWhitelist_s852][i_s847]] := true;
call  {:cexpr "whitelist[addressesToWhitelist[i]]"} boogie_si_record_sol2Bpl_bool(M_Ref_bool[whitelist_ValidatorAuction[this]][M_int_Ref[addressesToWhitelist_s852][i_s847]]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 390} (true);
assume ((i_s847) >= (0));
i_s847 := (i_s847) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s847);
assume ((i_s847) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 395} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} withdrawA_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdrawA_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_15: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 398} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 399} (true);
assume ((((auctionState_ValidatorAuction[this]) == (3)) || ((auctionState_ValidatorAuction[this]) == (4))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 405} (true);
assume ((Length[biddersArray_ValidatorAuction[this]]) >= (0));
assume ((((Length[biddersArray_ValidatorAuction[this]]) > (0)) && (hasA_ValidatorAuction[this])) && ((msgsender_MSG) == (A_ValidatorAuction[this])));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 407} (true);
if ((auctionState_ValidatorAuction[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 407} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 408} (true);
call withdrawAfterAuctionEnded_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 409} (true);
if ((auctionState_ValidatorAuction[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 409} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 410} (true);
call withdrawAfterAuctionFailed_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 411} (true);
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 414} (true);
hasA_ValidatorAuction[this] := false;
call  {:cexpr "hasA"} boogie_si_record_sol2Bpl_bool(hasA_ValidatorAuction[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 415} (true);
call __var_15 := remove_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, biddersArray_ValidatorAuction[this]);
biddersArray_ValidatorAuction[this] := __var_15;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 416} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} withdrawNoA_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdrawNoA_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_16: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 419} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 420} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((((((auctionState_ValidatorAuction[this]) == (3)) || ((auctionState_ValidatorAuction[this]) == (4)))) && ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) > (0))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 425} (true);
assume ((Length[biddersArray_ValidatorAuction[this]]) >= (0));
assume ((Length[biddersArray_ValidatorAuction[this]]) >= (0));
assume ((((Length[biddersArray_ValidatorAuction[this]]) > (0)) && (((!(hasA_ValidatorAuction[this])) || ((Length[biddersArray_ValidatorAuction[this]]) > (1))))) && ((msgsender_MSG) != (A_ValidatorAuction[this])));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 427} (true);
if ((auctionState_ValidatorAuction[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 427} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 428} (true);
call withdrawAfterAuctionEnded_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 429} (true);
if ((auctionState_ValidatorAuction[this]) == (4)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 429} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 430} (true);
call withdrawAfterAuctionFailed_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 431} (true);
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 434} (true);
call __var_16 := remove_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, msgsender_MSG, biddersArray_ValidatorAuction[this]);
biddersArray_ValidatorAuction[this] := __var_16;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 435} (true);
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}

procedure {:public} {:inline 1} currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int);
implementation currentPrice_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (__ret_0_: int)
{
var secondsSinceStart_s1022: int;
var __var_17: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 443} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 444} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) >= (startTime_ValidatorAuction[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 445} (true);
assume ((secondsSinceStart_s1022) >= (0));
assume ((time_ValidatorAuction[this]) >= (0));
assume ((startTime_ValidatorAuction[this]) >= (0));
assume ((((time_ValidatorAuction[this]) - (startTime_ValidatorAuction[this]))) >= (0));
secondsSinceStart_s1022 := ((time_ValidatorAuction[this]) - (startTime_ValidatorAuction[this]));
call  {:cexpr "secondsSinceStart"} boogie_si_record_sol2Bpl_int(secondsSinceStart_s1022);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 446} (true);
assume ((__var_17) >= (0));
assume ((secondsSinceStart_s1022) >= (0));
call __var_17 := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s1022);
assume ((__var_17) >= (0));
__ret_0_ := __var_17;
return;
}

procedure {:public} {:inline 1} priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s1079: int) returns (__ret_0_: int);
implementation priceAtElapsedTime_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, secondsSinceStart_s1079: int) returns (__ret_0_: int)
{
var msSinceStart_s1078: int;
var relativeAuctionTime_s1078: int;
var decayDivisor_s1078: int;
var decay_s1078: int;
var price_s1078: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "secondsSinceStart"} boogie_si_record_sol2Bpl_int(secondsSinceStart_s1079);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 453} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 455} (true);
assume ((secondsSinceStart_s1079) >= (0));
assume ((secondsSinceStart_s1079) < ((100) * (365)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 459} (true);
assume ((msSinceStart_s1078) >= (0));
assume ((secondsSinceStart_s1079) >= (0));
assume (((1000) * (secondsSinceStart_s1079)) >= (0));
msSinceStart_s1078 := (1000) * (secondsSinceStart_s1079);
call  {:cexpr "msSinceStart"} boogie_si_record_sol2Bpl_int(msSinceStart_s1078);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 460} (true);
assume ((relativeAuctionTime_s1078) >= (0));
assume ((msSinceStart_s1078) >= (0));
assume (((msSinceStart_s1078) div (1)) >= (0));
relativeAuctionTime_s1078 := (msSinceStart_s1078) div (1);
call  {:cexpr "relativeAuctionTime"} boogie_si_record_sol2Bpl_int(relativeAuctionTime_s1078);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 461} (true);
assume ((decayDivisor_s1078) >= (0));
decayDivisor_s1078 := 1;
call  {:cexpr "decayDivisor"} boogie_si_record_sol2Bpl_int(decayDivisor_s1078);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 462} (true);
assume ((decay_s1078) >= (0));
assume ((relativeAuctionTime_s1078) >= (0));
assume ((relativeAuctionTime_s1078) >= (0));
assume (((relativeAuctionTime_s1078) * (relativeAuctionTime_s1078)) >= (0));
assume ((relativeAuctionTime_s1078) >= (0));
assume ((((relativeAuctionTime_s1078) * (relativeAuctionTime_s1078)) * (relativeAuctionTime_s1078)) >= (0));
assume ((decayDivisor_s1078) >= (0));
assume (((((relativeAuctionTime_s1078) * (relativeAuctionTime_s1078)) * (relativeAuctionTime_s1078)) div (decayDivisor_s1078)) >= (0));
decay_s1078 := (((relativeAuctionTime_s1078) * (relativeAuctionTime_s1078)) * (relativeAuctionTime_s1078)) div (decayDivisor_s1078);
call  {:cexpr "decay"} boogie_si_record_sol2Bpl_int(decay_s1078);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 463} (true);
assume ((price_s1078) >= (0));
assume ((startPrice_ValidatorAuction[this]) >= (0));
assume ((relativeAuctionTime_s1078) >= (0));
assume ((((1) + (relativeAuctionTime_s1078))) >= (0));
assume (((startPrice_ValidatorAuction[this]) * (((1) + (relativeAuctionTime_s1078)))) >= (0));
assume ((((startPrice_ValidatorAuction[this]) * (((1) + (relativeAuctionTime_s1078)))) div (1)) >= (0));
price_s1078 := ((startPrice_ValidatorAuction[this]) * (((1) + (relativeAuctionTime_s1078)))) div (1);
call  {:cexpr "price"} boogie_si_record_sol2Bpl_int(price_s1078);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 465} (true);
assume ((price_s1078) >= (0));
__ret_0_ := price_s1078;
return;
}

procedure {:inline 1} withdrawAfterAuctionEnded_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdrawAfterAuctionEnded_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var valueToWithdraw_s1102: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 3);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 468} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 474} (true);
assume ((valueToWithdraw_s1102) >= (0));
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((lowestSlotPrice_ValidatorAuction[this]) >= (0));
assume (((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) - (lowestSlotPrice_ValidatorAuction[this])) >= (0));
valueToWithdraw_s1102 := (M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) - (lowestSlotPrice_ValidatorAuction[this]);
call  {:cexpr "valueToWithdraw"} boogie_si_record_sol2Bpl_int(valueToWithdraw_s1102);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 477} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((lowestSlotPrice_ValidatorAuction[this]) >= (0));
M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := lowestSlotPrice_ValidatorAuction[this];
call  {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
}

procedure {:inline 1} withdrawAfterAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation withdrawAfterAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var valueToWithdraw_s1134: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 4);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 488} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 489} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) > (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 491} (true);
assume ((valueToWithdraw_s1134) >= (0));
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
valueToWithdraw_s1134 := M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG];
call  {:cexpr "valueToWithdraw"} boogie_si_record_sol2Bpl_int(valueToWithdraw_s1134);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 493} (true);
assume ((M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]) >= (0));
M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG] := 0;
call  {:cexpr "bids[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[bids_ValidatorAuction[this]][msgsender_MSG]);
}

procedure {:inline 1} transitionToDepositPending_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation transitionToDepositPending_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 500} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 501} (true);
auctionState_ValidatorAuction[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 502} (true);
assume ((closeTime_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) >= (0));
closeTime_ValidatorAuction[this] := time_ValidatorAuction[this];
call  {:cexpr "closeTime"} boogie_si_record_sol2Bpl_int(closeTime_ValidatorAuction[this]);
}

procedure {:inline 1} remove_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valueToFindAndRemove_s1201: Ref, _array_s1201: Ref) returns (__ret_0_: Ref);
implementation remove_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _valueToFindAndRemove_s1201: Ref, _array_s1201: Ref) returns (__ret_0_: Ref)
{
var __var_18: Ref;
var __var_19: Ref;
var i_s1197: int;
var __var_20: int;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_valueToFindAndRemove"} boogie_si_record_sol2Bpl_ref(_valueToFindAndRemove_s1201);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 506} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 508} (true);
call __var_19 := FreshRefGenerator();
Length[__var_19] := 0;
__var_18 := __var_19;
auxArray_ValidatorAuction[this] := __var_18;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 510} (true);
assume ((i_s1197) >= (0));
assume ((Length[_array_s1201]) >= (0));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 510} (true);
assume ((i_s1197) >= (0));
i_s1197 := 0;
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s1197);
while ((i_s1197) < (Length[_array_s1201]))
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 510} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 511} (true);
assume ((i_s1197) >= (0));
if ((M_int_Ref[_array_s1201][i_s1197]) != (_valueToFindAndRemove_s1201)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 512} (true);
assume ((i_s1197) >= (0));
__var_20 := Length[auxArray_ValidatorAuction[this]];
M_int_Ref[auxArray_ValidatorAuction[this]][__var_20] := M_int_Ref[_array_s1201][i_s1197];
Length[auxArray_ValidatorAuction[this]] := (__var_20) + (1);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 510} (true);
assume ((i_s1197) >= (0));
i_s1197 := (i_s1197) + (1);
call  {:cexpr "i"} boogie_si_record_sol2Bpl_int(i_s1197);
assume ((i_s1197) >= (0));
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 515} (true);
__ret_0_ := auxArray_ValidatorAuction[this];
return;
}

procedure {:inline 1} transitionToAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation transitionToAuctionFailed_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call stateIs_pre(this, msgsender_MSG, msgvalue_MSG, 1);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 521} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 522} (true);
auctionState_ValidatorAuction[this] := 4;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 523} (true);
assume ((closeTime_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) >= (0));
closeTime_ValidatorAuction[this] := time_ValidatorAuction[this];
call  {:cexpr "closeTime"} boogie_si_record_sol2Bpl_int(closeTime_ValidatorAuction[this]);
}

procedure {:inline 1} isSenderContract_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (isContract_s1238: bool);
implementation isSenderContract_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (isContract_s1238: bool)
{
var size_s1237: int;
var sender_s1237: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 527} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 528} (true);
assume ((size_s1237) >= (0));
size_s1237 := 0;
call  {:cexpr "size"} boogie_si_record_sol2Bpl_int(size_s1237);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 529} (true);
sender_s1237 := msgsender_MSG;
call  {:cexpr "sender"} boogie_si_record_sol2Bpl_ref(sender_s1237);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 534} (true);
assume ((size_s1237) >= (0));
isContract_s1238 := (size_s1237) > (0);
return;
}

procedure {:public} {:inline 1} t_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation t_ValidatorAuction(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 537} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 538} (true);
assume ((time_ValidatorAuction[this]) >= (0));
assume ((time_ValidatorAuction[this]) >= (0));
assume (((time_ValidatorAuction[this]) + (1)) >= (0));
time_ValidatorAuction[this] := (time_ValidatorAuction[this]) + (1);
call  {:cexpr "time"} boogie_si_record_sol2Bpl_int(time_ValidatorAuction[this]);
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (ValidatorAuction)) {
call FallbackMethod_ValidatorAuction(to, from, amount);
} else if ((DType[to]) == (DepositLocker)) {
call FallbackMethod_DepositLocker(to, from, amount);
} else if ((DType[to]) == (DepositLockerInterface)) {
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

const {:existential true} HoudiniB1_Ownable: bool;
const {:existential true} HoudiniB2_Ownable: bool;
procedure BoogieEntry_Ownable();
implementation BoogieEntry_Ownable()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((((DType[this]) == (Ownable)) || ((DType[this]) == (DepositLocker))) || ((DType[this]) == (ValidatorAuction)));
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
while (true)
  invariant (HoudiniB1_Ownable) ==> ((owner_Ownable[this]) == (null));
  invariant (HoudiniB2_Ownable) ==> ((owner_Ownable[this]) != (null));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
}
}
}

procedure BoogieEntry_DepositLockerInterface();
implementation BoogieEntry_DepositLockerInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _depositorToBeSlashed_s49: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume (((DType[this]) == (DepositLockerInterface)) || ((DType[this]) == (DepositLocker)));
call DepositLockerInterface_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _depositorToBeSlashed_s49;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call slash_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s49);
}
}
}

const {:existential true} HoudiniB1_DepositLocker: bool;
const {:existential true} HoudiniB2_DepositLocker: bool;
const {:existential true} HoudiniB3_DepositLocker: bool;
const {:existential true} HoudiniB4_DepositLocker: bool;
const {:existential true} HoudiniB5_DepositLocker: bool;
const {:existential true} HoudiniB6_DepositLocker: bool;
const {:existential true} HoudiniB7_DepositLocker: bool;
const {:existential true} HoudiniB8_DepositLocker: bool;
const {:existential true} HoudiniB9_DepositLocker: bool;
const {:existential true} HoudiniB10_DepositLocker: bool;
const {:existential true} HoudiniB11_DepositLocker: bool;
const {:existential true} HoudiniB12_DepositLocker: bool;
procedure BoogieEntry_DepositLocker();
implementation BoogieEntry_DepositLocker()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var _depositorToBeSlashed_s367: Ref;
var _releaseTimestamp_s200: int;
var _slasher_s200: Ref;
var _depositorsProxy_s200: Ref;
var _time_s200: int;
var _depositor_s237: Ref;
var _valuePerDepositor_s294: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (DepositLocker));
call DepositLocker_DepositLocker(this, msgsender_MSG, msgvalue_MSG);
while (true)
  invariant (HoudiniB1_DepositLocker) ==> ((owner_Ownable[this]) == (null));
  invariant (HoudiniB2_DepositLocker) ==> ((owner_Ownable[this]) != (null));
  invariant (HoudiniB3_DepositLocker) ==> ((slasher_DepositLocker[this]) == (null));
  invariant (HoudiniB4_DepositLocker) ==> ((slasher_DepositLocker[this]) != (null));
  invariant (HoudiniB5_DepositLocker) ==> ((depositorsProxy_DepositLocker[this]) == (null));
  invariant (HoudiniB6_DepositLocker) ==> ((depositorsProxy_DepositLocker[this]) != (null));
  invariant (HoudiniB7_DepositLocker) ==> ((owner_Ownable[this]) == (slasher_DepositLocker[this]));
  invariant (HoudiniB8_DepositLocker) ==> ((owner_Ownable[this]) != (slasher_DepositLocker[this]));
  invariant (HoudiniB9_DepositLocker) ==> ((owner_Ownable[this]) == (depositorsProxy_DepositLocker[this]));
  invariant (HoudiniB10_DepositLocker) ==> ((owner_Ownable[this]) != (depositorsProxy_DepositLocker[this]));
  invariant (HoudiniB11_DepositLocker) ==> ((slasher_DepositLocker[this]) == (depositorsProxy_DepositLocker[this]));
  invariant (HoudiniB12_DepositLocker) ==> ((slasher_DepositLocker[this]) != (depositorsProxy_DepositLocker[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc _depositorToBeSlashed_s367;
havoc _releaseTimestamp_s200;
havoc _slasher_s200;
havoc _depositorsProxy_s200;
havoc _time_s200;
havoc _depositor_s237;
havoc _valuePerDepositor_s294;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
} else if ((choice) == (5)) {
call slash_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s367);
} else if ((choice) == (4)) {
call init_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _releaseTimestamp_s200, _slasher_s200, _depositorsProxy_s200, _time_s200);
} else if ((choice) == (3)) {
call registerDepositor_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositor_s237);
} else if ((choice) == (2)) {
call deposit_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _valuePerDepositor_s294);
} else if ((choice) == (1)) {
call withdraw_DepositLocker(this, msgsender_MSG, msgvalue_MSG);
}
}
}

const {:existential true} HoudiniB1_ValidatorAuction: bool;
const {:existential true} HoudiniB2_ValidatorAuction: bool;
const {:existential true} HoudiniB3_ValidatorAuction: bool;
const {:existential true} HoudiniB4_ValidatorAuction: bool;
const {:existential true} HoudiniB5_ValidatorAuction: bool;
const {:existential true} HoudiniB6_ValidatorAuction: bool;
procedure BoogieEntry_ValidatorAuction();
implementation BoogieEntry_ValidatorAuction()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var _startPriceInWei_s598: int;
var _auctionDurationInDays_s598: int;
var _minimalNumberOfParticipants_s598: int;
var _maximalNumberOfParticipants_s598: int;
var _depositLocker_s598: Ref;
var _time_s598: int;
var _A_s598: Ref;
var _lowestPrice_s598: int;
var addressesToWhitelist_s852: Ref;
var __ret_0_currentPrice: int;
var secondsSinceStart_s1079: int;
var __ret_0_priceAtElapsedTime: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (ValidatorAuction));
call ValidatorAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s598, _auctionDurationInDays_s598, _minimalNumberOfParticipants_s598, _maximalNumberOfParticipants_s598, _depositLocker_s598, _time_s598, _A_s598, _lowestPrice_s598);
while (true)
  invariant (HoudiniB1_ValidatorAuction) ==> ((owner_Ownable[this]) == (null));
  invariant (HoudiniB2_ValidatorAuction) ==> ((owner_Ownable[this]) != (null));
  invariant (HoudiniB3_ValidatorAuction) ==> ((A_ValidatorAuction[this]) == (null));
  invariant (HoudiniB4_ValidatorAuction) ==> ((A_ValidatorAuction[this]) != (null));
  invariant (HoudiniB5_ValidatorAuction) ==> ((owner_Ownable[this]) == (A_ValidatorAuction[this]));
  invariant (HoudiniB6_ValidatorAuction) ==> ((owner_Ownable[this]) != (A_ValidatorAuction[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc _startPriceInWei_s598;
havoc _auctionDurationInDays_s598;
havoc _minimalNumberOfParticipants_s598;
havoc _maximalNumberOfParticipants_s598;
havoc _depositLocker_s598;
havoc _time_s598;
havoc _A_s598;
havoc _lowestPrice_s598;
havoc addressesToWhitelist_s852;
havoc __ret_0_currentPrice;
havoc secondsSinceStart_s1079;
havoc __ret_0_priceAtElapsedTime;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
} else if ((choice) == (10)) {
call bid_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call startAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
call depositBids_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
call closeAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call addressesToWhitelist_s852 := FreshRefGenerator();
call addToWhitelist_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s852);
} else if ((choice) == (5)) {
call withdrawA_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call withdrawNoA_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call __ret_0_currentPrice := currentPrice_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_priceAtElapsedTime := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s1079);
} else if ((choice) == (1)) {
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure {:inline 1} onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 17} (true);
assume ((msgsender_MSG) == (owner_Ownable[this]));
}

procedure {:inline 1} isInitialised_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation isInitialised_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 69} (true);
assume (initialized_DepositLocker[this]);
}

procedure {:inline 1} isDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation isDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 74} (true);
assume (deposited_DepositLocker[this]);
}

procedure {:inline 1} isNotDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation isNotDeposited_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 79} (true);
assume (!(deposited_DepositLocker[this]));
}

procedure {:inline 1} onlyDepositorsProxy_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation onlyDepositorsProxy_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 84} (true);
assume ((msgsender_MSG) == (depositorsProxy_DepositLocker[this]));
}

procedure {:inline 1} stateIs_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s494: int);
implementation stateIs_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, state_s494: int)
{
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/ValidatorAuction.sol"} {:sourceLine 242} (true);
assume ((auctionState_ValidatorAuction[this]) == (state_s494));
}

procedure CorralChoice_Ownable(this: Ref);
implementation CorralChoice_Ownable(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
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
assume ((((DType[this]) == (Ownable)) || ((DType[this]) == (DepositLocker))) || ((DType[this]) == (ValidatorAuction)));
call Ownable_Ownable(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_Ownable(this);
}
}

procedure CorralChoice_DepositLockerInterface(this: Ref);
implementation CorralChoice_DepositLockerInterface(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var _depositorToBeSlashed_s49: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc _depositorToBeSlashed_s49;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (1)) {
call slash_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s49);
}
}

procedure CorralEntry_DepositLockerInterface();
implementation CorralEntry_DepositLockerInterface()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume (((DType[this]) == (DepositLockerInterface)) || ((DType[this]) == (DepositLocker)));
call DepositLockerInterface_DepositLockerInterface(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_DepositLockerInterface(this);
}
}

procedure CorralChoice_DepositLocker(this: Ref);
implementation CorralChoice_DepositLocker(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var _depositorToBeSlashed_s367: Ref;
var _releaseTimestamp_s200: int;
var _slasher_s200: Ref;
var _depositorsProxy_s200: Ref;
var _time_s200: int;
var _depositor_s237: Ref;
var _valuePerDepositor_s294: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc _depositorToBeSlashed_s367;
havoc _releaseTimestamp_s200;
havoc _slasher_s200;
havoc _depositorsProxy_s200;
havoc _time_s200;
havoc _depositor_s237;
havoc _valuePerDepositor_s294;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (6)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
} else if ((choice) == (5)) {
call slash_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositorToBeSlashed_s367);
} else if ((choice) == (4)) {
call init_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _releaseTimestamp_s200, _slasher_s200, _depositorsProxy_s200, _time_s200);
} else if ((choice) == (3)) {
call registerDepositor_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _depositor_s237);
} else if ((choice) == (2)) {
call deposit_DepositLocker(this, msgsender_MSG, msgvalue_MSG, _valuePerDepositor_s294);
} else if ((choice) == (1)) {
call withdraw_DepositLocker(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_DepositLocker();
implementation CorralEntry_DepositLocker()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (DepositLocker));
call DepositLocker_DepositLocker(this, msgsender_MSG, msgvalue_MSG);
while (true)
{
call CorralChoice_DepositLocker(this);
}
}

procedure CorralChoice_ValidatorAuction(this: Ref);
implementation CorralChoice_ValidatorAuction(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newOwner_s43: Ref;
var _startPriceInWei_s598: int;
var _auctionDurationInDays_s598: int;
var _minimalNumberOfParticipants_s598: int;
var _maximalNumberOfParticipants_s598: int;
var _depositLocker_s598: Ref;
var _time_s598: int;
var _A_s598: Ref;
var _lowestPrice_s598: int;
var addressesToWhitelist_s852: Ref;
var __ret_0_currentPrice: int;
var secondsSinceStart_s1079: int;
var __ret_0_priceAtElapsedTime: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newOwner_s43;
havoc _startPriceInWei_s598;
havoc _auctionDurationInDays_s598;
havoc _minimalNumberOfParticipants_s598;
havoc _maximalNumberOfParticipants_s598;
havoc _depositLocker_s598;
havoc _time_s598;
havoc _A_s598;
havoc _lowestPrice_s598;
havoc addressesToWhitelist_s852;
havoc __ret_0_currentPrice;
havoc secondsSinceStart_s1079;
havoc __ret_0_priceAtElapsedTime;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (Ownable));
assume ((DType[msgsender_MSG]) != (DepositLockerInterface));
assume ((DType[msgsender_MSG]) != (DepositLocker));
assume ((DType[msgsender_MSG]) != (ValidatorAuction));
Alloc[msgsender_MSG] := true;
if ((choice) == (11)) {
call transferOwnership_Ownable(this, msgsender_MSG, msgvalue_MSG, newOwner_s43);
} else if ((choice) == (10)) {
call bid_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (9)) {
call startAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (8)) {
call depositBids_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (7)) {
call closeAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (6)) {
call addressesToWhitelist_s852 := FreshRefGenerator();
call addToWhitelist_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, addressesToWhitelist_s852);
} else if ((choice) == (5)) {
call withdrawA_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (4)) {
call withdrawNoA_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (3)) {
call __ret_0_currentPrice := currentPrice_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
} else if ((choice) == (2)) {
call __ret_0_priceAtElapsedTime := priceAtElapsedTime_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, secondsSinceStart_s1079);
} else if ((choice) == (1)) {
call t_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_ValidatorAuction();
implementation CorralEntry_ValidatorAuction()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var _startPriceInWei_s598: int;
var _auctionDurationInDays_s598: int;
var _minimalNumberOfParticipants_s598: int;
var _maximalNumberOfParticipants_s598: int;
var _depositLocker_s598: Ref;
var _time_s598: int;
var _A_s598: Ref;
var _lowestPrice_s598: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (ValidatorAuction));
call ValidatorAuction_ValidatorAuction(this, msgsender_MSG, msgvalue_MSG, _startPriceInWei_s598, _auctionDurationInDays_s598, _minimalNumberOfParticipants_s598, _maximalNumberOfParticipants_s598, _depositLocker_s598, _time_s598, _A_s598, _lowestPrice_s598);
while (true)
{
call CorralChoice_ValidatorAuction(this);
}
}


