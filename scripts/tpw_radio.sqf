/* 
TPW RADIO - Ambient radio chatter when near/in vehicles, ambient music when near/in houses
Author: tpw 
Date: 20140619
Version: 1.15
Requires: CBA A3, tpw_core.sqf
Compatibility: SP, MP client

Disclaimer: Feel free to use and modify this code, on the proviso that you post back changes and improvements so that everyone can benefit from them, and acknowledge the original author (tpw) in any derivative works.     

To use: 
1 - Save this script into your mission directory as eg tpw_radio.sqf
2 - Call it with 0 = [1,1,60] execvm "tpw_radio.sqf"; where 1 = radio in houses (0 = no radio), 1 = radio in vehicles (0 = no radio), 60 = maximum time between vehicle radio messages. 0 = no messages

THIS SCRIPT WON'T RUN ON DEDICATED SERVERS.
*/

// if (isDedicated) exitWith {};
if (count _this < 3) exitwith {hint "TPW RADIO incorrect/no config, exiting."};
if (_this select 2 == 0) exitwith {};
WaitUntil {!isNull FindDisplay 46};

// READ IN CONFIGURATION VALUES
tpw_radio_version = "1.15"; // Version string
tpw_radio_house = _this select 0; // radio in houses
tpw_radio_car = _this select 1; // radio in vehicles
tpw_radio_time = _this select 2; // maximum time between radio bursts
tpw_radio_active = true; // Global enable/disabled
tpw_radio_radius = 25; // Distance around player to spawn radios into houses
tpw_radio_songlist = [589,645,535,341,163,260,79,196,163,262,310,328,447,219,259];// Length (sec) of each track

// DFAULT VALUES IF MP
if (isMultiplayer) then 
	{
	tpw_radio_house = 1;
	tpw_radio_car = 1;
	tpw_radio_time = 60;
	};

// DON'T PLAY MILITARY RADIO IN CIVILIAN VEHICLES
private ["_cfg"];
tpw_radio_carlist = [];
_cfg = (configFile >> "CfgVehicles");
for "_i" from 0 to ((count _cfg) -1) do 
	{
	if (isClass ((_cfg select _i) ) ) then 
		{
		_cfgName = configName (_cfg select _i);
		if ( (_cfgName isKindOf "car") && {getNumber ((_cfg select _i) >> "scope") == 2} && {getNumber ((_cfg select _i) >> "side") == 3}) then 
			{
			tpw_radio_carlist set [count tpw_radio_carlist,_cfgname];
			};
		};
	};

// CAR SCANNING LOOP
tpw_radio_fnc_carscan = {
	while {true} do
		{
		private ["_sound","_veh"];
		
		// Player inside vehicle - play radio using playmusic so it follows vehicle
		if (player != vehicle player) then 
			{
			_veh = vehicle player;
			if (
				!(typeof  _veh in tpw_radio_carlist) &&
				{!(_veh iskindof "StaticWeapon")} &&
				{!(_veh iskindof "ParachuteBase")}
				) then
				{
				if (tpw_radio_carplay) then
					{
					playmusic format ["RadioAmbient%1",floor (random 31)];
					};
				}
			} 
			else
			{
			// Player near vehicle - play radio using playsound3d at vehicle position
			_veh = ((position player) nearEntities [["Air", "Landvehicle"], 10]) select 0;
			if (!isnil "_veh") then
				{
				if (
				!(typeof _veh in tpw_radio_carlist) &&
				{!(_veh iskindof "StaticWeapon")} &&
				{!(_veh iskindof "ParachuteBase")}
				) then
					{
					_sound = format ["A3\Sounds_F\sfx\radio\ambient_radio%1.wss",floor (random 31)];
					playsound3d [_sound,_veh,true,getPosasl _veh,1,1,50];
					};
				};
			};
		sleep random tpw_radio_time;
		};
	};	

// HOUSE SCANNING LOOP
tpw_radio_fnc_housescan =
	{
	private ["_nearhouses","_house","_i"];
	while {true} do
		{
		if (tpw_radio_active) then 
			{
			// Scan for habitable houses 
			[tpw_radio_radius] call tpw_core_fnc_houses;
			_nearhouses = tpw_core_houses;
			
			for "_i" from 0 to (count _nearhouses - 1) do
				{
				_house = _nearhouses select _i;
				if (_house getvariable ["tpw_radio_songflag",0] == 0  && {daytime > 5 && daytime < 23}) then 
					{
					[_house] spawn tpw_radio_fnc_play; 
					};
				};
			sleep 10;
			};
		};
	};

// PLAY RADIO IN HOUSES
tpw_radio_fnc_play =
	{
	private ["_house","_sel","_len","_finish","_song","_vol"];
	_house = _this select 0;
	while {true} do
		{
		if (player distance _house > tpw_radio_radius) exitwith {};
		if (_house getvariable ["tpw_radio_songflag",0] == 0) then
			{
			[_house] spawn	
				{
				_house = _this select 0;
				_sel = floor random 15;
				_len = tpw_radio_songlist select _sel;
				_song = format ["TPW_MUSIC\music\%1.ogg",(_sel + 1)];
				_finish = diag_ticktime + _len;
				_house setvariable ["tpw_radio_songflag",_finish,true];
				_vol = 1 + (random 1);
				playsound3d [_song,_house,true,getposasl _house,_vol,1,25];
				waituntil
					{
					sleep 5;
					(diag_ticktime > _house getvariable "tpw_radio_songflag");
					};	
				_house setvariable ["tpw_radio_songflag",0,true];
				};
			};	
		sleep 5;
		};
	};

// DETECT IF MUSIC IS PLAYING, SO CAR RADIO WON'T INTERFERE	
tpw_radio_carplay=true;
_musicdetectstart = addMusicEventHandler ["MusicStart","tpw_radio_carplay=false"];
_musicdetectend = addMusicEventHandler ["MusicStop", "tpw_radio_carplay=true"];	

// RUN IT	
sleep random tpw_radio_time;
if (tpw_radio_car == 1) then 
	{
	[] spawn tpw_radio_fnc_carscan;	
	};
if (tpw_radio_house == 1) then 
	{
	[] spawn tpw_radio_fnc_housescan;	
	};
	
while {true} do
	{
	// dummy loop so script doesn't terminate
	sleep 10;
	};	