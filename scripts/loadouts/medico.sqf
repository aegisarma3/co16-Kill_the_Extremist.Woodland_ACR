/* Medkit Completo */

waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = player;


_unit addItem "tf_rf7800str";
_unit assignItem "tf_rf7800str";


(unitBackpack _unit) addMagazineCargoGlobal ["cse_packing_bandage",17];
(unitBackpack _unit) addMagazineCargoGlobal ["cse_morphine",40];
(unitBackpack _unit) addMagazineCargoGlobal ["cse_epinephrine",40];
(unitBackpack _unit) addMagazineCargoGlobal ["cse_atropine",35];
(unitBackpack _unit) addMagazineCargoGlobal ["cse_bandage_basic",5];


_unit addMagazines ["cse_morphine",2];
_unit addMagazines ["cse_epinephrine",2];
_unit addMagazines ["cse_saline_iv",12];
_unit addMagazines ["cse_packing_bandage",23];
_unit addMagazines ["cse_bandage_basic",25];
_unit addMagazines ["cse_personal_aid_kit",1];



if(true) exitWith{};