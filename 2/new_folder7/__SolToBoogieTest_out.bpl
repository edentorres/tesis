type Ref;
type ContractName;
const unique null: Ref;
const unique RefrigeratedTransportation: ContractName;
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
procedure {:public} {:inline 1} validCombination0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s49: int, temperature_s49: int, timestamp_s49: int, newCounterparty_s49: Ref);
implementation validCombination0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s49: int, temperature_s49: int, timestamp_s49: int, newCounterparty_s49: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s49);
call  {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s49);
call  {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s49);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s49);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 4} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 6} (true);
assume (((((((State_RefrigeratedTransportation[this]) != (2)) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 7} (true);
assert (false);
}

var State_RefrigeratedTransportation: [Ref]int;
var Owner_RefrigeratedTransportation: [Ref]Ref;
var InitiatingCounterparty_RefrigeratedTransportation: [Ref]Ref;
var Counterparty_RefrigeratedTransportation: [Ref]Ref;
var PreviousCounterparty_RefrigeratedTransportation: [Ref]Ref;
var Device_RefrigeratedTransportation: [Ref]Ref;
var SupplyChainOwner_RefrigeratedTransportation: [Ref]Ref;
var SupplyChainObserver_RefrigeratedTransportation: [Ref]Ref;
var MinHumidity_RefrigeratedTransportation: [Ref]int;
var MaxHumidity_RefrigeratedTransportation: [Ref]int;
var MinTemperature_RefrigeratedTransportation: [Ref]int;
var MaxTemperature_RefrigeratedTransportation: [Ref]int;
var ComplianceSensorType_RefrigeratedTransportation: [Ref]int;
var ComplianceSensorReading_RefrigeratedTransportation: [Ref]int;
var ComplianceStatus_RefrigeratedTransportation: [Ref]bool;
var ComplianceDetail_RefrigeratedTransportation: [Ref]int;
var LastSensorUpdateTimestamp_RefrigeratedTransportation: [Ref]int;
procedure {:inline 1} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s169: Ref, supplyChainOwner_s169: Ref, supplyChainObserver_s169: Ref, minHumidity_s169: int, maxHumidity_s169: int, minTemperature_s169: int, maxTemperature_s169: int);
implementation RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s169: Ref, supplyChainOwner_s169: Ref, supplyChainObserver_s169: Ref, minHumidity_s169: int, maxHumidity_s169: int, minTemperature_s169: int, maxTemperature_s169: int)
{
// start of initialization
assume ((msgsender_MSG) != (null));
Balance[this] := 0;
Owner_RefrigeratedTransportation[this] := null;
InitiatingCounterparty_RefrigeratedTransportation[this] := null;
Counterparty_RefrigeratedTransportation[this] := null;
PreviousCounterparty_RefrigeratedTransportation[this] := null;
Device_RefrigeratedTransportation[this] := null;
SupplyChainOwner_RefrigeratedTransportation[this] := null;
SupplyChainObserver_RefrigeratedTransportation[this] := null;
MinHumidity_RefrigeratedTransportation[this] := 0;
MaxHumidity_RefrigeratedTransportation[this] := 0;
MinTemperature_RefrigeratedTransportation[this] := 0;
MaxTemperature_RefrigeratedTransportation[this] := 0;
ComplianceSensorReading_RefrigeratedTransportation[this] := 0;
ComplianceStatus_RefrigeratedTransportation[this] := false;
ComplianceDetail_RefrigeratedTransportation[this] := 674786441;
LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := 0;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s169);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s169);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s169);
call  {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s169);
call  {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s169);
call  {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s169);
call  {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s169);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 35} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 36} (true);
ComplianceStatus_RefrigeratedTransportation[this] := true;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 37} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := -(1);
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 38} (true);
InitiatingCounterparty_RefrigeratedTransportation[this] := msgsender_MSG;
call  {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 39} (true);
Owner_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
call  {:cexpr "Owner"} boogie_si_record_sol2Bpl_ref(Owner_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 40} (true);
Counterparty_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 41} (true);
Device_RefrigeratedTransportation[this] := device_s169;
call  {:cexpr "Device"} boogie_si_record_sol2Bpl_ref(Device_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 42} (true);
SupplyChainOwner_RefrigeratedTransportation[this] := supplyChainOwner_s169;
call  {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 43} (true);
SupplyChainObserver_RefrigeratedTransportation[this] := supplyChainObserver_s169;
call  {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 44} (true);
MinHumidity_RefrigeratedTransportation[this] := minHumidity_s169;
call  {:cexpr "MinHumidity"} boogie_si_record_sol2Bpl_int(MinHumidity_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 45} (true);
MaxHumidity_RefrigeratedTransportation[this] := maxHumidity_s169;
call  {:cexpr "MaxHumidity"} boogie_si_record_sol2Bpl_int(MaxHumidity_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 46} (true);
MinTemperature_RefrigeratedTransportation[this] := minTemperature_s169;
call  {:cexpr "MinTemperature"} boogie_si_record_sol2Bpl_int(MinTemperature_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 47} (true);
MaxTemperature_RefrigeratedTransportation[this] := maxTemperature_s169;
call  {:cexpr "MaxTemperature"} boogie_si_record_sol2Bpl_int(MaxTemperature_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 48} (true);
State_RefrigeratedTransportation[this] := 0;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 49} (true);
ComplianceDetail_RefrigeratedTransportation[this] := 337465102;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
}

procedure {:constructor} {:public} {:inline 1} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s169: Ref, supplyChainOwner_s169: Ref, supplyChainObserver_s169: Ref, minHumidity_s169: int, maxHumidity_s169: int, minTemperature_s169: int, maxTemperature_s169: int);
implementation RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s169: Ref, supplyChainOwner_s169: Ref, supplyChainObserver_s169: Ref, minHumidity_s169: int, maxHumidity_s169: int, minTemperature_s169: int, maxTemperature_s169: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s169);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s169);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s169);
call  {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s169);
call  {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s169);
call  {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s169);
call  {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s169);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, device_s169, supplyChainOwner_s169, supplyChainObserver_s169, minHumidity_s169, maxHumidity_s169, minTemperature_s169, maxTemperature_s169);
}

procedure {:public} {:inline 1} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s272: int, temperature_s272: int, timestamp_s272: int);
implementation IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s272: int, temperature_s272: int, timestamp_s272: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s272);
call  {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s272);
call  {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s272);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 54} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 58} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 59} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 60} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 63} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 64} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 65} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 68} (true);
if ((Device_RefrigeratedTransportation[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 69} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 70} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 73} (true);
LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := timestamp_s272;
call  {:cexpr "LastSensorUpdateTimestamp"} boogie_si_record_sol2Bpl_int(LastSensorUpdateTimestamp_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 75} (true);
if (((humidity_s272) > (MaxHumidity_RefrigeratedTransportation[this])) || ((humidity_s272) < (MinHumidity_RefrigeratedTransportation[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 76} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 77} (true);
ComplianceSensorType_RefrigeratedTransportation[this] := 1;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 78} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := humidity_s272;
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 79} (true);
ComplianceDetail_RefrigeratedTransportation[this] := 1881639472;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 80} (true);
ComplianceStatus_RefrigeratedTransportation[this] := false;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 82} (true);
if (((temperature_s272) > (MaxTemperature_RefrigeratedTransportation[this])) || ((temperature_s272) < (MinTemperature_RefrigeratedTransportation[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 83} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 84} (true);
ComplianceSensorType_RefrigeratedTransportation[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 85} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := temperature_s272;
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 86} (true);
ComplianceDetail_RefrigeratedTransportation[this] := 1385264770;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 87} (true);
ComplianceStatus_RefrigeratedTransportation[this] := false;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 90} (true);
if ((ComplianceStatus_RefrigeratedTransportation[this]) == (false)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 91} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 92} (true);
State_RefrigeratedTransportation[this] := 3;
}
}

procedure {:public} {:inline 1} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s337: Ref);
implementation TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s337: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s337);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 99} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 102} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 103} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 104} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 107} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 108} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 109} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 112} (true);
if (((InitiatingCounterparty_RefrigeratedTransportation[this]) != (msgsender_MSG)) && ((Counterparty_RefrigeratedTransportation[this]) != (msgsender_MSG))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 113} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 114} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 117} (true);
if ((newCounterparty_s337) == (Device_RefrigeratedTransportation[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 118} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 119} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 122} (true);
if ((State_RefrigeratedTransportation[this]) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 123} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 124} (true);
State_RefrigeratedTransportation[this] := 1;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 127} (true);
PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 128} (true);
Counterparty_RefrigeratedTransportation[this] := newCounterparty_s337;
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
}

procedure {:public} {:inline 1} Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
implementation Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
var __var_1: Ref;
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 133} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 136} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 137} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 138} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 141} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 142} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 143} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 146} (true);
if (((Owner_RefrigeratedTransportation[this]) != (msgsender_MSG)) && ((SupplyChainOwner_RefrigeratedTransportation[this]) != (msgsender_MSG))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 147} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 148} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 151} (true);
State_RefrigeratedTransportation[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 152} (true);
PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder7/CombinationsTemp7.sol"} {:sourceLine 153} (true);
__var_1 := null;
Counterparty_RefrigeratedTransportation[this] := __var_1;
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
}

procedure {:inline 1} FallbackDispatch(from: Ref, to: Ref, amount: int);
implementation FallbackDispatch(from: Ref, to: Ref, amount: int)
{
if ((DType[to]) == (RefrigeratedTransportation)) {
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

const {:existential true} HoudiniB1_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB2_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB3_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB4_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB5_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB6_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB7_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB8_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB9_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB10_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB11_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB12_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB13_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB14_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB15_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB16_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB17_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB18_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB19_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB20_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB21_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB22_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB23_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB24_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB25_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB26_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB27_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB28_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB29_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB30_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB31_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB32_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB33_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB34_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB35_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB36_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB37_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB38_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB39_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB40_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB41_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB42_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB43_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB44_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB45_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB46_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB47_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB48_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB49_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB50_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB51_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB52_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB53_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB54_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB55_RefrigeratedTransportation: bool;
const {:existential true} HoudiniB56_RefrigeratedTransportation: bool;
procedure BoogieEntry_RefrigeratedTransportation();
implementation BoogieEntry_RefrigeratedTransportation()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var humidity_s49: int;
var temperature_s49: int;
var timestamp_s49: int;
var newCounterparty_s49: Ref;
var device_s169: Ref;
var supplyChainOwner_s169: Ref;
var supplyChainObserver_s169: Ref;
var minHumidity_s169: int;
var maxHumidity_s169: int;
var minTemperature_s169: int;
var maxTemperature_s169: int;
var humidity_s272: int;
var temperature_s272: int;
var timestamp_s272: int;
var newCounterparty_s337: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (RefrigeratedTransportation));
call RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s169, supplyChainOwner_s169, supplyChainObserver_s169, minHumidity_s169, maxHumidity_s169, minTemperature_s169, maxTemperature_s169);
while (true)
  invariant (HoudiniB1_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB2_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB3_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB4_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB5_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB6_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB7_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB8_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB9_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB10_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB11_RefrigeratedTransportation) ==> ((SupplyChainOwner_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB12_RefrigeratedTransportation) ==> ((SupplyChainOwner_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB13_RefrigeratedTransportation) ==> ((SupplyChainObserver_RefrigeratedTransportation[this]) == (null));
  invariant (HoudiniB14_RefrigeratedTransportation) ==> ((SupplyChainObserver_RefrigeratedTransportation[this]) != (null));
  invariant (HoudiniB15_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (InitiatingCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB16_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (InitiatingCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB17_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (Counterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB18_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (Counterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB19_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB20_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB21_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB22_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB23_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB24_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB25_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB26_RefrigeratedTransportation) ==> ((Owner_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB27_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (Counterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB28_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (Counterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB29_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB30_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB31_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB32_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB33_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB34_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB35_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB36_RefrigeratedTransportation) ==> ((InitiatingCounterparty_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB37_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) == (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB38_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) != (PreviousCounterparty_RefrigeratedTransportation[this]));
  invariant (HoudiniB39_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) == (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB40_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) != (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB41_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) == (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB42_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) != (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB43_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB44_RefrigeratedTransportation) ==> ((Counterparty_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB45_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) == (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB46_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) != (Device_RefrigeratedTransportation[this]));
  invariant (HoudiniB47_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) == (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB48_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) != (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB49_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB50_RefrigeratedTransportation) ==> ((PreviousCounterparty_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB51_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) == (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB52_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) != (SupplyChainOwner_RefrigeratedTransportation[this]));
  invariant (HoudiniB53_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB54_RefrigeratedTransportation) ==> ((Device_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB55_RefrigeratedTransportation) ==> ((SupplyChainOwner_RefrigeratedTransportation[this]) == (SupplyChainObserver_RefrigeratedTransportation[this]));
  invariant (HoudiniB56_RefrigeratedTransportation) ==> ((SupplyChainOwner_RefrigeratedTransportation[this]) != (SupplyChainObserver_RefrigeratedTransportation[this]));
{
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc humidity_s49;
havoc temperature_s49;
havoc timestamp_s49;
havoc newCounterparty_s49;
havoc device_s169;
havoc supplyChainOwner_s169;
havoc supplyChainObserver_s169;
havoc minHumidity_s169;
havoc maxHumidity_s169;
havoc minTemperature_s169;
havoc maxTemperature_s169;
havoc humidity_s272;
havoc temperature_s272;
havoc timestamp_s272;
havoc newCounterparty_s337;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (RefrigeratedTransportation));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call validCombination0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s49, temperature_s49, timestamp_s49, newCounterparty_s49);
} else if ((choice) == (3)) {
call IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s272, temperature_s272, timestamp_s272);
} else if ((choice) == (2)) {
call TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s337);
} else if ((choice) == (1)) {
call Complete_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG);
}
}
}

procedure CorralChoice_RefrigeratedTransportation(this: Ref);
implementation CorralChoice_RefrigeratedTransportation(this: Ref)
{
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var choice: int;
var humidity_s49: int;
var temperature_s49: int;
var timestamp_s49: int;
var newCounterparty_s49: Ref;
var device_s169: Ref;
var supplyChainOwner_s169: Ref;
var supplyChainObserver_s169: Ref;
var minHumidity_s169: int;
var maxHumidity_s169: int;
var minTemperature_s169: int;
var maxTemperature_s169: int;
var humidity_s272: int;
var temperature_s272: int;
var timestamp_s272: int;
var newCounterparty_s337: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc humidity_s49;
havoc temperature_s49;
havoc timestamp_s49;
havoc newCounterparty_s49;
havoc device_s169;
havoc supplyChainOwner_s169;
havoc supplyChainObserver_s169;
havoc minHumidity_s169;
havoc maxHumidity_s169;
havoc minTemperature_s169;
havoc maxTemperature_s169;
havoc humidity_s272;
havoc temperature_s272;
havoc timestamp_s272;
havoc newCounterparty_s337;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (RefrigeratedTransportation));
Alloc[msgsender_MSG] := true;
if ((choice) == (4)) {
call validCombination0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s49, temperature_s49, timestamp_s49, newCounterparty_s49);
} else if ((choice) == (3)) {
call IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s272, temperature_s272, timestamp_s272);
} else if ((choice) == (2)) {
call TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s337);
} else if ((choice) == (1)) {
call Complete_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG);
}
}

procedure CorralEntry_RefrigeratedTransportation();
implementation CorralEntry_RefrigeratedTransportation()
{
var this: Ref;
var msgsender_MSG: Ref;
var msgvalue_MSG: int;
var device_s169: Ref;
var supplyChainOwner_s169: Ref;
var supplyChainObserver_s169: Ref;
var minHumidity_s169: int;
var maxHumidity_s169: int;
var minTemperature_s169: int;
var maxTemperature_s169: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (RefrigeratedTransportation));
call RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s169, supplyChainOwner_s169, supplyChainObserver_s169, minHumidity_s169, maxHumidity_s169, minTemperature_s169, maxTemperature_s169);
while (true)
{
call CorralChoice_RefrigeratedTransportation(this);
}
}


