type Ref;

type ContractName;

const unique null: Ref;

const unique owned: ContractName;

const unique safeMath: ContractName;

const unique StandardToken: ContractName;

const unique EPXCrowdsale: ContractName;

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

var M_Ref_int: [Ref][Ref]int;

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

var owner_owned: [Ref]Ref;

procedure owned_owned_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_owned;



implementation {:ForceInline} owned_owned_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    owner_owned[this] := null;
    call {:si_unique_call 0} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 1} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 2} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 3} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 4} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 39} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 40} true;
    owner_owned[this] := msgsender_MSG;
    call {:si_unique_call 5} {:cexpr "owner"} boogie_si_record_sol2Bpl_ref(owner_owned[this]);
    return;
}



procedure {:constructor} {:public} owned_owned(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_owned;



implementation {:ForceInline} owned_owned(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 6} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 7} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 8} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 9} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 10} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 11} owned_owned_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure safeMath_safeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} safeMath_safeMath_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    return;
}



procedure safeMath_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} safeMath_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 12} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 13} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 14} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 15} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 16} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 48} true;
    call {:si_unique_call 17} safeMath_safeMath_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure safeMul_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s54: int, b_s54: int) returns (__ret_0_: int);



implementation {:ForceInline} safeMul_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s54: int, b_s54: int) returns (__ret_0_: int)
{
  var c_s53: int;

  anon0:
    call {:si_unique_call 18} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 19} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 20} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 21} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 22} {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s54);
    call {:si_unique_call 23} {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s54);
    call {:si_unique_call 24} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 49} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 50} true;
    assume c_s53 >= 0;
    assume a_s54 >= 0;
    assume b_s54 >= 0;
    assume a_s54 * b_s54 >= 0;
    c_s53 := a_s54 * b_s54;
    call {:si_unique_call 25} {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s53);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 51} true;
    assume a_s54 >= 0;
    assume c_s53 >= 0;
    assume a_s54 >= 0;
    assume c_s53 div a_s54 >= 0;
    assume b_s54 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 26} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s54 == 0 || c_s53 div a_s54 == b_s54);
    goto anon5;

  anon6_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == StandardToken;
    call {:si_unique_call 27} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s54 == 0 || c_s53 div a_s54 == b_s54);
    goto anon5;

  anon7_Else:
    assume {:partition} DType[this] != StandardToken;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == safeMath;
    call {:si_unique_call 28} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s54 == 0 || c_s53 div a_s54 == b_s54);
    goto anon5;

  anon8_Else:
    assume {:partition} DType[this] != safeMath;
    assume false;
    goto anon5;

  anon5:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 52} true;
    assume c_s53 >= 0;
    __ret_0_ := c_s53;
    return;
}



procedure safeDiv_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s90: int, b_s90: int) returns (__ret_0_: int);



implementation {:ForceInline} safeDiv_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s90: int, b_s90: int) returns (__ret_0_: int)
{
  var c_s89: int;

  anon0:
    call {:si_unique_call 29} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 30} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 31} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 32} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 33} {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s90);
    call {:si_unique_call 34} {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s90);
    call {:si_unique_call 35} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 55} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 56} true;
    assume b_s90 >= 0;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 36} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s90 > 0);
    goto anon5;

  anon11_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} DType[this] == StandardToken;
    call {:si_unique_call 37} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s90 > 0);
    goto anon5;

  anon12_Else:
    assume {:partition} DType[this] != StandardToken;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} DType[this] == safeMath;
    call {:si_unique_call 38} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s90 > 0);
    goto anon5;

  anon13_Else:
    assume {:partition} DType[this] != safeMath;
    assume false;
    goto anon5;

  anon5:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 57} true;
    assume c_s89 >= 0;
    assume a_s90 >= 0;
    assume b_s90 >= 0;
    assume a_s90 div b_s90 >= 0;
    c_s89 := a_s90 div b_s90;
    call {:si_unique_call 39} {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s89);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 58} true;
    assume a_s90 >= 0;
    assume b_s90 >= 0;
    assume c_s89 >= 0;
    assume b_s90 * c_s89 >= 0;
    assume a_s90 >= 0;
    assume b_s90 >= 0;
    assume a_s90 mod b_s90 >= 0;
    assume b_s90 * c_s89 + a_s90 mod b_s90 >= 0;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 40} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s90 == b_s90 * c_s89 + a_s90 mod b_s90);
    goto anon10;

  anon14_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} DType[this] == StandardToken;
    call {:si_unique_call 41} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s90 == b_s90 * c_s89 + a_s90 mod b_s90);
    goto anon10;

  anon15_Else:
    assume {:partition} DType[this] != StandardToken;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} DType[this] == safeMath;
    call {:si_unique_call 42} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, a_s90 == b_s90 * c_s89 + a_s90 mod b_s90);
    goto anon10;

  anon16_Else:
    assume {:partition} DType[this] != safeMath;
    assume false;
    goto anon10;

  anon10:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 59} true;
    assume c_s89 >= 0;
    __ret_0_ := c_s89;
    return;
}



procedure safeSub_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s110: int, b_s110: int) returns (__ret_0_: int);



implementation {:ForceInline} safeSub_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s110: int, b_s110: int) returns (__ret_0_: int)
{

  anon0:
    call {:si_unique_call 43} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 44} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 45} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 46} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 47} {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s110);
    call {:si_unique_call 48} {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s110);
    call {:si_unique_call 49} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 62} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 63} true;
    assume b_s110 >= 0;
    assume a_s110 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 50} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s110 <= a_s110);
    goto anon5;

  anon6_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == StandardToken;
    call {:si_unique_call 51} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s110 <= a_s110);
    goto anon5;

  anon7_Else:
    assume {:partition} DType[this] != StandardToken;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == safeMath;
    call {:si_unique_call 52} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, b_s110 <= a_s110);
    goto anon5;

  anon8_Else:
    assume {:partition} DType[this] != safeMath;
    assume false;
    goto anon5;

  anon5:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 64} true;
    assume a_s110 >= 0;
    assume b_s110 >= 0;
    assume a_s110 - b_s110 >= 0;
    __ret_0_ := a_s110 - b_s110;
    return;
}



procedure safeAdd_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int);



implementation {:ForceInline} safeAdd_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, a_s138: int, b_s138: int) returns (__ret_0_: int)
{
  var c_s137: int;

  anon0:
    call {:si_unique_call 53} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 54} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 55} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 56} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 57} {:cexpr "a"} boogie_si_record_sol2Bpl_int(a_s138);
    call {:si_unique_call 58} {:cexpr "b"} boogie_si_record_sol2Bpl_int(b_s138);
    call {:si_unique_call 59} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 67} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 68} true;
    assume c_s137 >= 0;
    assume a_s138 >= 0;
    assume b_s138 >= 0;
    assume a_s138 + b_s138 >= 0;
    c_s137 := a_s138 + b_s138;
    call {:si_unique_call 60} {:cexpr "c"} boogie_si_record_sol2Bpl_int(c_s137);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 69} true;
    assume c_s137 >= 0;
    assume a_s138 >= 0;
    assume c_s137 >= 0;
    assume b_s138 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 61} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, c_s137 >= a_s138 && c_s137 >= b_s138);
    goto anon5;

  anon6_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[this] == StandardToken;
    call {:si_unique_call 62} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, c_s137 >= a_s138 && c_s137 >= b_s138);
    goto anon5;

  anon7_Else:
    assume {:partition} DType[this] != StandardToken;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[this] == safeMath;
    call {:si_unique_call 63} safeAssert_safeMath(this, msgsender_MSG, msgvalue_MSG, c_s137 >= a_s138 && c_s137 >= b_s138);
    goto anon5;

  anon8_Else:
    assume {:partition} DType[this] != safeMath;
    assume false;
    goto anon5;

  anon5:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 70} true;
    assume c_s137 >= 0;
    __ret_0_ := c_s137;
    return;
}



procedure safeAssert_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, assertion_s150: bool);



implementation {:ForceInline} safeAssert_safeMath(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, assertion_s150: bool)
{

  anon0:
    call {:si_unique_call 64} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 65} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 66} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 67} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 68} {:cexpr "assertion"} boogie_si_record_sol2Bpl_bool(assertion_s150);
    call {:si_unique_call 69} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 73} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 74} true;
    goto anon2_Then, anon2_Else;

  anon2_Then:
    assume {:partition} !assertion_s150;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 74} true;
    assume false;
    return;

  anon2_Else:
    assume {:partition} assertion_s150;
    return;
}



procedure StandardToken_StandardToken_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure StandardToken_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



procedure {:public} balanceOf_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, who_s162: Ref) returns (__ret_0_: int);



procedure {:public} transfer_StandardToken(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, to_s171: Ref, value_s171: int) returns (__ret_0_: bool);



var admin_EPXCrowdsale: [Ref]Ref;

var tokenReward_EPXCrowdsale: [Ref]Ref;

var initialTokenSupply_EPXCrowdsale: [Ref]int;

var tokensRemaining_EPXCrowdsale: [Ref]int;

var beneficiaryWallet_EPXCrowdsale: [Ref]Ref;

var amountRaisedInWei_EPXCrowdsale: [Ref]int;

var fundingMinCapInWei_EPXCrowdsale: [Ref]int;

var CurrentStatus_EPXCrowdsale: [Ref]int;

var fundingStartBlock_EPXCrowdsale: [Ref]int;

var fundingEndBlock_EPXCrowdsale: [Ref]int;

var isCrowdSaleClosed_EPXCrowdsale: [Ref]bool;

var areFundsReleasedToBeneficiary_EPXCrowdsale: [Ref]bool;

var isCrowdSaleSetup_EPXCrowdsale: [Ref]bool;

var balancesArray_EPXCrowdsale: [Ref]Ref;

var usersEPXfundValue_EPXCrowdsale: [Ref]Ref;

procedure EPXCrowdsale_EPXCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, admin_EPXCrowdsale, initialTokenSupply_EPXCrowdsale, tokensRemaining_EPXCrowdsale, beneficiaryWallet_EPXCrowdsale, amountRaisedInWei_EPXCrowdsale, fundingMinCapInWei_EPXCrowdsale, CurrentStatus_EPXCrowdsale, fundingStartBlock_EPXCrowdsale, fundingEndBlock_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, areFundsReleasedToBeneficiary_EPXCrowdsale, isCrowdSaleSetup_EPXCrowdsale, Alloc, balancesArray_EPXCrowdsale, usersEPXfundValue_EPXCrowdsale;



implementation {:ForceInline} EPXCrowdsale_EPXCrowdsale_NoBaseCtor(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

  anon0:
    assume msgsender_MSG != null;
    Balance[this] := 0;
    __var_1 := null;
    admin_EPXCrowdsale[this] := null;
    initialTokenSupply_EPXCrowdsale[this] := 0;
    tokensRemaining_EPXCrowdsale[this] := 0;
    __var_2 := null;
    beneficiaryWallet_EPXCrowdsale[this] := null;
    amountRaisedInWei_EPXCrowdsale[this] := 0;
    fundingMinCapInWei_EPXCrowdsale[this] := 0;
    CurrentStatus_EPXCrowdsale[this] := 753700966;
    fundingStartBlock_EPXCrowdsale[this] := 0;
    fundingEndBlock_EPXCrowdsale[this] := 0;
    isCrowdSaleClosed_EPXCrowdsale[this] := false;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := false;
    isCrowdSaleSetup_EPXCrowdsale[this] := false;
    call {:si_unique_call 70} __var_3 := FreshRefGenerator();
    balancesArray_EPXCrowdsale[this] := __var_3;
    assume (forall __i__0_0: Ref :: M_Ref_int[balancesArray_EPXCrowdsale[this]][__i__0_0] == 0);
    call {:si_unique_call 71} __var_4 := FreshRefGenerator();
    usersEPXfundValue_EPXCrowdsale[this] := __var_4;
    assume (forall __i__0_0: Ref :: M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][__i__0_0] == 0);
    call {:si_unique_call 72} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 73} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 74} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 75} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 76} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 77} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 119} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 120} true;
    admin_EPXCrowdsale[this] := msgsender_MSG;
    call {:si_unique_call 78} {:cexpr "admin"} boogie_si_record_sol2Bpl_ref(admin_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 121} true;
    CurrentStatus_EPXCrowdsale[this] := -1023680557;
    call {:si_unique_call 79} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;
}



procedure {:constructor} {:public} EPXCrowdsale_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, owner_owned, admin_EPXCrowdsale, initialTokenSupply_EPXCrowdsale, tokensRemaining_EPXCrowdsale, beneficiaryWallet_EPXCrowdsale, amountRaisedInWei_EPXCrowdsale, fundingMinCapInWei_EPXCrowdsale, CurrentStatus_EPXCrowdsale, fundingStartBlock_EPXCrowdsale, fundingEndBlock_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, areFundsReleasedToBeneficiary_EPXCrowdsale, isCrowdSaleSetup_EPXCrowdsale, Alloc, balancesArray_EPXCrowdsale, usersEPXfundValue_EPXCrowdsale;



implementation {:ForceInline} EPXCrowdsale_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_1: Ref;
  var __var_2: Ref;
  var __var_3: Ref;
  var __var_4: Ref;

  anon0:
    call {:si_unique_call 80} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 81} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 82} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 83} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 84} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 85} owned_owned(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 86} safeMath_safeMath(this, msgsender_MSG, msgvalue_MSG);
    call {:si_unique_call 87} EPXCrowdsale_EPXCrowdsale_NoBaseCtor(this, msgsender_MSG, msgvalue_MSG);
    return;
}



procedure {:public} initialEPXSupply_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (initialEPXtokenCount_s292: int);



implementation {:ForceInline} initialEPXSupply_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (initialEPXtokenCount_s292: int)
{
  var __var_5: int;
  var __var_6: int;

  anon0:
    call {:si_unique_call 88} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 89} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 90} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 91} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 92} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 125} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 126} true;
    assume __var_5 >= 0;
    assume initialTokenSupply_EPXCrowdsale[this] >= 0;
    assume __var_6 >= 0;
    __var_6 := 10000;
    assume 10000 >= 0;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 93} __var_5 := safeDiv_safeMath(this, msgsender_MSG, msgvalue_MSG, initialTokenSupply_EPXCrowdsale[this], 10000);
    goto anon3;

  anon4_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon3;

  anon3:
    assume __var_5 >= 0;
    initialEPXtokenCount_s292 := __var_5;
    return;
}



procedure {:public} remainingEPXSupply_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (remainingEPXtokenCount_s305: int);



implementation {:ForceInline} remainingEPXSupply_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (remainingEPXtokenCount_s305: int)
{
  var __var_7: int;
  var __var_8: int;

  anon0:
    call {:si_unique_call 94} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 95} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 96} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 97} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 98} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 130} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 131} true;
    assume __var_7 >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    assume __var_8 >= 0;
    __var_8 := 10000;
    assume 10000 >= 0;
    goto anon4_Then, anon4_Else;

  anon4_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 99} __var_7 := safeDiv_safeMath(this, msgsender_MSG, msgvalue_MSG, tokensRemaining_EPXCrowdsale[this], 10000);
    goto anon3;

  anon4_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon3;

  anon3:
    assume __var_7 >= 0;
    remainingEPXtokenCount_s305 := __var_7;
    return;
}



procedure {:public} SetupCrowdsale_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _fundingStartBlock_s403: int, _fundingEndBlock_s403: int) returns (response_s403: int);
  modifies beneficiaryWallet_EPXCrowdsale, tokenReward_EPXCrowdsale, fundingMinCapInWei_EPXCrowdsale, amountRaisedInWei_EPXCrowdsale, initialTokenSupply_EPXCrowdsale, tokensRemaining_EPXCrowdsale, fundingStartBlock_EPXCrowdsale, fundingEndBlock_EPXCrowdsale, isCrowdSaleSetup_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, CurrentStatus_EPXCrowdsale;



implementation {:ForceInline} SetupCrowdsale_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _fundingStartBlock_s403: int, _fundingEndBlock_s403: int) returns (response_s403: int)
{
  var __var_9: Ref;
  var __var_10: Ref;
  var __var_11: Ref;
  var __var_12: Ref;
  var __var_13: Ref;

  anon0:
    call {:si_unique_call 100} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 101} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 102} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 103} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 104} {:cexpr "_fundingStartBlock"} boogie_si_record_sol2Bpl_int(_fundingStartBlock_s403);
    call {:si_unique_call 105} {:cexpr "_fundingEndBlock"} boogie_si_record_sol2Bpl_int(_fundingEndBlock_s403);
    call {:si_unique_call 106} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 107} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 135} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 136} true;
    __var_9 := beneficiaryWallet_EPXCrowdsale[this];
    __var_10 := null;
    goto anon5_Then, anon5_Else;

  anon5_Then:
    assume {:partition} msgsender_MSG == admin_EPXCrowdsale[this] && !isCrowdSaleSetup_EPXCrowdsale[this] && !(beneficiaryWallet_EPXCrowdsale[this] > null);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 138} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 140} true;
    __var_11 := ConstantToRef(697430822632970301078135277991899223861541828538);
    beneficiaryWallet_EPXCrowdsale[this] := __var_11;
    call {:si_unique_call 108} {:cexpr "beneficiaryWallet"} boogie_si_record_sol2Bpl_ref(beneficiaryWallet_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 141} true;
    __var_13 := ConstantToRef(306739008177065458245547523748999887630099779917);
    assume DType[ConstantToRef(306739008177065458245547523748999887630099779917)] == StandardToken;
    __var_12 := ConstantToRef(306739008177065458245547523748999887630099779917);
    tokenReward_EPXCrowdsale[this] := __var_12;
    call {:si_unique_call 109} {:cexpr "tokenReward"} boogie_si_record_sol2Bpl_ref(tokenReward_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 144} true;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    fundingMinCapInWei_EPXCrowdsale[this] := 30000000000000000000;
    call {:si_unique_call 110} {:cexpr "fundingMinCapInWei"} boogie_si_record_sol2Bpl_int(fundingMinCapInWei_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 147} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    amountRaisedInWei_EPXCrowdsale[this] := 0;
    call {:si_unique_call 111} {:cexpr "amountRaisedInWei"} boogie_si_record_sol2Bpl_int(amountRaisedInWei_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 148} true;
    assume initialTokenSupply_EPXCrowdsale[this] >= 0;
    initialTokenSupply_EPXCrowdsale[this] := 200000000000;
    call {:si_unique_call 112} {:cexpr "initialTokenSupply"} boogie_si_record_sol2Bpl_int(initialTokenSupply_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 149} true;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    assume initialTokenSupply_EPXCrowdsale[this] >= 0;
    tokensRemaining_EPXCrowdsale[this] := initialTokenSupply_EPXCrowdsale[this];
    call {:si_unique_call 113} {:cexpr "tokensRemaining"} boogie_si_record_sol2Bpl_int(tokensRemaining_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 150} true;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    assume _fundingStartBlock_s403 >= 0;
    fundingStartBlock_EPXCrowdsale[this] := _fundingStartBlock_s403;
    call {:si_unique_call 114} {:cexpr "fundingStartBlock"} boogie_si_record_sol2Bpl_int(fundingStartBlock_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 151} true;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    assume _fundingEndBlock_s403 >= 0;
    fundingEndBlock_EPXCrowdsale[this] := _fundingEndBlock_s403;
    call {:si_unique_call 115} {:cexpr "fundingEndBlock"} boogie_si_record_sol2Bpl_int(fundingEndBlock_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 154} true;
    isCrowdSaleSetup_EPXCrowdsale[this] := true;
    call {:si_unique_call 116} {:cexpr "isCrowdSaleSetup"} boogie_si_record_sol2Bpl_bool(isCrowdSaleSetup_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 155} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := false;
    call {:si_unique_call 117} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 156} true;
    CurrentStatus_EPXCrowdsale[this] := 727338233;
    call {:si_unique_call 118} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 157} true;
    response_s403 := 727338233;
    return;

  anon5_Else:
    assume {:partition} !(msgsender_MSG == admin_EPXCrowdsale[this] && !isCrowdSaleSetup_EPXCrowdsale[this] && !(beneficiaryWallet_EPXCrowdsale[this] > null));
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 158} true;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} msgsender_MSG != admin_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 158} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 159} true;
    response_s403 := 1761607276;
    return;

  anon6_Else:
    assume {:partition} msgsender_MSG == admin_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 160} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 161} true;
    response_s403 := -1171893481;
    return;
}



procedure checkPrice_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (currentPriceValue_s440: int);



implementation {:ForceInline} checkPrice_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int) returns (currentPriceValue_s440: int)
{
  var __var_14: int;
  var __var_15: int;
  var __var_16: int;

  anon0:
    call {:si_unique_call 119} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 120} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 121} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 122} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 123} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 165} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 166} true;
    havoc __var_14;
    assume __var_14 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] + 177534 >= 0;
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} __var_14 >= fundingStartBlock_EPXCrowdsale[this] + 177534;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 166} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 167} true;
    currentPriceValue_s440 := 7600;
    return;

  anon6_Else:
    assume {:partition} fundingStartBlock_EPXCrowdsale[this] + 177534 > __var_14;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 168} true;
    havoc __var_15;
    assume __var_15 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] + 124274 >= 0;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} __var_15 >= fundingStartBlock_EPXCrowdsale[this] + 124274;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 168} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 169} true;
    currentPriceValue_s440 := 8200;
    return;

  anon7_Else:
    assume {:partition} fundingStartBlock_EPXCrowdsale[this] + 124274 > __var_15;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 170} true;
    havoc __var_16;
    assume __var_16 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} __var_16 >= fundingStartBlock_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 170} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 171} true;
    currentPriceValue_s440 := 8800;
    return;

  anon8_Else:
    assume {:partition} fundingStartBlock_EPXCrowdsale[this] > __var_16;
    return;
}



procedure FallbackMethod_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance;



implementation {:ForceInline} FallbackMethod_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    call {:si_unique_call 124} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 125} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 126} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 127} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 128} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 175} true;
    return;
}



procedure {:public} buy_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies Balance, amountRaisedInWei_EPXCrowdsale, tokensRemaining_EPXCrowdsale, M_Ref_int;



implementation {:ForceInline} buy_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_17: int;
  var __var_18: int;
  var rewardTransferAmount_s535: int;
  var __var_19: int;
  var __var_20: int;
  var __var_21: int;
  var __var_22: int;
  var __var_23: bool;
  var __var_24: int;
  var __var_25: int;

  anon0:
    call {:si_unique_call 129} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 130} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 131} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 132} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 133} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assume Balance[msgsender_MSG] >= msgvalue_MSG;
    Balance[msgsender_MSG] := Balance[msgsender_MSG] - msgvalue_MSG;
    Balance[this] := Balance[this] + msgvalue_MSG;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 181} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 183} true;
    assume msgvalue_MSG >= 0;
    havoc __var_17;
    assume __var_17 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    havoc __var_18;
    assume __var_18 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    assume !(msgvalue_MSG == 0) && __var_17 <= fundingEndBlock_EPXCrowdsale[this] && __var_18 >= fundingStartBlock_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] > 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 190} true;
    assume rewardTransferAmount_s535 >= 0;
    rewardTransferAmount_s535 := 0;
    call {:si_unique_call 134} {:cexpr "rewardTransferAmount"} boogie_si_record_sol2Bpl_int(rewardTransferAmount_s535);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 193} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume msgvalue_MSG >= 0;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 135} __var_19 := safeAdd_safeMath(this, msgsender_MSG, msgvalue_MSG, amountRaisedInWei_EPXCrowdsale[this], msgvalue_MSG);
    goto anon3;

  anon13_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon3;

  anon3:
    amountRaisedInWei_EPXCrowdsale[this] := __var_19;
    assume __var_19 >= 0;
    call {:si_unique_call 136} {:cexpr "amountRaisedInWei"} boogie_si_record_sol2Bpl_int(amountRaisedInWei_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 194} true;
    assume rewardTransferAmount_s535 >= 0;
    assume __var_20 >= 0;
    assume msgvalue_MSG >= 0;
    assume __var_21 >= 0;
    call {:si_unique_call 137} __var_21 := checkPrice_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    assume __var_21 >= 0;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 138} __var_20 := safeMul_safeMath(this, msgsender_MSG, msgvalue_MSG, msgvalue_MSG, __var_21);
    goto anon6;

  anon14_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon6;

  anon6:
    assume __var_20 >= 0;
    assume __var_20 div 100000000000000 >= 0;
    rewardTransferAmount_s535 := __var_20 div 100000000000000;
    call {:si_unique_call 139} {:cexpr "rewardTransferAmount"} boogie_si_record_sol2Bpl_int(rewardTransferAmount_s535);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 197} true;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    assume rewardTransferAmount_s535 >= 0;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 140} __var_22 := safeSub_safeMath(this, msgsender_MSG, msgvalue_MSG, tokensRemaining_EPXCrowdsale[this], rewardTransferAmount_s535);
    goto anon9;

  anon15_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon9;

  anon9:
    tokensRemaining_EPXCrowdsale[this] := __var_22;
    assume __var_22 >= 0;
    call {:si_unique_call 141} {:cexpr "tokensRemaining"} boogie_si_record_sol2Bpl_int(tokensRemaining_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 198} true;
    assume rewardTransferAmount_s535 >= 0;
    call {:si_unique_call 142} __var_23 := transfer_StandardToken(tokenReward_EPXCrowdsale[this], this, __var_24, msgsender_MSG, rewardTransferAmount_s535);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 201} true;
    assume M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    assume M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    assume msgvalue_MSG >= 0;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} DType[this] == EPXCrowdsale;
    call {:si_unique_call 143} __var_25 := safeAdd_safeMath(this, msgsender_MSG, msgvalue_MSG, M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG], msgvalue_MSG);
    goto anon12;

  anon16_Else:
    assume {:partition} DType[this] != EPXCrowdsale;
    assume false;
    goto anon12;

  anon12:
    M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] := __var_25;
    assume __var_25 >= 0;
    call {:si_unique_call 144} {:cexpr "usersEPXfundValue[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 202} true;
    assert {:EventEmitted "Buy_EPXCrowdsale"} true;
    return;
}



procedure {:public} beneficiaryMultiSigWithdraw_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s567: int);
  modifies Balance;



implementation {:ForceInline} beneficiaryMultiSigWithdraw_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int, _amount_s567: int)
{
  var __var_26: bool;

  anon0:
    call {:si_unique_call 145} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 146} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 147} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 148} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 149} {:cexpr "_amount"} boogie_si_record_sol2Bpl_int(_amount_s567);
    call {:si_unique_call 150} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 151} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 205} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 206} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    assume areFundsReleasedToBeneficiary_EPXCrowdsale[this] && amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 207} true;
    assume _amount_s567 >= 0;
    call {:si_unique_call 152} __var_26 := send(this, beneficiaryWallet_EPXCrowdsale[this], _amount_s567);
    assume __var_26;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 208} true;
    assert {:EventEmitted "Transfer_EPXCrowdsale"} true;
    return;
}



procedure {:public} checkGoalReached_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies areFundsReleasedToBeneficiary_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, CurrentStatus_EPXCrowdsale;



implementation {:ForceInline} checkGoalReached_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_27: int;
  var __var_28: int;
  var __var_29: int;
  var __var_30: int;
  var __var_31: int;
  var __var_32: int;

  anon0:
    call {:si_unique_call 153} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 154} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 155} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 156} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 157} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    call {:si_unique_call 158} onlyOwner_pre(this, msgsender_MSG, msgvalue_MSG);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 211} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 213} true;
    assume isCrowdSaleSetup_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 214} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    havoc __var_27;
    assume __var_27 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    havoc __var_28;
    assume __var_28 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_27 <= fundingEndBlock_EPXCrowdsale[this] && __var_28 >= fundingStartBlock_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 214} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 215} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := false;
    call {:si_unique_call 159} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 216} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := false;
    call {:si_unique_call 160} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 217} true;
    CurrentStatus_EPXCrowdsale[this] := 2142352922;
    call {:si_unique_call 161} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon12_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_27 <= fundingEndBlock_EPXCrowdsale[this] && __var_28 >= fundingStartBlock_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 218} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    havoc __var_29;
    assume __var_29 >= 0;
    assume fundingStartBlock_EPXCrowdsale[this] >= 0;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_29 < fundingStartBlock_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 218} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 219} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := false;
    call {:si_unique_call 162} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 220} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := false;
    call {:si_unique_call 163} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 221} true;
    CurrentStatus_EPXCrowdsale[this] := 727338233;
    call {:si_unique_call 164} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon13_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_29 < fundingStartBlock_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 222} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    havoc __var_30;
    assume __var_30 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_30 > fundingEndBlock_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 222} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 223} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := false;
    call {:si_unique_call 165} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 224} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := true;
    call {:si_unique_call 166} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 225} true;
    CurrentStatus_EPXCrowdsale[this] := 165226915;
    call {:si_unique_call 167} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon14_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && __var_30 > fundingEndBlock_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 226} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    goto anon15_Then, anon15_Else;

  anon15_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] == 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 226} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 227} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := true;
    call {:si_unique_call 168} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 228} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := true;
    call {:si_unique_call 169} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 229} true;
    CurrentStatus_EPXCrowdsale[this] := 942111356;
    call {:si_unique_call 170} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon15_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] == 0);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 230} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    havoc __var_31;
    assume __var_31 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    goto anon16_Then, anon16_Else;

  anon16_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && __var_31 > fundingEndBlock_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] > 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 230} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 231} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := true;
    call {:si_unique_call 171} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 232} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := true;
    call {:si_unique_call 172} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 233} true;
    CurrentStatus_EPXCrowdsale[this] := -1898094104;
    call {:si_unique_call 173} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon16_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && __var_31 > fundingEndBlock_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] > 0);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 234} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    assume tokensRemaining_EPXCrowdsale[this] >= 0;
    havoc __var_32;
    assume __var_32 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    goto anon17_Then, anon17_Else;

  anon17_Then:
    assume {:partition} amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] > 0 && __var_32 <= fundingEndBlock_EPXCrowdsale[this];
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 234} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 235} true;
    areFundsReleasedToBeneficiary_EPXCrowdsale[this] := true;
    call {:si_unique_call 174} {:cexpr "areFundsReleasedToBeneficiary"} boogie_si_record_sol2Bpl_bool(areFundsReleasedToBeneficiary_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 236} true;
    isCrowdSaleClosed_EPXCrowdsale[this] := false;
    call {:si_unique_call 175} {:cexpr "isCrowdSaleClosed"} boogie_si_record_sol2Bpl_bool(isCrowdSaleClosed_EPXCrowdsale[this]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 237} true;
    CurrentStatus_EPXCrowdsale[this] := 833930276;
    call {:si_unique_call 176} {:cexpr "CurrentStatus"} boogie_si_record_sol2Bpl_int(CurrentStatus_EPXCrowdsale[this]);
    return;

  anon17_Else:
    assume {:partition} !(amountRaisedInWei_EPXCrowdsale[this] >= fundingMinCapInWei_EPXCrowdsale[this] && tokensRemaining_EPXCrowdsale[this] > 0 && __var_32 <= fundingEndBlock_EPXCrowdsale[this]);
    return;
}



procedure {:public} refund_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);
  modifies M_Ref_int, Balance;



implementation {:ForceInline} refund_EPXCrowdsale(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{
  var __var_33: int;
  var ethRefund_s806: int;
  var __var_34: bool;

  anon0:
    call {:si_unique_call 177} {:cexpr "_verisolFirstArg"} boogie_si_record_sol2Bpl_bool(false);
    call {:si_unique_call 178} {:cexpr "this"} boogie_si_record_sol2Bpl_ref(this);
    call {:si_unique_call 179} {:cexpr "msg.sender"} boogie_si_record_sol2Bpl_ref(msgsender_MSG);
    call {:si_unique_call 180} {:cexpr "msg.value"} boogie_si_record_sol2Bpl_int(msgvalue_MSG);
    call {:si_unique_call 181} {:cexpr "_verisolLastArg"} boogie_si_record_sol2Bpl_bool(true);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 241} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 243} true;
    assume amountRaisedInWei_EPXCrowdsale[this] >= 0;
    assume fundingMinCapInWei_EPXCrowdsale[this] >= 0;
    havoc __var_33;
    assume __var_33 >= 0;
    assume fundingEndBlock_EPXCrowdsale[this] >= 0;
    assume M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    assume amountRaisedInWei_EPXCrowdsale[this] < fundingMinCapInWei_EPXCrowdsale[this] && isCrowdSaleClosed_EPXCrowdsale[this] && __var_33 > fundingEndBlock_EPXCrowdsale[this] && M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] > 0;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 249} true;
    assume ethRefund_s806 >= 0;
    assume M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    ethRefund_s806 := M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG];
    call {:si_unique_call 182} {:cexpr "ethRefund"} boogie_si_record_sol2Bpl_int(ethRefund_s806);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 250} true;
    assume M_Ref_int[balancesArray_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    M_Ref_int[balancesArray_EPXCrowdsale[this]][msgsender_MSG] := 0;
    call {:si_unique_call 183} {:cexpr "balancesArray[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[balancesArray_EPXCrowdsale[this]][msgsender_MSG]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 251} true;
    assume M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] >= 0;
    M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG] := 0;
    call {:si_unique_call 184} {:cexpr "usersEPXfundValue[msg.sender]"} boogie_si_record_sol2Bpl_int(M_Ref_int[usersEPXfundValue_EPXCrowdsale[this]][msgsender_MSG]);
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 254} true;
    assert {:EventEmitted "Burn_EPXCrowdsale"} true;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 257} true;
    assume ethRefund_s806 >= 0;
    call {:si_unique_call 185} __var_34 := send(this, msgsender_MSG, ethRefund_s806);
    assume __var_34;
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 260} true;
    assert {:EventEmitted "Refund_EPXCrowdsale"} true;
    return;
}



procedure FallbackDispatch(from: Ref, to: Ref, amount: int);
  modifies Balance;



implementation {:ForceInline} FallbackDispatch(from: Ref, to: Ref, amount: int)
{

  anon0:
    goto anon6_Then, anon6_Else;

  anon6_Then:
    assume {:partition} DType[to] == EPXCrowdsale;
    call {:si_unique_call 186} FallbackMethod_EPXCrowdsale(to, from, amount);
    return;

  anon6_Else:
    assume {:partition} DType[to] != EPXCrowdsale;
    goto anon7_Then, anon7_Else;

  anon7_Then:
    assume {:partition} DType[to] == StandardToken;
    assume amount == 0;
    return;

  anon7_Else:
    assume {:partition} DType[to] != StandardToken;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} DType[to] == safeMath;
    assume amount == 0;
    return;

  anon8_Else:
    assume {:partition} DType[to] != safeMath;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} DType[to] == owned;
    assume amount == 0;
    return;

  anon9_Else:
    assume {:partition} DType[to] != owned;
    call {:si_unique_call 187} Fallback_UnknownType(from, to, amount);
    return;
}



procedure Fallback_UnknownType(from: Ref, to: Ref, amount: int);
  modifies Balance;



implementation {:ForceInline} Fallback_UnknownType(from: Ref, to: Ref, amount: int)
{

  anon0:
    assume Balance[from] >= amount;
    Balance[from] := Balance[from] - amount;
    Balance[to] := Balance[to] + amount;
    return;
}



procedure send(from: Ref, to: Ref, amount: int) returns (success: bool);
  modifies Balance;



implementation {:ForceInline} send(from: Ref, to: Ref, amount: int) returns (success: bool)
{

  anon0:
    goto anon3_Then, anon3_Else;

  anon3_Then:
    assume {:partition} Balance[from] >= amount;
    call {:si_unique_call 188} FallbackDispatch(from, to, amount);
    success := true;
    return;

  anon3_Else:
    assume {:partition} amount > Balance[from];
    success := false;
    return;
}



const {:existential true} HoudiniB1_owned: bool;

const {:existential true} HoudiniB2_owned: bool;

procedure BoogieEntry_owned();



procedure BoogieEntry_safeMath();



const {:existential true} HoudiniB1_StandardToken: bool;

const {:existential true} HoudiniB2_StandardToken: bool;

procedure BoogieEntry_StandardToken();



const {:existential true} HoudiniB1_EPXCrowdsale: bool;

const {:existential true} HoudiniB2_EPXCrowdsale: bool;

const {:existential true} HoudiniB3_EPXCrowdsale: bool;

const {:existential true} HoudiniB4_EPXCrowdsale: bool;

const {:existential true} HoudiniB5_EPXCrowdsale: bool;

const {:existential true} HoudiniB6_EPXCrowdsale: bool;

const {:existential true} HoudiniB7_EPXCrowdsale: bool;

const {:existential true} HoudiniB8_EPXCrowdsale: bool;

const {:existential true} HoudiniB9_EPXCrowdsale: bool;

const {:existential true} HoudiniB10_EPXCrowdsale: bool;

const {:existential true} HoudiniB11_EPXCrowdsale: bool;

const {:existential true} HoudiniB12_EPXCrowdsale: bool;

procedure BoogieEntry_EPXCrowdsale();



procedure onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int);



implementation {:ForceInline} onlyOwner_pre(this: Ref, msgsender_MSG: Ref, msgvalue_MSG: int)
{

  anon0:
    assert {:first} {:sourceFile "/Users/etorres/Proyectos/verisol-test/Contracts/EPXCrowdsale.sol"} {:sourceLine 43} true;
    assume msgsender_MSG == owner_owned[this];
    return;
}



procedure CorralChoice_owned(this: Ref);



procedure CorralEntry_owned();



procedure CorralChoice_safeMath(this: Ref);



procedure CorralEntry_safeMath();



procedure CorralChoice_StandardToken(this: Ref);



procedure CorralEntry_StandardToken();



procedure CorralChoice_EPXCrowdsale(this: Ref);
  modifies now, Alloc, beneficiaryWallet_EPXCrowdsale, tokenReward_EPXCrowdsale, fundingMinCapInWei_EPXCrowdsale, amountRaisedInWei_EPXCrowdsale, initialTokenSupply_EPXCrowdsale, tokensRemaining_EPXCrowdsale, fundingStartBlock_EPXCrowdsale, fundingEndBlock_EPXCrowdsale, isCrowdSaleSetup_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, CurrentStatus_EPXCrowdsale, Balance, M_Ref_int, areFundsReleasedToBeneficiary_EPXCrowdsale;



implementation CorralChoice_EPXCrowdsale(this: Ref)
{
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;
  var choice: int;
  var initialEPXtokenCount_s292: int;
  var remainingEPXtokenCount_s305: int;
  var _fundingStartBlock_s403: int;
  var _fundingEndBlock_s403: int;
  var response_s403: int;
  var _amount_s567: int;
  var tmpNow: int;

  anon0:
    havoc msgsender_MSG;
    havoc msgvalue_MSG;
    havoc choice;
    havoc initialEPXtokenCount_s292;
    havoc remainingEPXtokenCount_s305;
    havoc _fundingStartBlock_s403;
    havoc _fundingEndBlock_s403;
    havoc response_s403;
    havoc _amount_s567;
    havoc tmpNow;
    tmpNow := now;
    havoc now;
    assume now > tmpNow;
    assume msgsender_MSG != null;
    assume DType[msgsender_MSG] != owned;
    assume DType[msgsender_MSG] != safeMath;
    assume DType[msgsender_MSG] != StandardToken;
    assume DType[msgsender_MSG] != EPXCrowdsale;
    Alloc[msgsender_MSG] := true;
    goto anon8_Then, anon8_Else;

  anon8_Then:
    assume {:partition} choice == 7;
    call {:si_unique_call 189} initialEPXtokenCount_s292 := initialEPXSupply_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon8_Else:
    assume {:partition} choice != 7;
    goto anon9_Then, anon9_Else;

  anon9_Then:
    assume {:partition} choice == 6;
    call {:si_unique_call 190} remainingEPXtokenCount_s305 := remainingEPXSupply_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon9_Else:
    assume {:partition} choice != 6;
    goto anon10_Then, anon10_Else;

  anon10_Then:
    assume {:partition} choice == 5;
    call {:si_unique_call 191} response_s403 := SetupCrowdsale_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG, _fundingStartBlock_s403, _fundingEndBlock_s403);
    return;

  anon10_Else:
    assume {:partition} choice != 5;
    goto anon11_Then, anon11_Else;

  anon11_Then:
    assume {:partition} choice == 4;
    call {:si_unique_call 192} buy_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon11_Else:
    assume {:partition} choice != 4;
    goto anon12_Then, anon12_Else;

  anon12_Then:
    assume {:partition} choice == 3;
    call {:si_unique_call 193} beneficiaryMultiSigWithdraw_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG, _amount_s567);
    return;

  anon12_Else:
    assume {:partition} choice != 3;
    goto anon13_Then, anon13_Else;

  anon13_Then:
    assume {:partition} choice == 2;
    call {:si_unique_call 194} checkGoalReached_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon13_Else:
    assume {:partition} choice != 2;
    goto anon14_Then, anon14_Else;

  anon14_Then:
    assume {:partition} choice == 1;
    call {:si_unique_call 195} refund_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    return;

  anon14_Else:
    assume {:partition} choice != 1;
    return;
}



procedure CorralEntry_EPXCrowdsale();
  modifies Alloc, Balance, owner_owned, admin_EPXCrowdsale, initialTokenSupply_EPXCrowdsale, tokensRemaining_EPXCrowdsale, beneficiaryWallet_EPXCrowdsale, amountRaisedInWei_EPXCrowdsale, fundingMinCapInWei_EPXCrowdsale, CurrentStatus_EPXCrowdsale, fundingStartBlock_EPXCrowdsale, fundingEndBlock_EPXCrowdsale, isCrowdSaleClosed_EPXCrowdsale, areFundsReleasedToBeneficiary_EPXCrowdsale, isCrowdSaleSetup_EPXCrowdsale, balancesArray_EPXCrowdsale, usersEPXfundValue_EPXCrowdsale, now, tokenReward_EPXCrowdsale, M_Ref_int;



implementation CorralEntry_EPXCrowdsale()
{
  var this: Ref;
  var msgsender_MSG: Ref;
  var msgvalue_MSG: int;

  anon0:
    call {:si_unique_call 196} this := FreshRefGenerator();
    assume now >= 0;
    assume DType[this] == EPXCrowdsale;
    call {:si_unique_call 197} EPXCrowdsale_EPXCrowdsale(this, msgsender_MSG, msgvalue_MSG);
    goto anon2_LoopHead;

  anon2_LoopHead:
    goto anon2_LoopDone, anon2_LoopBody;

  anon2_LoopBody:
    assume {:partition} true;
    call {:si_unique_call 198} CorralChoice_EPXCrowdsale(this);
    goto anon2_LoopHead;

  anon2_LoopDone:
    assume {:partition} !true;
    return;
}


