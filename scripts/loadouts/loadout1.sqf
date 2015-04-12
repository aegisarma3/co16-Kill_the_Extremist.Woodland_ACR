/* Medkit Completo */

waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = player;

removeallweapons _unit;
removeallassigneditems _unit;
removeAllItems _unit;
removevest _unit;
removeHeadGear _unit;
removeUniform _unit;

_unit addHeadgear "helmet_fl";
_unit addvest "vest_fl";
_unit addbackpack "mochila_fl";
_unit adduniform "soldado_fl";
_unit addItem "tf_rf7800str";
_unit addItem "itemcompass";
_unit addItem "itemmap";
_unit addItem "itemwatch";
_unit assignItem "tf_rf7800str";
_unit assignItem "itemcompass";
_unit assignItem "itemmap";
_unit assignitem "itemwatch";

(unitBackpack _unit) addItemCargoGlobal ["x39_medikit5",4];
(unitBackpack _unit) addItemCargoGlobal ["x39_tourniquet",2];
(unitBackpack _unit) addItemCargoGlobal ["x39_defibrillator",1];
(unitBackpack _unit) addItemCargoGlobal ["x39_bloodbag",5];
_unit additem "x39_medikit5";
_unit additem "x39_bloodbag";
_unit additem "x39_bloodbag";
_unit additem "x39_bloodbag";
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
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_morphine";
_unit additem "x39_epinephrine";
_unit additem "x39_epinephrine";
_unit additem "x39_epinephrine";
_unit additem "x39_epinephrine";
_unit additem "x39_epinephrine";
_unit additem "x39_epinephrine";

if(true) exitWith{};