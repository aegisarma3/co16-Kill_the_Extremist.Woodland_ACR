/* Geral */

waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = player;



_unit addItem "tf_rf7800str";
_unit assignItem "tf_rf7800str";




_unit addMagazines ["cse_bandage_basic",10];
_unit addMagazines ["cse_packing_bandage",8];
_unit addMagazines ["cse_tourniquet",6];

if(true) exitWith{};