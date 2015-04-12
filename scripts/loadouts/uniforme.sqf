/* Uniforme */
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
_unit assignItem "tf_rf7800str";
_unit assignItem "itemcompass";
_unit assignItem "itemmap";
_unit assignitem "itemwatch";

if(true) exitWith{};