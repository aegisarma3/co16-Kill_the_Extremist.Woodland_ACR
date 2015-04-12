/* Medkit Simples */

waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = player;

removebackpack _unit;
_unit addbackpack "tf_rt1523g";

if(true) exitWith{};