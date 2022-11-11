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
procedure {:public} {:inline 1} validCombination0x0x0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s98: int, temperature_s98: int, timestamp_s98: int, newCounterparty_s98: Ref);
procedure {:public} {:inline 1} validCombination0x0x1_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s202: int, temperature_s202: int, timestamp_s202: int, newCounterparty_s202: Ref);
procedure {:public} {:inline 1} validCombination0x0x2_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s301: int, temperature_s301: int, timestamp_s301: int, newCounterparty_s301: Ref);
procedure {:public} {:inline 1} validCombination0x1x0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s392: int, temperature_s392: int, timestamp_s392: int, newCounterparty_s392: Ref);
procedure {:public} {:inline 1} validCombination0x1x1_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s490: int, temperature_s490: int, timestamp_s490: int, newCounterparty_s490: Ref);
procedure {:public} {:inline 1} validCombination0x1x2_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s583: int, temperature_s583: int, timestamp_s583: int, newCounterparty_s583: Ref);
implementation validCombination0x1x2_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s583: int, temperature_s583: int, timestamp_s583: int, newCounterparty_s583: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s583);
call  {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s583);
call  {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s583);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s583);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 40} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 41} (true);
assume (((((((State_RefrigeratedTransportation[this]) != (2)) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 42} (true);
assume (((Owner_RefrigeratedTransportation[this]) == (msgsender_MSG)) && ((SupplyChainOwner_RefrigeratedTransportation[this]) == (msgsender_MSG)));
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 43} (true);
call Complete_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 44} (true);
assert (!((((((((State_RefrigeratedTransportation[this]) != (2)) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3))) && ((State_RefrigeratedTransportation[this]) != (2))) && ((State_RefrigeratedTransportation[this]) != (3)))));
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
procedure {:inline 1} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int);
implementation RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int)
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
ComplianceDetail_RefrigeratedTransportation[this] := 1863135722;
LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := 0;
// end of initialization
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s703);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s703);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s703);
call  {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s703);
call  {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s703);
call  {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s703);
call  {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s703);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 72} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 72} (true);
ComplianceStatus_RefrigeratedTransportation[this] := true;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 73} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := -(1);
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 74} (true);
InitiatingCounterparty_RefrigeratedTransportation[this] := msgsender_MSG;
call  {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 75} (true);
Owner_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
call  {:cexpr "Owner"} boogie_si_record_sol2Bpl_ref(Owner_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 76} (true);
Counterparty_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
call  {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 77} (true);
Device_RefrigeratedTransportation[this] := device_s703;
call  {:cexpr "Device"} boogie_si_record_sol2Bpl_ref(Device_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 78} (true);
SupplyChainOwner_RefrigeratedTransportation[this] := supplyChainOwner_s703;
call  {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 79} (true);
SupplyChainObserver_RefrigeratedTransportation[this] := supplyChainObserver_s703;
call  {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 80} (true);
MinHumidity_RefrigeratedTransportation[this] := minHumidity_s703;
call  {:cexpr "MinHumidity"} boogie_si_record_sol2Bpl_int(MinHumidity_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 81} (true);
MaxHumidity_RefrigeratedTransportation[this] := maxHumidity_s703;
call  {:cexpr "MaxHumidity"} boogie_si_record_sol2Bpl_int(MaxHumidity_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 82} (true);
MinTemperature_RefrigeratedTransportation[this] := minTemperature_s703;
call  {:cexpr "MinTemperature"} boogie_si_record_sol2Bpl_int(MinTemperature_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 83} (true);
MaxTemperature_RefrigeratedTransportation[this] := maxTemperature_s703;
call  {:cexpr "MaxTemperature"} boogie_si_record_sol2Bpl_int(MaxTemperature_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 84} (true);
State_RefrigeratedTransportation[this] := 0;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 85} (true);
ComplianceDetail_RefrigeratedTransportation[this] := -6888505;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
}

procedure {:constructor} {:public} {:inline 1} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int);
implementation RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s703);
call  {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s703);
call  {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s703);
call  {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s703);
call  {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s703);
call  {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s703);
call  {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s703);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
call RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, device_s703, supplyChainOwner_s703, supplyChainObserver_s703, minHumidity_s703, maxHumidity_s703, minTemperature_s703, maxTemperature_s703);
}

procedure {:public} {:inline 1} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s806: int, temperature_s806: int, timestamp_s806: int);
implementation IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s806: int, temperature_s806: int, timestamp_s806: int)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s806);
call  {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s806);
call  {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s806);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 91} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 94} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 96} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 96} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 99} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 101} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 101} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 104} (true);
if ((Device_RefrigeratedTransportation[this]) != (msgsender_MSG)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 106} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 106} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 109} (true);
LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := timestamp_s806;
call  {:cexpr "LastSensorUpdateTimestamp"} boogie_si_record_sol2Bpl_int(LastSensorUpdateTimestamp_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 111} (true);
if (((humidity_s806) > (MaxHumidity_RefrigeratedTransportation[this])) || ((humidity_s806) < (MinHumidity_RefrigeratedTransportation[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 113} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 113} (true);
ComplianceSensorType_RefrigeratedTransportation[this] := 1;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 114} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := humidity_s806;
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 115} (true);
ComplianceDetail_RefrigeratedTransportation[this] := 598747168;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 116} (true);
ComplianceStatus_RefrigeratedTransportation[this] := false;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
} else {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 118} (true);
if (((temperature_s806) > (MaxTemperature_RefrigeratedTransportation[this])) || ((temperature_s806) < (MinTemperature_RefrigeratedTransportation[this]))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 120} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 120} (true);
ComplianceSensorType_RefrigeratedTransportation[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 121} (true);
ComplianceSensorReading_RefrigeratedTransportation[this] := temperature_s806;
call  {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 122} (true);
ComplianceDetail_RefrigeratedTransportation[this] := -1788259021;
call  {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 123} (true);
ComplianceStatus_RefrigeratedTransportation[this] := false;
call  {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
}
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 126} (true);
if ((ComplianceStatus_RefrigeratedTransportation[this]) == (false)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 128} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 128} (true);
State_RefrigeratedTransportation[this] := 3;
}
}

procedure {:public} {:inline 1} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s871: Ref);
implementation TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s871: Ref)
{
call  {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
call  {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
call  {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
call  {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
call  {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s871);
call  {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 136} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 138} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 140} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 140} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 143} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 145} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 145} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 148} (true);
if (((InitiatingCounterparty_RefrigeratedTransportation[this]) != (msgsender_MSG)) && ((Counterparty_RefrigeratedTransportation[this]) != (msgsender_MSG))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 150} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 150} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 153} (true);
if ((newCounterparty_s871) == (Device_RefrigeratedTransportation[this])) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 155} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 155} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 158} (true);
if ((State_RefrigeratedTransportation[this]) == (0)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 160} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 160} (true);
State_RefrigeratedTransportation[this] := 1;
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 163} (true);
PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 164} (true);
Counterparty_RefrigeratedTransportation[this] := newCounterparty_s871;
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
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 170} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 172} (true);
if ((State_RefrigeratedTransportation[this]) == (2)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 174} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 174} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 177} (true);
if ((State_RefrigeratedTransportation[this]) == (3)) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 179} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 179} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 182} (true);
if (((Owner_RefrigeratedTransportation[this]) != (msgsender_MSG)) && ((SupplyChainOwner_RefrigeratedTransportation[this]) != (msgsender_MSG))) {
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 184} (true);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 184} (true);
assume (false);
}
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 187} (true);
State_RefrigeratedTransportation[this] := 2;
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 188} (true);
PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
call  {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/2/new_folder1/CombinationsTemp1.sol"} {:sourceLine 189} (true);
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
var humidity_s98: int;
var temperature_s98: int;
var timestamp_s98: int;
var newCounterparty_s98: Ref;
var humidity_s202: int;
var temperature_s202: int;
var timestamp_s202: int;
var newCounterparty_s202: Ref;
var humidity_s301: int;
var temperature_s301: int;
var timestamp_s301: int;
var newCounterparty_s301: Ref;
var humidity_s392: int;
var temperature_s392: int;
var timestamp_s392: int;
var newCounterparty_s392: Ref;
var humidity_s490: int;
var temperature_s490: int;
var timestamp_s490: int;
var newCounterparty_s490: Ref;
var humidity_s583: int;
var temperature_s583: int;
var timestamp_s583: int;
var newCounterparty_s583: Ref;
var device_s703: Ref;
var supplyChainOwner_s703: Ref;
var supplyChainObserver_s703: Ref;
var minHumidity_s703: int;
var maxHumidity_s703: int;
var minTemperature_s703: int;
var maxTemperature_s703: int;
var humidity_s806: int;
var temperature_s806: int;
var timestamp_s806: int;
var newCounterparty_s871: Ref;
var tmpNow: int;
assume ((now) >= (0));
assume ((DType[this]) == (RefrigeratedTransportation));
call RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s703, supplyChainOwner_s703, supplyChainObserver_s703, minHumidity_s703, maxHumidity_s703, minTemperature_s703, maxTemperature_s703);
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
havoc humidity_s98;
havoc temperature_s98;
havoc timestamp_s98;
havoc newCounterparty_s98;
havoc humidity_s202;
havoc temperature_s202;
havoc timestamp_s202;
havoc newCounterparty_s202;
havoc humidity_s301;
havoc temperature_s301;
havoc timestamp_s301;
havoc newCounterparty_s301;
havoc humidity_s392;
havoc temperature_s392;
havoc timestamp_s392;
havoc newCounterparty_s392;
havoc humidity_s490;
havoc temperature_s490;
havoc timestamp_s490;
havoc newCounterparty_s490;
havoc humidity_s583;
havoc temperature_s583;
havoc timestamp_s583;
havoc newCounterparty_s583;
havoc device_s703;
havoc supplyChainOwner_s703;
havoc supplyChainObserver_s703;
havoc minHumidity_s703;
havoc maxHumidity_s703;
havoc minTemperature_s703;
havoc maxTemperature_s703;
havoc humidity_s806;
havoc temperature_s806;
havoc timestamp_s806;
havoc newCounterparty_s871;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (RefrigeratedTransportation));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
call validCombination0x0x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s98, temperature_s98, timestamp_s98, newCounterparty_s98);
} else if ((choice) == (8)) {
call validCombination0x0x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s202, temperature_s202, timestamp_s202, newCounterparty_s202);
} else if ((choice) == (7)) {
call validCombination0x0x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s301, temperature_s301, timestamp_s301, newCounterparty_s301);
} else if ((choice) == (6)) {
call validCombination0x1x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s392, temperature_s392, timestamp_s392, newCounterparty_s392);
} else if ((choice) == (5)) {
call validCombination0x1x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s490, temperature_s490, timestamp_s490, newCounterparty_s490);
} else if ((choice) == (4)) {
call validCombination0x1x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s583, temperature_s583, timestamp_s583, newCounterparty_s583);
} else if ((choice) == (3)) {
call IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s806, temperature_s806, timestamp_s806);
} else if ((choice) == (2)) {
call TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s871);
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
var humidity_s98: int;
var temperature_s98: int;
var timestamp_s98: int;
var newCounterparty_s98: Ref;
var humidity_s202: int;
var temperature_s202: int;
var timestamp_s202: int;
var newCounterparty_s202: Ref;
var humidity_s301: int;
var temperature_s301: int;
var timestamp_s301: int;
var newCounterparty_s301: Ref;
var humidity_s392: int;
var temperature_s392: int;
var timestamp_s392: int;
var newCounterparty_s392: Ref;
var humidity_s490: int;
var temperature_s490: int;
var timestamp_s490: int;
var newCounterparty_s490: Ref;
var humidity_s583: int;
var temperature_s583: int;
var timestamp_s583: int;
var newCounterparty_s583: Ref;
var device_s703: Ref;
var supplyChainOwner_s703: Ref;
var supplyChainObserver_s703: Ref;
var minHumidity_s703: int;
var maxHumidity_s703: int;
var minTemperature_s703: int;
var maxTemperature_s703: int;
var humidity_s806: int;
var temperature_s806: int;
var timestamp_s806: int;
var newCounterparty_s871: Ref;
var tmpNow: int;
havoc msgsender_MSG;
havoc msgvalue_MSG;
havoc choice;
havoc humidity_s98;
havoc temperature_s98;
havoc timestamp_s98;
havoc newCounterparty_s98;
havoc humidity_s202;
havoc temperature_s202;
havoc timestamp_s202;
havoc newCounterparty_s202;
havoc humidity_s301;
havoc temperature_s301;
havoc timestamp_s301;
havoc newCounterparty_s301;
havoc humidity_s392;
havoc temperature_s392;
havoc timestamp_s392;
havoc newCounterparty_s392;
havoc humidity_s490;
havoc temperature_s490;
havoc timestamp_s490;
havoc newCounterparty_s490;
havoc humidity_s583;
havoc temperature_s583;
havoc timestamp_s583;
havoc newCounterparty_s583;
havoc device_s703;
havoc supplyChainOwner_s703;
havoc supplyChainObserver_s703;
havoc minHumidity_s703;
havoc maxHumidity_s703;
havoc minTemperature_s703;
havoc maxTemperature_s703;
havoc humidity_s806;
havoc temperature_s806;
havoc timestamp_s806;
havoc newCounterparty_s871;
havoc tmpNow;
tmpNow := now;
havoc now;
assume ((now) > (tmpNow));
assume ((msgsender_MSG) != (null));
assume ((DType[msgsender_MSG]) != (RefrigeratedTransportation));
Alloc[msgsender_MSG] := true;
if ((choice) == (9)) {
call validCombination0x0x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s98, temperature_s98, timestamp_s98, newCounterparty_s98);
} else if ((choice) == (8)) {
call validCombination0x0x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s202, temperature_s202, timestamp_s202, newCounterparty_s202);
} else if ((choice) == (7)) {
call validCombination0x0x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s301, temperature_s301, timestamp_s301, newCounterparty_s301);
} else if ((choice) == (6)) {
call validCombination0x1x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s392, temperature_s392, timestamp_s392, newCounterparty_s392);
} else if ((choice) == (5)) {
call validCombination0x1x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s490, temperature_s490, timestamp_s490, newCounterparty_s490);
} else if ((choice) == (4)) {
call validCombination0x1x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s583, temperature_s583, timestamp_s583, newCounterparty_s583);
} else if ((choice) == (3)) {
call IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s806, temperature_s806, timestamp_s806);
} else if ((choice) == (2)) {
call TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s871);
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
var device_s703: Ref;
var supplyChainOwner_s703: Ref;
var supplyChainObserver_s703: Ref;
var minHumidity_s703: int;
var maxHumidity_s703: int;
var minTemperature_s703: int;
var maxTemperature_s703: int;
call this := FreshRefGenerator();
assume ((now) >= (0));
assume ((DType[this]) == (RefrigeratedTransportation));
call RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s703, supplyChainOwner_s703, supplyChainObserver_s703, minHumidity_s703, maxHumidity_s703, minTemperature_s703, maxTemperature_s703);
while (true)
{
call CorralChoice_RefrigeratedTransportation(this);
}
}


