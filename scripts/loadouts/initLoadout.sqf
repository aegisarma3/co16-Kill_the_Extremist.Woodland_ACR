

if (player iskindof "medico_tg") then
{

	null = [this] execVM "scripts\loadouts\medico.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\medico.sqf'"];

};


if (player iskindof "ten_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};



if (player iskindof "soldado_auto_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};



if (player iskindof "granadeiro_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};


if (player iskindof "soldado_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};

if (player iskindof "sniper_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};

if (player iskindof "capitao_tg") then
{

	null = [this] execVM "scripts\loadouts\padrao.sqf";
	this addEventHandler ["respawn","_this execVM 'scripts\loadouts\padrao.sqf'"];

};


