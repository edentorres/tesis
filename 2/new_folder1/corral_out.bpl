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

procedure {:public} validCombination0x0x0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s98: int, temperature_s98: int, timestamp_s98: int, newCounterparty_s98: Ref);



procedure {:public} validCombination0x0x1_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s202: int, temperature_s202: int, timestamp_s202: int, newCounterparty_s202: Ref);



procedure {:public} validCombination0x0x2_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s301: int, temperature_s301: int, timestamp_s301: int, newCounterparty_s301: Ref);



procedure {:public} validCombination0x1x0_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s392: int, temperature_s392: int, timestamp_s392: int, newCounterparty_s392: Ref);



procedure {:public} validCombination0x1x1_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s490: int, temperature_s490: int, timestamp_s490: int, newCounterparty_s490: Ref);
  modifies State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation {:ForceInline} validCombination0x1x1_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s490: int, temperature_s490: int, timestamp_s490: int, newCounterparty_s490: Ref)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s490);
    call {:si_unique_call 5} {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s490);
    call {:si_unique_call 6} {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s490);
    call {:si_unique_call 7} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s490);
    call {:si_unique_call 8} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3 && State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3 && State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3;
    goto corral_source_split_3;

  corral_source_split_3:
    assume InitiatingCounterparty_RefrigeratedTransportation[this] == msgsender_MSG && Counterparty_RefrigeratedTransportation[this] == msgsender_MSG && newCounterparty_s490 != Device_RefrigeratedTransportation[this];
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 9} TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s490);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3 && State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3 && State_RefrigeratedTransportation[this] != 2 && State_RefrigeratedTransportation[this] != 3);
    return;
}



procedure {:public} validCombination0x1x2_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s583: int, temperature_s583: int, timestamp_s583: int, newCounterparty_s583: Ref);



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

procedure RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int);
  modifies Balance, Owner_RefrigeratedTransportation, InitiatingCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Device_RefrigeratedTransportation, SupplyChainOwner_RefrigeratedTransportation, SupplyChainObserver_RefrigeratedTransportation, MinHumidity_RefrigeratedTransportation, MaxHumidity_RefrigeratedTransportation, MinTemperature_RefrigeratedTransportation, MaxTemperature_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, LastSensorUpdateTimestamp_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int)
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
    ComplianceDetail_RefrigeratedTransportation[this] := 205831319;
    LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := 0;
    call {:si_unique_call 10} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 11} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 12} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 13} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 14} {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s703);
    call {:si_unique_call 15} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s703);
    call {:si_unique_call 16} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s703);
    call {:si_unique_call 17} {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s703);
    call {:si_unique_call 18} {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s703);
    call {:si_unique_call 19} {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s703);
    call {:si_unique_call 20} {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s703);
    call {:si_unique_call 21} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    ComplianceStatus_RefrigeratedTransportation[this] := true;
    call {:si_unique_call 22} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    ComplianceSensorReading_RefrigeratedTransportation[this] := -1;
    call {:si_unique_call 23} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    InitiatingCounterparty_RefrigeratedTransportation[this] := msgsender_MSG;
    call {:si_unique_call 24} {:cexpr "InitiatingCounterparty"} boogie_si_record_sol2Bpl_ref(InitiatingCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    Owner_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 25} {:cexpr "Owner"} boogie_si_record_sol2Bpl_ref(Owner_RefrigeratedTransportation[this]);
    goto corral_source_split_12;

  corral_source_split_12:
    Counterparty_RefrigeratedTransportation[this] := InitiatingCounterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 26} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_13;

  corral_source_split_13:
    Device_RefrigeratedTransportation[this] := device_s703;
    call {:si_unique_call 27} {:cexpr "Device"} boogie_si_record_sol2Bpl_ref(Device_RefrigeratedTransportation[this]);
    goto corral_source_split_14;

  corral_source_split_14:
    SupplyChainOwner_RefrigeratedTransportation[this] := supplyChainOwner_s703;
    call {:si_unique_call 28} {:cexpr "SupplyChainOwner"} boogie_si_record_sol2Bpl_ref(SupplyChainOwner_RefrigeratedTransportation[this]);
    goto corral_source_split_15;

  corral_source_split_15:
    SupplyChainObserver_RefrigeratedTransportation[this] := supplyChainObserver_s703;
    call {:si_unique_call 29} {:cexpr "SupplyChainObserver"} boogie_si_record_sol2Bpl_ref(SupplyChainObserver_RefrigeratedTransportation[this]);
    goto corral_source_split_16;

  corral_source_split_16:
    MinHumidity_RefrigeratedTransportation[this] := minHumidity_s703;
    call {:si_unique_call 30} {:cexpr "MinHumidity"} boogie_si_record_sol2Bpl_int(MinHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_17;

  corral_source_split_17:
    MaxHumidity_RefrigeratedTransportation[this] := maxHumidity_s703;
    call {:si_unique_call 31} {:cexpr "MaxHumidity"} boogie_si_record_sol2Bpl_int(MaxHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_18;

  corral_source_split_18:
    MinTemperature_RefrigeratedTransportation[this] := minTemperature_s703;
    call {:si_unique_call 32} {:cexpr "MinTemperature"} boogie_si_record_sol2Bpl_int(MinTemperature_RefrigeratedTransportation[this]);
    goto corral_source_split_19;

  corral_source_split_19:
    MaxTemperature_RefrigeratedTransportation[this] := maxTemperature_s703;
    call {:si_unique_call 33} {:cexpr "MaxTemperature"} boogie_si_record_sol2Bpl_int(MaxTemperature_RefrigeratedTransportation[this]);
    goto corral_source_split_20;

  corral_source_split_20:
    State_RefrigeratedTransportation[this] := 0;
    goto corral_source_split_21;

  corral_source_split_21:
    ComplianceDetail_RefrigeratedTransportation[this] := 1450917132;
    call {:si_unique_call 34} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    return;
}



procedure {:constructor} {:public} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int);
  modifies Balance, Owner_RefrigeratedTransportation, InitiatingCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Device_RefrigeratedTransportation, SupplyChainOwner_RefrigeratedTransportation, SupplyChainObserver_RefrigeratedTransportation, MinHumidity_RefrigeratedTransportation, MaxHumidity_RefrigeratedTransportation, MinTemperature_RefrigeratedTransportation, MaxTemperature_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, LastSensorUpdateTimestamp_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} RefrigeratedTransportation_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, device_s703: Ref, supplyChainOwner_s703: Ref, supplyChainObserver_s703: Ref, minHumidity_s703: int, maxHumidity_s703: int, minTemperature_s703: int, maxTemperature_s703: int)
{

  anon0:
    call {:si_unique_call 35} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 36} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 37} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 38} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 39} {:cexpr "device"} boogie_si_record_sol2Bpl_ref(device_s703);
    call {:si_unique_call 40} {:cexpr "supplyChainOwner"} boogie_si_record_sol2Bpl_ref(supplyChainOwner_s703);
    call {:si_unique_call 41} {:cexpr "supplyChainObserver"} boogie_si_record_sol2Bpl_ref(supplyChainObserver_s703);
    call {:si_unique_call 42} {:cexpr "minHumidity"} boogie_si_record_sol2Bpl_int(minHumidity_s703);
    call {:si_unique_call 43} {:cexpr "maxHumidity"} boogie_si_record_sol2Bpl_int(maxHumidity_s703);
    call {:si_unique_call 44} {:cexpr "minTemperature"} boogie_si_record_sol2Bpl_int(minTemperature_s703);
    call {:si_unique_call 45} {:cexpr "maxTemperature"} boogie_si_record_sol2Bpl_int(maxTemperature_s703);
    call {:si_unique_call 46} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 47} RefrigeratedTransportation_RefrigeratedTransportation_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, device_s703, supplyChainOwner_s703, supplyChainObserver_s703, minHumidity_s703, maxHumidity_s703, minTemperature_s703, maxTemperature_s703);
    return;
}



procedure {:public} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s806: int, temperature_s806: int, timestamp_s806: int);
  modifies LastSensorUpdateTimestamp_RefrigeratedTransportation, ComplianceSensorType_RefrigeratedTransportation, ComplianceSensorReading_RefrigeratedTransportation, ComplianceDetail_RefrigeratedTransportation, ComplianceStatus_RefrigeratedTransportation, State_RefrigeratedTransportation;



implementation {:ForceInline} IngestTelemetry_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, humidity_s806: int, temperature_s806: int, timestamp_s806: int)
{

  anon0:
    call {:si_unique_call 48} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 49} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 50} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 51} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 52} {:cexpr "humidity"} boogie_si_record_sol2Bpl_int(humidity_s806);
    call {:si_unique_call 53} {:cexpr "temperature"} boogie_si_record_sol2Bpl_int(temperature_s806);
    call {:si_unique_call 54} {:cexpr "timestamp"} boogie_si_record_sol2Bpl_int(timestamp_s806);
    call {:si_unique_call 55} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_23;

  corral_source_split_23:
    goto corral_source_split_24;

  corral_source_split_24:
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_26;

  corral_source_split_26:
    goto corral_source_split_27;

  corral_source_split_27:
    assume false;
    goto anon2;

  anon12_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_29;

  corral_source_split_29:
    goto corral_source_split_30;

  corral_source_split_30:
    assume false;
    goto anon4;

  anon13_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} Device_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_32;

  corral_source_split_32:
    goto corral_source_split_33;

  corral_source_split_33:
    assume false;
    goto anon6;

  anon14_Else:
    assume {:partition} Device_RefrigeratedTransportation[this] == msgsender_MSG;
    goto anon6;

  anon6:
    LastSensorUpdateTimestamp_RefrigeratedTransportation[this] := timestamp_s806;
    call {:si_unique_call 56} {:cexpr "LastSensorUpdateTimestamp"} boogie_si_record_sol2Bpl_int(LastSensorUpdateTimestamp_RefrigeratedTransportation[this]);
    goto corral_source_split_35;

  corral_source_split_35:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} humidity_s806 > MaxHumidity_RefrigeratedTransportation[this] || humidity_s806 < MinHumidity_RefrigeratedTransportation[this];
    goto corral_source_split_37;

  corral_source_split_37:
    goto corral_source_split_38;

  corral_source_split_38:
    ComplianceSensorType_RefrigeratedTransportation[this] := 1;
    goto corral_source_split_39;

  corral_source_split_39:
    ComplianceSensorReading_RefrigeratedTransportation[this] := humidity_s806;
    call {:si_unique_call 57} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_40;

  corral_source_split_40:
    ComplianceDetail_RefrigeratedTransportation[this] := 1214748155;
    call {:si_unique_call 58} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    goto corral_source_split_41;

  corral_source_split_41:
    ComplianceStatus_RefrigeratedTransportation[this] := false;
    call {:si_unique_call 59} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto anon10;

  anon15_Else:
    assume {:partition} !(humidity_s806 > MaxHumidity_RefrigeratedTransportation[this] || humidity_s806 < MinHumidity_RefrigeratedTransportation[this]);
    goto corral_source_split_43;

  corral_source_split_43:
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} temperature_s806 > MaxTemperature_RefrigeratedTransportation[this] || temperature_s806 < MinTemperature_RefrigeratedTransportation[this];
    goto corral_source_split_45;

  corral_source_split_45:
    goto corral_source_split_46;

  corral_source_split_46:
    ComplianceSensorType_RefrigeratedTransportation[this] := 2;
    goto corral_source_split_47;

  corral_source_split_47:
    ComplianceSensorReading_RefrigeratedTransportation[this] := temperature_s806;
    call {:si_unique_call 60} {:cexpr "ComplianceSensorReading"} boogie_si_record_sol2Bpl_int(ComplianceSensorReading_RefrigeratedTransportation[this]);
    goto corral_source_split_48;

  corral_source_split_48:
    ComplianceDetail_RefrigeratedTransportation[this] := 505909862;
    call {:si_unique_call 61} {:cexpr "ComplianceDetail"} boogie_si_record_sol2Bpl_int(ComplianceDetail_RefrigeratedTransportation[this]);
    goto corral_source_split_49;

  corral_source_split_49:
    ComplianceStatus_RefrigeratedTransportation[this] := false;
    call {:si_unique_call 62} {:cexpr "ComplianceStatus"} boogie_si_record_sol2Bpl_bool(ComplianceStatus_RefrigeratedTransportation[this]);
    goto anon10;

  anon16_Else:
    assume {:partition} !(temperature_s806 > MaxTemperature_RefrigeratedTransportation[this] || temperature_s806 < MinTemperature_RefrigeratedTransportation[this]);
    goto anon10;

  anon10:
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} ComplianceStatus_RefrigeratedTransportation[this] <==> false;
    goto corral_source_split_51;

  corral_source_split_51:
    goto corral_source_split_52;

  corral_source_split_52:
    State_RefrigeratedTransportation[this] := 3;
    return;

  anon17_Else:
    assume {:partition} ComplianceStatus_RefrigeratedTransportation[this] <==> !false;
    return;
}



procedure {:public} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s871: Ref);
  modifies State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation {:ForceInline} TransferResponsibility_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, newCounterparty_s871: Ref)
{

  anon0:
    call {:si_unique_call 63} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 64} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 65} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 66} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 67} {:cexpr "newCounterparty"} boogie_si_record_sol2Bpl_ref(newCounterparty_s871);
    call {:si_unique_call 68} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_54;

  corral_source_split_54:
    goto corral_source_split_55;

  corral_source_split_55:
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_57;

  corral_source_split_57:
    goto corral_source_split_58;

  corral_source_split_58:
    assume false;
    goto anon2;

  anon11_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_60;

  corral_source_split_60:
    goto corral_source_split_61;

  corral_source_split_61:
    assume false;
    goto anon4;

  anon12_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} InitiatingCounterparty_RefrigeratedTransportation[this] != msgsender_MSG && Counterparty_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_63;

  corral_source_split_63:
    goto corral_source_split_64;

  corral_source_split_64:
    assume false;
    goto anon6;

  anon13_Else:
    assume {:partition} !(InitiatingCounterparty_RefrigeratedTransportation[this] != msgsender_MSG && Counterparty_RefrigeratedTransportation[this] != msgsender_MSG);
    goto anon6;

  anon6:
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} newCounterparty_s871 == Device_RefrigeratedTransportation[this];
    goto corral_source_split_66;

  corral_source_split_66:
    goto corral_source_split_67;

  corral_source_split_67:
    assume false;
    goto anon8;

  anon14_Else:
    assume {:partition} newCounterparty_s871 != Device_RefrigeratedTransportation[this];
    goto anon8;

  anon8:
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 0;
    goto corral_source_split_69;

  corral_source_split_69:
    goto corral_source_split_70;

  corral_source_split_70:
    State_RefrigeratedTransportation[this] := 1;
    goto anon10;

  anon15_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 0;
    goto anon10;

  anon10:
    PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 69} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_72;

  corral_source_split_72:
    Counterparty_RefrigeratedTransportation[this] := newCounterparty_s871;
    call {:si_unique_call 70} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
    return;
}



procedure {:public} Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_RefrigeratedTransportation, PreviousCounterparty_RefrigeratedTransportation, Counterparty_RefrigeratedTransportation;



implementation {:ForceInline} Complete_RefrigeratedTransportation(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;

  anon0:
    call {:si_unique_call 71} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 72} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 73} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 74} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 75} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_74;

  corral_source_split_74:
    goto corral_source_split_75;

  corral_source_split_75:
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 2;
    goto corral_source_split_77;

  corral_source_split_77:
    goto corral_source_split_78;

  corral_source_split_78:
    assume false;
    goto anon2;

  anon7_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 2;
    goto anon2;

  anon2:
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} State_RefrigeratedTransportation[this] == 3;
    goto corral_source_split_80;

  corral_source_split_80:
    goto corral_source_split_81;

  corral_source_split_81:
    assume false;
    goto anon4;

  anon8_Else:
    assume {:partition} State_RefrigeratedTransportation[this] != 3;
    goto anon4;

  anon4:
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} Owner_RefrigeratedTransportation[this] != msgsender_MSG && SupplyChainOwner_RefrigeratedTransportation[this] != msgsender_MSG;
    goto corral_source_split_83;

  corral_source_split_83:
    goto corral_source_split_84;

  corral_source_split_84:
    assume false;
    goto anon6;

  anon9_Else:
    assume {:partition} !(Owner_RefrigeratedTransportation[this] != msgsender_MSG && SupplyChainOwner_RefrigeratedTransportation[this] != msgsender_MSG);
    goto anon6;

  anon6:
    State_RefrigeratedTransportation[this] := 2;
    goto corral_source_split_86;

  corral_source_split_86:
    PreviousCounterparty_RefrigeratedTransportation[this] := Counterparty_RefrigeratedTransportation[this];
    call {:si_unique_call 76} {:cexpr "PreviousCounterparty"} boogie_si_record_sol2Bpl_ref(PreviousCounterparty_RefrigeratedTransportation[this]);
    goto corral_source_split_87;

  corral_source_split_87:
    __var_1 := null;
    Counterparty_RefrigeratedTransportation[this] := __var_1;
    call {:si_unique_call 77} {:cexpr "Counterparty"} boogie_si_record_sol2Bpl_ref(Counterparty_RefrigeratedTransportation[this]);
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

  anon0:
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
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != RefrigeratedTransportation;
    Alloc[msgsender_MSG] := true;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} choice == 9;
    call {:si_unique_call 78} validCombination0x0x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s98, temperature_s98, timestamp_s98, newCounterparty_s98);
    return;

  anon10_Else:
    assume {:partition} choice != 9;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} choice == 8;
    call {:si_unique_call 79} validCombination0x0x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s202, temperature_s202, timestamp_s202, newCounterparty_s202);
    return;

  anon11_Else:
    assume {:partition} choice != 8;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 80} validCombination0x0x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s301, temperature_s301, timestamp_s301, newCounterparty_s301);
    return;

  anon12_Else:
    assume {:partition} choice != 7;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 81} validCombination0x1x0_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s392, temperature_s392, timestamp_s392, newCounterparty_s392);
    return;

  anon13_Else:
    assume {:partition} choice != 6;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 82} validCombination0x1x1_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s490, temperature_s490, timestamp_s490, newCounterparty_s490);
    return;

  anon14_Else:
    assume {:partition} choice != 5;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 83} validCombination0x1x2_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s583, temperature_s583, timestamp_s583, newCounterparty_s583);
    return;

  anon15_Else:
    assume {:partition} choice != 4;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 84} IngestTelemetry_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, humidity_s806, temperature_s806, timestamp_s806);
    return;

  anon16_Else:
    assume {:partition} choice != 3;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 85} TransferResponsibility_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, newCounterparty_s871);
    return;

  anon17_Else:
    assume {:partition} choice != 2;
    goto anon18_Then, anon18_Else;

  anon18_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 86} Complete_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon18_Else:
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
  var device_s703: Ref;
  var supplyChainOwner_s703: Ref;
  var supplyChainObserver_s703: Ref;
  var minHumidity_s703: int;
  var maxHumidity_s703: int;
  var minTemperature_s703: int;
  var maxTemperature_s703: int;

  anon0:
    call {:si_unique_call 87} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == RefrigeratedTransportation;
    call {:si_unique_call 88} RefrigeratedTransportation_RefrigeratedTransportation(this, msgsender_MSG, msgvalue_MSG, device_s703, supplyChainOwner_s703, supplyChainObserver_s703, minHumidity_s703, maxHumidity_s703, minTemperature_s703, maxTemperature_s703);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 89} CorralChoice_RefrigeratedTransportation(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


