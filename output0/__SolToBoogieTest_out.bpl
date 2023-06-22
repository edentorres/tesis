type Ref;
type ContractName;
const unique null: Ref;
const unique HelloBlockchain: ContractName;
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
procedure {:public} {:inline 1} vc0x0x0_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, requestMessage_s56: int, responseMessage_s56: int);
procedure {:public} {:inline 1} vc0x1x0_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, requestMessage_s111: int, responseMessage_s111: int);
implementation vc0x1x0_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, requestMessage_s111: int, responseMessage_s111: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "requestMessage"} boogie_si_record_sol2Bpl_int(requestMessage_s111);
call  {:cexpr "responseMessage"} boogie_si_record_sol2Bpl_int(responseMessage_s111);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
// ---- Logic for payable function START 
assume ((Balance[msgsender_MSG]) >= (msgvalue_MSG));
Balance[msgsender_MSG] := (Balance[msgsender_MSG]) - (msgvalue_MSG);
Balance[this] := (Balance[this]) + (msgvalue_MSG);
// ---- Logic for payable function END 
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 10} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 11} (true);
assume (((State_HelloBlockchain[this]) == (1)) && (!(((State_HelloBlockchain[this]) == (0)))));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 12} (true);
assume ((msgsender_MSG) == (Requestor_HelloBlockchain[this]));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 13} (true);
assume (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 14} (true);
assume ((requestMessage_s111) >= (0));
call SendRequest_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessage_s111);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 15} (true);
assert (!((((!(((State_HelloBlockchain[this]) == (1)))) && ((State_HelloBlockchain[this]) == (0))) && (true))));
}

var State_HelloBlockchain: [Ref]int;
var Requestor_HelloBlockchain: [Ref]Ref;
var Responder_HelloBlockchain: [Ref]Ref;
var RequestMessageCode_HelloBlockchain: [Ref]int;
var ResponseMessageCode_HelloBlockchain: [Ref]int;
procedure {:inline 1} HelloBlockchain_HelloBlockchain_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, messageCode_s144: int);
implementation HelloBlockchain_HelloBlockchain_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, messageCode_s144: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
Requestor_HelloBlockchain[this] := null;
Responder_HelloBlockchain[this] := null;
RequestMessageCode_HelloBlockchain[this] := 0;
ResponseMessageCode_HelloBlockchain[this] := 0;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "messageCode"} boogie_si_record_sol2Bpl_int(messageCode_s144);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 29} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 30} (true);
Requestor_HelloBlockchain[this] := msgsender_MSG;
call  {:cexpr "Requestor"} boogie_si_record_sol2Bpl_ref(Requestor_HelloBlockchain[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 31} (true);
assume ((RequestMessageCode_HelloBlockchain[this]) >= (0));
assume ((messageCode_s144) >= (0));
RequestMessageCode_HelloBlockchain[this] := messageCode_s144;
call  {:cexpr "RequestMessageCode"} boogie_si_record_sol2Bpl_int(RequestMessageCode_HelloBlockchain[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 32} (true);
State_HelloBlockchain[this] := 1;
}

procedure {:constructor} {:public} {:inline 1} HelloBlockchain_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, messageCode_s144: int);
implementation HelloBlockchain_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, messageCode_s144: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "messageCode"} boogie_si_record_sol2Bpl_int(messageCode_s144);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call HelloBlockchain_HelloBlockchain_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, messageCode_s144);
}

procedure {:public} {:inline 1} SendRequest_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, requestMessageCode_s177: int);
implementation SendRequest_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, requestMessageCode_s177: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "requestMessageCode"} boogie_si_record_sol2Bpl_int(requestMessageCode_s177);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 37} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 38} (true);
if ((Requestor_HelloBlockchain[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 39} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 40} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 44} (true);
if ((State_HelloBlockchain[this]) != (1)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 45} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 46} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 49} (true);
assume ((RequestMessageCode_HelloBlockchain[this]) >= (0));
assume ((requestMessageCode_s177) >= (0));
RequestMessageCode_HelloBlockchain[this] := requestMessageCode_s177;
call  {:cexpr "RequestMessageCode"} boogie_si_record_sol2Bpl_int(RequestMessageCode_HelloBlockchain[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 50} (true);
State_HelloBlockchain[this] := 0;
}

procedure {:public} {:inline 1} SendResponse_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, responseMessageCode_s206: int);
implementation SendResponse_HelloBlockchain(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, responseMessageCode_s206: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "responseMessageCode"} boogie_si_record_sol2Bpl_int(responseMessageCode_s206);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 55} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 57} (true);
if ((State_HelloBlockchain[this]) != (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 58} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 59} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 64} (true);
Responder_HelloBlockchain[this] := msgsender_MSG;
call  {:cexpr "Responder"} boogie_si_record_sol2Bpl_ref(Responder_HelloBlockchain[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 67} (true);
assume ((ResponseMessageCode_HelloBlockchain[this]) >= (0));
assume ((responseMessageCode_s206) >= (0));
ResponseMessageCode_HelloBlockchain[this] := responseMessageCode_s206;
call  {:cexpr "ResponseMessageCode"} boogie_si_record_sol2Bpl_int(ResponseMessageCode_HelloBlockchain[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/output0/OutputTemp0.sol"} {:sourceLine 68} (true);
State_HelloBlockchain[this] := 1;
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (HelloBlockchain)) {
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

const {:existential true} HoudiniB1_HelloBlockchain: bool;
const {:existential true} HoudiniB2_HelloBlockchain: bool;
const {:existential true} HoudiniB3_HelloBlockchain: bool;
const {:existential true} HoudiniB4_HelloBlockchain: bool;
const {:existential true} HoudiniB5_HelloBlockchain: bool;
const {:existential true} HoudiniB6_HelloBlockchain: bool;
procedure BoogieEntry_HelloBlockchain();
implementation BoogieEntry_HelloBlockchain()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var requestMessage_s56: int;
var responseMessage_s56: int;
var requestMessage_s111: int;
var responseMessage_s111: int;
var messageCode_s144: int;
var requestMessageCode_s177: int;
var responseMessageCode_s206: int;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (HelloBlockchain));
call HelloBlockchain_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, messageCode_s144);
while (true)
  invariant (HoudiniB1_HelloBlockchain) ==> ((Requestor_HelloBlockchain[this]) == (null));
  invariant (HoudiniB2_HelloBlockchain) ==> ((Requestor_HelloBlockchain[this]) != (null));
  invariant (HoudiniB3_HelloBlockchain) ==> ((Responder_HelloBlockchain[this]) == (null));
  invariant (HoudiniB4_HelloBlockchain) ==> ((Responder_HelloBlockchain[this]) != (null));
  invariant (HoudiniB5_HelloBlockchain) ==> ((Requestor_HelloBlockchain[this]) == (Responder_HelloBlockchain[this]));
  invariant (HoudiniB6_HelloBlockchain) ==> ((Requestor_HelloBlockchain[this]) != (Responder_HelloBlockchain[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc requestMessage_s56;
havoc responseMessage_s56;
havoc requestMessage_s111;
havoc responseMessage_s111;
havoc messageCode_s144;
havoc requestMessageCode_s177;
havoc responseMessageCode_s206;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (HelloBlockchain));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call vc0x0x0_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessage_s56, responseMessage_s56);
} else if ((choice) == (3)) {
call vc0x1x0_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessage_s111, responseMessage_s111);
} else if ((choice) == (2)) {
call SendRequest_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessageCode_s177);
} else if ((choice) == (1)) {
call SendResponse_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, responseMessageCode_s206);
}
}
}

procedure CorralChoice_HelloBlockchain(this: Ref);
implementation CorralChoice_HelloBlockchain(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var requestMessage_s56: int;
var responseMessage_s56: int;
var requestMessage_s111: int;
var responseMessage_s111: int;
var messageCode_s144: int;
var requestMessageCode_s177: int;
var responseMessageCode_s206: int;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc requestMessage_s56;
havoc responseMessage_s56;
havoc requestMessage_s111;
havoc responseMessage_s111;
havoc messageCode_s144;
havoc requestMessageCode_s177;
havoc responseMessageCode_s206;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (HelloBlockchain));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call vc0x0x0_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessage_s56, responseMessage_s56);
} else if ((choice) == (3)) {
call vc0x1x0_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessage_s111, responseMessage_s111);
} else if ((choice) == (2)) {
call SendRequest_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, requestMessageCode_s177);
} else if ((choice) == (1)) {
call SendResponse_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, responseMessageCode_s206);
}
}

procedure CorralEntry_HelloBlockchain();
implementation CorralEntry_HelloBlockchain()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var messageCode_s144: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (HelloBlockchain));
call HelloBlockchain_HelloBlockchain(this, msgsender_MSG, msgvalue_MSG, messageCode_s144);
while (true)
{
call CorralChoice_HelloBlockchain(this);
}
}


