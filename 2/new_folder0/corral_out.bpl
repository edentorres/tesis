type Ref;

type ContractName;

const unique null: Ref;

const unique RoomThermostat: ContractName;

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

procedure {:public} prueba_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, targetTemperature_s61: int, mode_s61: int);
  modifies State_RoomThermostat;



implementation {:ForceInline} prueba_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, targetTemperature_s61: int, mode_s61: int)
{

  anon0:
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "targetTemperature"} boogie_si_record_sol2Bpl_int(targetTemperature_s61);
    call {:si_unique_call 5} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_1;

  corral_source_split_1:
    goto corral_source_split_2;

  corral_source_split_2:
    assume State_RoomThermostat[this] == 0 && !(State_RoomThermostat[this] == 1) && !(State_RoomThermostat[this] == 1);
    goto corral_source_split_3;

  corral_source_split_3:
    assume Installer_RoomThermostat[this] == msgsender_MSG;
    goto corral_source_split_4;

  corral_source_split_4:
    call {:si_unique_call 6} StartThermostat_RoomThermostat(this, msgsender_MSG, msgvalue_MSG);
    goto corral_source_split_5;

  corral_source_split_5:
    assert !(!(State_RoomThermostat[this] == 0) && State_RoomThermostat[this] == 1 && State_RoomThermostat[this] == 1);
    return;
}



var State_RoomThermostat: [Ref]int;

var Installer_RoomThermostat: [Ref]Ref;

var User_RoomThermostat: [Ref]Ref;

var TargetTemperature_RoomThermostat: [Ref]int;

var Mode_RoomThermostat: [Ref]int;

procedure RoomThermostat_RoomThermostat_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, thermostatInstaller_s104: Ref, thermostatUser_s104: Ref);
  modifies Balance, Installer_RoomThermostat, User_RoomThermostat, TargetTemperature_RoomThermostat, State_RoomThermostat;



implementation {:ForceInline} RoomThermostat_RoomThermostat_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, thermostatInstaller_s104: Ref, thermostatUser_s104: Ref)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    Installer_RoomThermostat[this] := null;
    User_RoomThermostat[this] := null;
    TargetTemperature_RoomThermostat[this] := 0;
    call {:si_unique_call 7} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 8} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 9} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 10} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 11} {:cexpr "thermostatInstaller"} boogie_si_record_sol2Bpl_ref(thermostatInstaller_s104);
    call {:si_unique_call 12} {:cexpr "thermostatUser"} boogie_si_record_sol2Bpl_ref(thermostatUser_s104);
    call {:si_unique_call 13} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_7;

  corral_source_split_7:
    goto corral_source_split_8;

  corral_source_split_8:
    Installer_RoomThermostat[this] := thermostatInstaller_s104;
    call {:si_unique_call 14} {:cexpr "Installer"} boogie_si_record_sol2Bpl_ref(Installer_RoomThermostat[this]);
    goto corral_source_split_9;

  corral_source_split_9:
    User_RoomThermostat[this] := thermostatUser_s104;
    call {:si_unique_call 15} {:cexpr "User"} boogie_si_record_sol2Bpl_ref(User_RoomThermostat[this]);
    goto corral_source_split_10;

  corral_source_split_10:
    TargetTemperature_RoomThermostat[this] := 70;
    call {:si_unique_call 16} {:cexpr "TargetTemperature"} boogie_si_record_sol2Bpl_int(TargetTemperature_RoomThermostat[this]);
    goto corral_source_split_11;

  corral_source_split_11:
    State_RoomThermostat[this] := 0;
    return;
}



procedure {:constructor} {:public} RoomThermostat_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, thermostatInstaller_s104: Ref, thermostatUser_s104: Ref);
  modifies Balance, Installer_RoomThermostat, User_RoomThermostat, TargetTemperature_RoomThermostat, State_RoomThermostat;



implementation {:ForceInline} RoomThermostat_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, thermostatInstaller_s104: Ref, thermostatUser_s104: Ref)
{

  anon0:
    call {:si_unique_call 17} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 18} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 19} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 20} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 21} {:cexpr "thermostatInstaller"} boogie_si_record_sol2Bpl_ref(thermostatInstaller_s104);
    call {:si_unique_call 22} {:cexpr "thermostatUser"} boogie_si_record_sol2Bpl_ref(thermostatUser_s104);
    call {:si_unique_call 23} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 24} RoomThermostat_RoomThermostat_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG, thermostatInstaller_s104, thermostatUser_s104);
    return;
}



procedure {:public} StartThermostat_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies State_RoomThermostat;



implementation {:ForceInline} StartThermostat_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 25} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 26} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 27} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 28} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 29} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_13;

  corral_source_split_13:
    goto corral_source_split_14;

  corral_source_split_14:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} Installer_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 0;
    goto corral_source_split_16;

  corral_source_split_16:
    goto corral_source_split_17;

  corral_source_split_17:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} !(Installer_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 0);
    goto anon2;

  anon2:
    State_RoomThermostat[this] := 1;
    return;
}



procedure {:public} SetTargetTemperature_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, targetTemperature_s151: int);
  modifies TargetTemperature_RoomThermostat;



implementation {:ForceInline} SetTargetTemperature_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, targetTemperature_s151: int)
{

  anon0:
    call {:si_unique_call 30} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 31} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 32} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 33} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 34} {:cexpr "targetTemperature"} boogie_si_record_sol2Bpl_int(targetTemperature_s151);
    call {:si_unique_call 35} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_19;

  corral_source_split_19:
    goto corral_source_split_20;

  corral_source_split_20:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} User_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 1;
    goto corral_source_split_22;

  corral_source_split_22:
    goto corral_source_split_23;

  corral_source_split_23:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} !(User_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 1);
    goto anon2;

  anon2:
    TargetTemperature_RoomThermostat[this] := targetTemperature_s151;
    call {:si_unique_call 36} {:cexpr "TargetTemperature"} boogie_si_record_sol2Bpl_int(TargetTemperature_RoomThermostat[this]);
    return;
}



procedure {:public} SetMode_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, mode_s175: int);
  modifies Mode_RoomThermostat;



implementation {:ForceInline} SetMode_RoomThermostat(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, mode_s175: int)
{

  anon0:
    call {:si_unique_call 37} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 38} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 39} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 40} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 41} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    goto corral_source_split_25;

  corral_source_split_25:
    goto corral_source_split_26;

  corral_source_split_26:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} User_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 1;
    goto corral_source_split_28;

  corral_source_split_28:
    goto corral_source_split_29;

  corral_source_split_29:
    assume false;
    goto anon2;

  anon3_Else:
    assume {:partition} !(User_RoomThermostat[this] != msgsender_MSG || State_RoomThermostat[this] != 1);
    goto anon2;

  anon2:
    Mode_RoomThermostat[this] := mode_s175;
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);



const {:existential true} HoudiniB1_RoomThermostat: bool;

const {:existential true} HoudiniB2_RoomThermostat: bool;

const {:existential true} HoudiniB3_RoomThermostat: bool;

const {:existential true} HoudiniB4_RoomThermostat: bool;

const {:existential true} HoudiniB5_RoomThermostat: bool;

const {:existential true} HoudiniB6_RoomThermostat: bool;

procedure BoogieEntry_RoomThermostat();



procedure CorralChoice_RoomThermostat(this: Ref);
  modifies now, Alloc, State_RoomThermostat, TargetTemperature_RoomThermostat, Mode_RoomThermostat;



implementation CorralChoice_RoomThermostat(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var targetTemperature_s61: int;
  var mode_s61: int;
  var thermostatInstaller_s104: Ref;
  var thermostatUser_s104: Ref;
  var targetTemperature_s151: int;
  var mode_s175: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc targetTemperature_s61;
    havoc mode_s61;
    havoc thermostatInstaller_s104;
    havoc thermostatUser_s104;
    havoc targetTemperature_s151;
    havoc mode_s175;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != RoomThermostat;
    Alloc[msgsender_MSG] := true;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 42} prueba_RoomThermostat(this, msgsender_MSG, msgvalue_MSG, targetTemperature_s61, mode_s61);
    return;

  anon5_Else:
    assume {:partition} choice != 4;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 43} StartThermostat_RoomThermostat(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon6_Else:
    assume {:partition} choice != 3;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 44} SetTargetTemperature_RoomThermostat(this, msgsender_MSG, msgvalue_MSG, targetTemperature_s151);
    return;

  anon7_Else:
    assume {:partition} choice != 2;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 45} SetMode_RoomThermostat(this, msgsender_MSG, msgvalue_MSG, mode_s175);
    return;

  anon8_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_RoomThermostat();
  modifies Alloc, Balance, Installer_RoomThermostat, User_RoomThermostat, TargetTemperature_RoomThermostat, State_RoomThermostat, now, Mode_RoomThermostat;



implementation CorralEntry_RoomThermostat()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var thermostatInstaller_s104: Ref;
  var thermostatUser_s104: Ref;

  anon0:
    call {:si_unique_call 46} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == RoomThermostat;
    call {:si_unique_call 47} RoomThermostat_RoomThermostat(this, msgsender_MSG, msgvalue_MSG, thermostatInstaller_s104, thermostatUser_s104);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 48} CorralChoice_RoomThermostat(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


