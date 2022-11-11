type Ref;
type ContractName;
const unique null: Ref;
const unique BasicProvenance: ContractName;
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
procedure {:public} {:inline 1} vc0x0x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s48: Ref);
procedure {:public} {:inline 1} vc0x0x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s94: Ref);
procedure {:public} {:inline 1} vc0x1x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s137: Ref);
procedure {:public} {:inline 1} vc0x1x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s179: Ref);
procedure {:public} {:inline 1} vc0x2x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s226: Ref);
procedure {:public} {:inline 1} vc0x2x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s272: Ref);
implementation vc0x2x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s272: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s272);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 40} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 41} (true);
assume (((State_BasicProvenance[this]) != (2)) && ((State_BasicProvenance[this]) != (2)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 42} (true);
assume ((SupplyChainOwner_BasicProvenance[this]) == (msgsender_MSG));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 43} (true);
call Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 44} (true);
assert (!(((!(((State_BasicProvenance[this]) != (2)))) && (!(((State_BasicProvenance[this]) != (2)))))));
}

procedure {:public} {:inline 1} vc0x3x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s315: Ref);
procedure {:public} {:inline 1} vc0x3x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s357: Ref);
procedure {:public} {:inline 1} vc0x4x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s404: Ref);
procedure {:public} {:inline 1} vc0x4x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s450: Ref);
procedure {:public} {:inline 1} vc0x5x0_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s493: Ref);
procedure {:public} {:inline 1} vc0x5x1_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s535: Ref);
var State_BasicProvenance: [Ref]int;
var InitiatingCounterparty_BasicProvenance: [Ref]Ref;
var Counterparty_BasicProvenance: [Ref]Ref;
var PreviousCounterparty_BasicProvenance: [Ref]Ref;
var SupplyChainOwner_BasicProvenance: [Ref]Ref;
var SupplyChainObserver_BasicProvenance: [Ref]Ref;
procedure {:inline 1} BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref);
implementation BasicProvenance_BasicProvenance_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
InitiatingCounterparty_BasicProvenance[this] := null;
Counterparty_BasicProvenance[this] := null;
PreviousCounterparty_BasicProvenance[this] := null;
SupplyChainOwner_BasicProvenance[this] := null;
SupplyChainObserver_BasicProvenance[this] := null;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s581);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s581);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 102} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 102} (true);
InitiatingCounterparty_BasicProvenance[this] := msgsender_MSG;
call  {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 103} (true);
Counterparty_BasicProvenance[this] := InitiatingCounterparty_BasicProvenance[this];
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 104} (true);
SupplyChainOwner_BasicProvenance[this] := supplyChainOwner_s581;
call  {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 105} (true);
SupplyChainObserver_BasicProvenance[this] := supplyChainObserver_s581;
call  {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 106} (true);
State_BasicProvenance[this] := 0;
}

procedure {:constructor} {:public} {:inline 1} BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref);
implementation BasicProvenance_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, supplyChainOwner_s581: Ref, supplyChainObserver_s581: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s581);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s581);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call BasicProvenance_BasicProvenance_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s581, supplyChainObserver_s581);
}

procedure {:public} {:inline 1} TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s620: Ref);
implementation TransferResponsibility_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s620: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s620);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 111} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 111} (true);
if (((Counterparty_BasicProvenance[this]) != (msgsender_MSG)) || ((State_BasicProvenance[this]) == (2))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 113} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 114} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 116} (true);
if ((State_BasicProvenance[this]) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 118} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 118} (true);
State_BasicProvenance[this] := 1;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 121} (true);
PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 122} (true);
Counterparty_BasicProvenance[this] := newCounterparty_s620;
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
}

procedure {:public} {:inline 1} Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Complete_BasicProvenance(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 127} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 127} (true);
if (((SupplyChainOwner_BasicProvenance[this]) != (msgsender_MSG)) || ((State_BasicProvenance[this]) == (2))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 129} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 130} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 132} (true);
State_BasicProvenance[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 133} (true);
PreviousCounterparty_BasicProvenance[this] := Counterparty_BasicProvenance[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_BasicProvenance[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder5/CombinationsTemp5.sol"} {:sourceLine 134} (true);
__var_1 := null;
Counterparty_BasicProvenance[this] := __var_1;
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_BasicProvenance[this]);
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (BasicProvenance)) {
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

const {:existential true} HoudiniB1_BasicProvenance: bool;
const {:existential true} HoudiniB2_BasicProvenance: bool;
const {:existential true} HoudiniB3_BasicProvenance: bool;
const {:existential true} HoudiniB4_BasicProvenance: bool;
const {:existential true} HoudiniB5_BasicProvenance: bool;
const {:existential true} HoudiniB6_BasicProvenance: bool;
const {:existential true} HoudiniB7_BasicProvenance: bool;
const {:existential true} HoudiniB8_BasicProvenance: bool;
const {:existential true} HoudiniB9_BasicProvenance: bool;
const {:existential true} HoudiniB10_BasicProvenance: bool;
const {:existential true} HoudiniB11_BasicProvenance: bool;
const {:existential true} HoudiniB12_BasicProvenance: bool;
const {:existential true} HoudiniB13_BasicProvenance: bool;
const {:existential true} HoudiniB14_BasicProvenance: bool;
const {:existential true} HoudiniB15_BasicProvenance: bool;
const {:existential true} HoudiniB16_BasicProvenance: bool;
const {:existential true} HoudiniB17_BasicProvenance: bool;
const {:existential true} HoudiniB18_BasicProvenance: bool;
const {:existential true} HoudiniB19_BasicProvenance: bool;
const {:existential true} HoudiniB20_BasicProvenance: bool;
const {:existential true} HoudiniB21_BasicProvenance: bool;
const {:existential true} HoudiniB22_BasicProvenance: bool;
const {:existential true} HoudiniB23_BasicProvenance: bool;
const {:existential true} HoudiniB24_BasicProvenance: bool;
const {:existential true} HoudiniB25_BasicProvenance: bool;
const {:existential true} HoudiniB26_BasicProvenance: bool;
const {:existential true} HoudiniB27_BasicProvenance: bool;
const {:existential true} HoudiniB28_BasicProvenance: bool;
const {:existential true} HoudiniB29_BasicProvenance: bool;
const {:existential true} HoudiniB30_BasicProvenance: bool;
procedure BoogieEntry_BasicProvenance();
implementation BoogieEntry_BasicProvenance()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newCounterparty_s48: Ref;
var newCounterparty_s94: Ref;
var newCounterparty_s137: Ref;
var newCounterparty_s179: Ref;
var newCounterparty_s226: Ref;
var newCounterparty_s272: Ref;
var newCounterparty_s315: Ref;
var newCounterparty_s357: Ref;
var newCounterparty_s404: Ref;
var newCounterparty_s450: Ref;
var newCounterparty_s493: Ref;
var newCounterparty_s535: Ref;
var supplyChainOwner_s581: Ref;
var supplyChainObserver_s581: Ref;
var newCounterparty_s620: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (BasicProvenance));
call BasicProvenance_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s581, supplyChainObserver_s581);
while (true)
  invariant (HoudiniB1_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) == (null));
  invariant (HoudiniB2_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) != (null));
  invariant (HoudiniB3_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) == (null));
  invariant (HoudiniB4_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) != (null));
  invariant (HoudiniB5_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) == (null));
  invariant (HoudiniB6_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) != (null));
  invariant (HoudiniB7_BasicProvenance) ==> ((SupplyChainOwner_BasicProvenance[this]) == (null));
  invariant (HoudiniB8_BasicProvenance) ==> ((SupplyChainOwner_BasicProvenance[this]) != (null));
  invariant (HoudiniB9_BasicProvenance) ==> ((SupplyChainObserver_BasicProvenance[this]) == (null));
  invariant (HoudiniB10_BasicProvenance) ==> ((SupplyChainObserver_BasicProvenance[this]) != (null));
  invariant (HoudiniB11_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) == (Counterparty_BasicProvenance[this]));
  invariant (HoudiniB12_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) != (Counterparty_BasicProvenance[this]));
  invariant (HoudiniB13_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) == (PreviousCounterparty_BasicProvenance[this]));
  invariant (HoudiniB14_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) != (PreviousCounterparty_BasicProvenance[this]));
  invariant (HoudiniB15_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) == (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB16_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) != (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB17_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) == (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB18_BasicProvenance) ==> ((InitiatingCounterparty_BasicProvenance[this]) != (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB19_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) == (PreviousCounterparty_BasicProvenance[this]));
  invariant (HoudiniB20_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) != (PreviousCounterparty_BasicProvenance[this]));
  invariant (HoudiniB21_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) == (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB22_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) != (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB23_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) == (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB24_BasicProvenance) ==> ((Counterparty_BasicProvenance[this]) != (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB25_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) == (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB26_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) != (SupplyChainOwner_BasicProvenance[this]));
  invariant (HoudiniB27_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) == (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB28_BasicProvenance) ==> ((PreviousCounterparty_BasicProvenance[this]) != (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB29_BasicProvenance) ==> ((SupplyChainOwner_BasicProvenance[this]) == (SupplyChainObserver_BasicProvenance[this]));
  invariant (HoudiniB30_BasicProvenance) ==> ((SupplyChainOwner_BasicProvenance[this]) != (SupplyChainObserver_BasicProvenance[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newCounterparty_s48;
havoc newCounterparty_s94;
havoc newCounterparty_s137;
havoc newCounterparty_s179;
havoc newCounterparty_s226;
havoc newCounterparty_s272;
havoc newCounterparty_s315;
havoc newCounterparty_s357;
havoc newCounterparty_s404;
havoc newCounterparty_s450;
havoc newCounterparty_s493;
havoc newCounterparty_s535;
havoc supplyChainOwner_s581;
havoc supplyChainObserver_s581;
havoc newCounterparty_s620;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (BasicProvenance));
Alloc[msgsender_MSG] := true;
if ((choice) == (14)) {
call vc0x0x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s48);
} else if ((choice) == (13)) {
call vc0x0x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s94);
} else if ((choice) == (12)) {
call vc0x1x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s137);
} else if ((choice) == (11)) {
call vc0x1x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s179);
} else if ((choice) == (10)) {
call vc0x2x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s226);
} else if ((choice) == (9)) {
call vc0x2x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s272);
} else if ((choice) == (8)) {
call vc0x3x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s315);
} else if ((choice) == (7)) {
call vc0x3x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s357);
} else if ((choice) == (6)) {
call vc0x4x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s404);
} else if ((choice) == (5)) {
call vc0x4x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s450);
} else if ((choice) == (4)) {
call vc0x5x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s493);
} else if ((choice) == (3)) {
call vc0x5x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s535);
} else if ((choice) == (2)) {
call TransferResponsibility_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s620);
} else if ((choice) == (1)) {
call Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_BasicProvenance(this: Ref);
implementation CorralChoice_BasicProvenance(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var newCounterparty_s48: Ref;
var newCounterparty_s94: Ref;
var newCounterparty_s137: Ref;
var newCounterparty_s179: Ref;
var newCounterparty_s226: Ref;
var newCounterparty_s272: Ref;
var newCounterparty_s315: Ref;
var newCounterparty_s357: Ref;
var newCounterparty_s404: Ref;
var newCounterparty_s450: Ref;
var newCounterparty_s493: Ref;
var newCounterparty_s535: Ref;
var supplyChainOwner_s581: Ref;
var supplyChainObserver_s581: Ref;
var newCounterparty_s620: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc newCounterparty_s48;
havoc newCounterparty_s94;
havoc newCounterparty_s137;
havoc newCounterparty_s179;
havoc newCounterparty_s226;
havoc newCounterparty_s272;
havoc newCounterparty_s315;
havoc newCounterparty_s357;
havoc newCounterparty_s404;
havoc newCounterparty_s450;
havoc newCounterparty_s493;
havoc newCounterparty_s535;
havoc supplyChainOwner_s581;
havoc supplyChainObserver_s581;
havoc newCounterparty_s620;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (BasicProvenance));
Alloc[msgsender_MSG] := true;
if ((choice) == (14)) {
call vc0x0x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s48);
} else if ((choice) == (13)) {
call vc0x0x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s94);
} else if ((choice) == (12)) {
call vc0x1x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s137);
} else if ((choice) == (11)) {
call vc0x1x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s179);
} else if ((choice) == (10)) {
call vc0x2x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s226);
} else if ((choice) == (9)) {
call vc0x2x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s272);
} else if ((choice) == (8)) {
call vc0x3x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s315);
} else if ((choice) == (7)) {
call vc0x3x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s357);
} else if ((choice) == (6)) {
call vc0x4x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s404);
} else if ((choice) == (5)) {
call vc0x4x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s450);
} else if ((choice) == (4)) {
call vc0x5x0_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s493);
} else if ((choice) == (3)) {
call vc0x5x1_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s535);
} else if ((choice) == (2)) {
call TransferResponsibility_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s620);
} else if ((choice) == (1)) {
call Complete_BasicProvenance(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_BasicProvenance();
implementation CorralEntry_BasicProvenance()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var supplyChainOwner_s581: Ref;
var supplyChainObserver_s581: Ref;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (BasicProvenance));
call BasicProvenance_BasicProvenance(this, msgsender_MSG, msgvalue_MSG, supplyChainOwner_s581, supplyChainObserver_s581);
while (true)
{
call CorralChoice_BasicProvenance(this);
}
}


