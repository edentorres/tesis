type Ref;

type ContractName;

const unique null: Ref;

const unique RefrigeratedTransportation: ContractName;

function ConstantToRef(x: int) : Ref;

function BoogieRefToInt(x: Ref) : int;

function {:bvbuiltin "mod"} modBpl(x: int, y: int) : int;

function keccak256(x: int) : int;

function abiEncodePacked1(x: int) : int;

function _SumMapping_VeriSol(x: [Ref]int) : int;

function abiEncodePacked2(x: int, y: int) : int;

function abiEncodePacked1R(x: Ref) : int;

function abiEncodePacked2R(x: Ref, y: int) : int;

var Balance: [Ref]int;

var DType: [Ref]ContractName;

var Alloc: [Ref]bool;

var balance_ADDR: [Ref]int;

var Length: [Ref]int;

var now: int;

procedure FreshRefGenerator() returns (newRef: Ref);
  modifies Alloc;



implementation {:ForceInline} FreshRefGenerator() returns (newRef: Ref)
{

  anon0:
    havoc newRef;
    assume Alloc[newRef] <==> false;
    Alloc[newRef] := true;
    assume newRef != null;
    return;
}



procedure HavocAllocMany();



procedure boogie_si_record_sol2Bpl_int(x: int);



procedure boogie_si_record_sol2Bpl_ref(x: Ref);



procedure boogie_si_record_sol2Bpl_bool(x: bool);



axiom (forall __i__0_0: int, __i__0_1: int :: { ConstantToRef(__i__0_0), ConstantToRef(__i__0_1) } __i__0_0 == __i__0_1 || ConstantToRef(__i__0_0) != ConstantToRef(__i__0_1));

axiom (forall __i__0_0: int, __i__0_1: int :: { keccak256(__i__0_0), keccak256(__i__0_1) } __i__0_0 == __i__0_1 || keccak256(__i__0_0) != keccak256(__i__0_1));

axiom (forall __i__0_0: int, __i__0_1: int :: { abiEncodePacked1(__i__0_0), abiEncodePacked1(__i__0_1) } __i__0_0 == __i__0_1 || abiEncodePacked1(__i__0_0) != abiEncodePacked1(__i__0_1));

axiom (forall __i__0_0: [Ref]int :: (exists __i__0_1: Ref :: __i__0_0[__i__0_1] != 0) || _SumMapping_VeriSol(__i__0_0) == 0);

axiom (forall __i__0_0: [Ref]int, __i__0_1: Ref, __i__0_2: int :: _SumMapping_VeriSol(__i__0_0[__i__0_1 := __i__0_2]) == _SumMapping_VeriSol(__i__0_0) - __i__0_0[__i__0_1] + __i__0_2);

axiom (forall __i__0_0: int, __i__0_1: int, __i__1_0: int, __i__1_1: int :: { abiEncodePacked2(__i__0_0, __i__1_0), abiEncodePacked2(__i__0_1, __i__1_1) } (__i__0_0 == __i__0_1 && __i__1_0 == __i__1_1) || abiEncodePacked2(__i__0_0, __i__1_0) != abiEncodePacked2(__i__0_1, __i__1_1));

axiom (forall __i__0_0: Ref, __i__0_1: Ref :: { abiEncodePacked1R(__i__0_0), abiEncodePacked1R(__i__0_1) } __i__0_0 == __i__0_1 || abiEncodePacked1R(__i__0_0) != abiEncodePacked1R(__i__0_1));

axiom (forall __i__0_0: Ref, __i__0_1: Ref, __i__1_0: int, __i__1_1: int :: { abiEncodePacked2R(__i__0_0, __i__1_0), abiEncodePacked2R(__i__0_1, __i__1_1) } (__i__0_0 == __i__0_1 && __i__1_0 == __i__1_1) || abiEncodePacked2R(__i__0_0, __i__1_0) != abiEncodePacked2R(__i__0_1, __i__1_1));

procedure {:public} validCombination0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s55: int, temperature_s55: int, timestamp_s55: int, newCounterparty_s55: Ref);



implementation {:ForceInline} validCombination0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s55: int, temperature_s55: int, timestamp_s55: int, newCounterparty_s55: Ref)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s55);
    call {:si_unique_call 5} {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s55);
    call {:si_unique_call 6} {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s55);
    call {:si_unique_call 7} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s55);
    call {:si_unique_call 8} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume !(State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3) && !(State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3) && !(State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3);
    goto corral_source_split_3;

  corral_source_split_3:
    assert false;
    return;
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

procedure RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s175: Ref, supplyChainOwner_s175: Ref, supplyChainObserver_s175: Ref, minHumidity_s175: int, maxHumidity_s175: int, minTemperature_s175: int, maxTemperature_s175: int);
  modifies Balance, Owner_RefrigeratedTransportation, InitiatingCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Device_RefrigeratedTransportation, SupplyChainOwner_RefrigeratedTransportation, SupplyChainObserver_RefrigeratedTransportation, MinHumidity_RefrigeratedTransportation, MaxHumidity_RefrigeratedTransportation, MinTemperature_RefrigeratedTransportation, MaxTemperature_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, LastSensorUpdateTimestamp_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s175: Ref, supplyChainOwner_s175: Ref, supplyChainObserver_s175: Ref, minHumidity_s175: int, maxHumidity_s175: int, minTemperature_s175: int, maxTemperature_s175: int)
{

  anon0:
    assume msgsender_MSG != null;
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
    ComplianceDetail_RefrigeratedTransportation[this] := -781203297;
    LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := 0;
    call {:si_unique_call 9} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 10} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 11} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 12} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 13} {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s175);
    call {:si_unique_call 14} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s175);
    call {:si_unique_call 15} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s175);
    call {:si_unique_call 16} {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s175);
    call {:si_unique_call 17} {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s175);
    call {:si_unique_call 18} {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s175);
    call {:si_unique_call 19} {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s175);
    call {:si_unique_call 20} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_5;

  corral_source_split_5:
    goto corral_source_split_6;

  corral_source_split_6:
    ComplianceStatus_RefrigeratedTransportation[this] := true;
    call {:si_unique_call 21} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto corral_source_split_7;

  corral_source_split_7:
    ComplianceSensorReading_RefrigeratedTransportation[this] := -1;
    call {:si_unique_call 22} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_8;

  corral_source_split_8:
    InitiatingCounterparty_RefrigeratedTransportation[this] := msgsender_MSG;
    call {:si_unique_call 23} {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    Owner_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 24} {:cexpr "Owner"} boogie_si_record_sol2Bpl_ref(Owner_RefrigeratedTransportation[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    Counterparty_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 25} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    Device_RefrigeratedTransportation[this] := device_s175;
    call {:si_unique_call 26} {:cexpr "Device"} boogie_si_record_sol2Bpl_ref(Device_RefrigeratedTransportation[this]);
    goto corral_source_split_12;

  corral_source_split_12:
    SupplyChainOwner_RefrigeratedTransportation[this] := supplyChainOwner_s175;
    call {:si_unique_call 27} {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_RefrigeratedTransportation[this]);
    goto corral_source_split_13;

  corral_source_split_13:
    SupplyChainObserver_RefrigeratedTransportation[this] := supplyChainObserver_s175;
    call {:si_unique_call 28} {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_RefrigeratedTransportation[this]);
    goto corral_source_split_14;

  corral_source_split_14:
    MinHumidity_RefrigeratedTransportation[this] := minHumidity_s175;
    call {:si_unique_call 29} {:cexpr "MinHumidity"} boogie_si_record_sol2Bpl_int(MinHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_15;

  corral_source_split_15:
    MaxHumidity_RefrigeratedTransportation[this] := maxHumidity_s175;
    call {:si_unique_call 30} {:cexpr "MaxHumidity"} boogie_si_record_sol2Bpl_int(MaxHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_16;

  corral_source_split_16:
    MinTemperature_RefrigeratedTransportation[this] := minTemperature_s175;
    call {:si_unique_call 31} {:cexpr "MinTemperature"} boogie_si_record_sol2Bpl_int(MinTemperature_RefrigeratedTransportation[this]);
    goto corral_source_split_17;

  corral_source_split_17:
    MaxTemperature_RefrigeratedTransportation[this] := maxTemperature_s175;
    call {:si_unique_call 32} {:cexpr "MaxTemperature"} boogie_si_record_sol2Bpl_int(MaxTemperature_RefrigeratedTransportation[this]);
    goto corral_source_split_18;

  corral_source_split_18:
    State_RefrigeratedTransportation[this] := 0;
    goto corral_source_split_19;

  corral_source_split_19:
    ComplianceDetail_RefrigeratedTransportation[this] := -483816492;
    call {:si_unique_call 33} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    return;
}



procedure {:constructor} {:public} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s175: Ref, supplyChainOwner_s175: Ref, supplyChainObserver_s175: Ref, minHumidity_s175: int, maxHumidity_s175: int, minTemperature_s175: int, maxTemperature_s175: int);
  modifies Balance, Owner_RefrigeratedTransportation, InitiatingCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Device_RefrigeratedTransportation, SupplyChainOwner_RefrigeratedTransportation, SupplyChainObserver_RefrigeratedTransportation, MinHumidity_RefrigeratedTransportation, MaxHumidity_RefrigeratedTransportation, MinTemperature_RefrigeratedTransportation, MaxTemperature_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, LastSensorUpdateTimestamp_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s175: Ref, supplyChainOwner_s175: Ref, supplyChainObserver_s175: Ref, minHumidity_s175: int, maxHumidity_s175: int, minTemperature_s175: int, maxTemperature_s175: int)
{

  anon0:
    call {:si_unique_call 34} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 35} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 36} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 37} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 38} {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s175);
    call {:si_unique_call 39} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s175);
    call {:si_unique_call 40} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s175);
    call {:si_unique_call 41} {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s175);
    call {:si_unique_call 42} {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s175);
    call {:si_unique_call 43} {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s175);
    call {:si_unique_call 44} {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s175);
    call {:si_unique_call 45} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 46} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, device_s175, supplyChainOwner_s175, supplyChainObserver_s175, minHumidity_s175, maxHumidity_s175, minTemperature_s175, maxTemperature_s175);
    return;
}



procedure {:public} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s278: int, temperature_s278: int, timestamp_s278: int);
  modifies LastSensorUpdateTimestamp_RefrigeratedTransportation, ComplianceSensorType_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s278: int, temperature_s278: int, timestamp_s278: int)
{

  anon0:
    call {:si_unique_call 47} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 48} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 49} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 50} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 51} {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s278);
    call {:si_unique_call 52} {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s278);
    call {:si_unique_call 53} {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s278);
    call {:si_unique_call 54} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_21;

  corral_source_split_21:
    goto corral_source_split_22;

  corral_source_split_22:
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_24;

  corral_source_split_24:
    goto corral_source_split_25;

  corral_source_split_25:
    assume false;
    goto anon2;

  anon12_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_27;

  corral_source_split_27:
    goto corral_source_split_28;

  corral_source_split_28:
    assume false;
    goto anon4;

  anon13_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} Device_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_30;

  corral_source_split_30:
    goto corral_source_split_31;

  corral_source_split_31:
    assume false;
    goto anon6;

  anon14_Else:
    assume {:partition} Device_RefrigeratedTransportation[this] == msgsender_MSG;
    goto anon6;

  anon6:
    LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := timestamp_s278;
    call {:si_unique_call 55} {:cexpr "LastSensorUpdateTimestamp"} boogie_si_record_sol2Bpl_int(LastSensorUpdateTimestamp_RefrigeratedTransportation[this]);
    goto corral_source_split_33;

  corral_source_split_33:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} humidity_s278 > MaxHumidity_RefrigeratedTransportation[this] || humidity_s278 < MinHumidity_RefrigeratedTransportation[this];
    goto corral_source_split_35;

  corral_source_split_35:
    goto corral_source_split_36;

  corral_source_split_36:
    ComplianceSensorType_RefrigeratedTransportation[this] := 1;
    goto corral_source_split_37;

  corral_source_split_37:
    ComplianceSensorReading_RefrigeratedTransportation[this] := humidity_s278;
    call {:si_unique_call 56} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_38;

  corral_source_split_38:
    ComplianceDetail_RefrigeratedTransportation[this] := 1717938572;
    call {:si_unique_call 57} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    goto corral_source_split_39;

  corral_source_split_39:
    ComplianceStatus_RefrigeratedTransportation[this] := false;
    call {:si_unique_call 58} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto anon10;

  anon15_Else:
    assume {:partition} !(humidity_s278 > MaxHumidity_RefrigeratedTransportation[this] || humidity_s278 < MinHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} temperature_s278 > MaxTemperature_RefrigeratedTransportation[this] || temperature_s278 < MinTemperature_RefrigeratedTransportation[this];
    goto corral_source_split_43;

  corral_source_split_43:
    goto corral_source_split_44;

  corral_source_split_44:
    ComplianceSensorType_RefrigeratedTransportation[this] := 2;
    goto corral_source_split_45;

  corral_source_split_45:
    ComplianceSensorReading_RefrigeratedTransportation[this] := temperature_s278;
    call {:si_unique_call 59} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_46;

  corral_source_split_46:
    ComplianceDetail_RefrigeratedTransportation[this] := -827709229;
    call {:si_unique_call 60} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    goto corral_source_split_47;

  corral_source_split_47:
    ComplianceStatus_RefrigeratedTransportation[this] := false;
    call {:si_unique_call 61} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto anon10;

  anon16_Else:
    assume {:partition} !(temperature_s278 > MaxTemperature_RefrigeratedTransportation[this] || temperature_s278 < MinTemperature_RefrigeratedTransportation[this]);
    goto anon10;

  anon10:
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} ComplianceStatus_RefrigeratedTransportation[this] <==> false;
    goto corral_source_split_49;

  corral_source_split_49:
    goto corral_source_split_50;

  corral_source_split_50:
    State_RefrigeratedTransportation[this] := 3;
    return;

  anon17_Else:
    assume {:partition} ComplianceStatus_RefrigeratedTransportation[this] <==> !false;
    return;
}



procedure {:public} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s343: Ref);
  modifies State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation {:ForceInline} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s343: Ref)
{

  anon0:
    call {:si_unique_call 62} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 63} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 64} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 65} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 66} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s343);
    call {:si_unique_call 67} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_52;

  corral_source_split_52:
    goto corral_source_split_53;

  corral_source_split_53:
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_55;

  corral_source_split_55:
    goto corral_source_split_56;

  corral_source_split_56:
    assume false;
    goto anon2;

  anon11_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_58;

  corral_source_split_58:
    goto corral_source_split_59;

  corral_source_split_59:
    assume false;
    goto anon4;

  anon12_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} InitiatingCounterparty_RefrigeratedTransportation[this] != msgsender_MSG && Counterparty_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_61;

  corral_source_split_61:
    goto corral_source_split_62;

  corral_source_split_62:
    assume false;
    goto anon6;

  anon13_Else:
    assume {:partition} !(InitiatingCounterparty_RefrigeratedTransportation[this] != msgsender_MSG && Counterparty_RefrigeratedTransportation[this] != msgsender_MSG);
    goto anon6;

  anon6:
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} newCounterparty_s343 == Device_RefrigeratedTransportation[this];
    goto corral_source_split_64;

  corral_source_split_64:
    goto corral_source_split_65;

  corral_source_split_65:
    assume false;
    goto anon8;

  anon14_Else:
    assume {:partition} newCounterparty_s343 != Device_RefrigeratedTransportation[this];
    goto anon8;

  anon8:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 0;
    goto corral_source_split_67;

  corral_source_split_67:
    goto corral_source_split_68;

  corral_source_split_68:
    State_RefrigeratedTransportation[this] := 1;
    goto anon10;

  anon15_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 0;
    goto anon10;

  anon10:
    PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 68} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_70;

  corral_source_split_70:
    Counterparty_RefrigeratedTransportation[this] := newCounterparty_s343;
    call {:si_unique_call 69} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
    return;
}



procedure {:public} Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation {:ForceInline} Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 70} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 71} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 72} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 73} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 74} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_72;

  corral_source_split_72:
    goto corral_source_split_73;

  corral_source_split_73:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_75;

  corral_source_split_75:
    goto corral_source_split_76;

  corral_source_split_76:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_78;

  corral_source_split_78:
    goto corral_source_split_79;

  corral_source_split_79:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} Owner_RefrigeratedTransportation[this] != msgsender_MSG && SupplyChainOwner_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_81;

  corral_source_split_81:
    goto corral_source_split_82;

  corral_source_split_82:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} !(Owner_RefrigeratedTransportation[this] != msgsender_MSG && SupplyChainOwner_RefrigeratedTransportation[this] != msgsender_MSG);
    goto anon6;

  anon6:
    State_RefrigeratedTransportation[this] := 2;
    goto corral_source_split_84;

  corral_source_split_84:
    PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 75} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_85;

  corral_source_split_85:
    __var_1 := null;
    Counterparty_RefrigeratedTransportation[this] := __var_1;
    call {:si_unique_call 76} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



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



procedure CorralChoice_RefrigeratedTransportation(this: Ref);
  modifies now, Alloc, LastSensorUpdateTimestamp_RefrigeratedTransportation, ComplianceSensorType_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation CorralChoice_RefrigeratedTransportation(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var humidity_s55: int;
  var temperature_s55: int;
  var timestamp_s55: int;
  var newCounterparty_s55: Ref;
  var device_s175: Ref;
  var supplyChainOwner_s175: Ref;
  var supplyChainObserver_s175: Ref;
  var minHumidity_s175: int;
  var maxHumidity_s175: int;
  var minTemperature_s175: int;
  var maxTemperature_s175: int;
  var humidity_s278: int;
  var temperature_s278: int;
  var timestamp_s278: int;
  var newCounterparty_s343: Ref;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc humidity_s55;
    havoc temperature_s55;
    havoc timestamp_s55;
    havoc newCounterparty_s55;
    havoc device_s175;
    havoc supplyChainOwner_s175;
    havoc supplyChainObserver_s175;
    havoc minHumidity_s175;
    havoc maxHumidity_s175;
    havoc minTemperature_s175;
    havoc maxTemperature_s175;
    havoc humidity_s278;
    havoc temperature_s278;
    havoc timestamp_s278;
    havoc newCounterparty_s343;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != RefrigeratedTransportation;
    Alloc[msgsender_MSG] := true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 77} validCombination0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s55, temperature_s55, timestamp_s55, newCounterparty_s55);
    return;

  anon5_Else:
    assume {:partition} choice != 4;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 78} IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s278, temperature_s278, timestamp_s278);
    return;

  anon6_Else:
    assume {:partition} choice != 3;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 79} TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s343);
    return;

  anon7_Else:
    assume {:partition} choice != 2;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 80} Complete_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon8_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_RefrigeratedTransportation();
  modifies Alloc, Balance, Owner_RefrigeratedTransportation, InitiatingCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Device_RefrigeratedTransportation, SupplyChainOwner_RefrigeratedTransportation, SupplyChainObserver_RefrigeratedTransportation, MinHumidity_RefrigeratedTransportation, MaxHumidity_RefrigeratedTransportation, MinTemperature_RefrigeratedTransportation, MaxTemperature_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, LastSensorUpdateTimestamp_RefrigeratedTransportation, State_RefrigeratedTransportation, now, ComplianceSensorType_RefrigeratedTransportation;



implementation CorralEntry_RefrigeratedTransportation()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var device_s175: Ref;
  var supplyChainOwner_s175: Ref;
  var supplyChainObserver_s175: Ref;
  var minHumidity_s175: int;
  var maxHumidity_s175: int;
  var minTemperature_s175: int;
  var maxTemperature_s175: int;

  anon0:
    call {:si_unique_call 81} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == RefrigeratedTransportation;
    call {:si_unique_call 82} RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s175, supplyChainOwner_s175, supplyChainObserver_s175, minHumidity_s175, maxHumidity_s175, minTemperature_s175, maxTemperature_s175);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 83} CorralChoice_RefrigeratedTransportation(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


