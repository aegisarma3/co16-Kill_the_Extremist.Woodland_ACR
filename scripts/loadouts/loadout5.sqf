/* Piloto */

waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = player;

removeallweapons _unit;
removeallassigneditems _unit;
removeAllItems _unit;
removevest _unit;
removeHeadGear _unit;
removeUniform _unit;

_unit addHeadgear "H_PilotHelmetHeli_B";
_unit addvest "vest_fl";
_unit adduniform "soldado_fl";
_unit addItem "tf_rf7800str";
_unit addItem "itemcompass";
_unit addItem "itemmap";
_unit addItem "itemwatch";
_unit addItem "itemSMGR";
_unit assignItem "tf_rf7800str";
_unit assignItem "itemcompass";
_unit assignItem "itemmap";
_unit assignitem "itemwatch";

_unit additem "x39_tourniquet";
(unitBackpack _unit) addItemCargoGlobal ["x39_medikit5",1];
_unit additem "x39_earplug";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";
_unit additem "x39_bandage";

if(true) exitWith{};