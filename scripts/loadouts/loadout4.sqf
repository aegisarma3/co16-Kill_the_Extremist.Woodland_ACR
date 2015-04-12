/* Recruta - Soldado */

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

_unit addItem "NVGoggles";
_unit assignItem "NVGoggles";

_unit addMagazines ["hlc_20Rnd_762x51_B_fal",5];
_unit addMagazines ["hlc_20Rnd_762x51_t_fal",1];
_unit addWeapon "hlc_rifle_falosw";

_unit addMagazines ["RH_15Rnd_9x19_SIG",3];
_unit addWeapon "RH_p226";

_unit addItem "optic_Aco";

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