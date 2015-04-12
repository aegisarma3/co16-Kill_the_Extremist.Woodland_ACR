_ambush01 = [getmarkerpos "ambush01", EAST, ["CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_GL","CAF_AG_EEUR_R_PKM","CAF_AG_EEUR_R_RPG","CAF_AG_EEUR_R_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_ambush02 = [getmarkerpos "ambush02", EAST, ["CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_GL","CAF_AG_EEUR_R_PKM","CAF_AG_EEUR_R_RPG","CAF_AG_EEUR_R_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_ambush03 = [getmarkerpos "ambush03", EAST, ["CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_GL","CAF_AG_EEUR_R_PKM","CAF_AG_EEUR_R_RPG","CAF_AG_EEUR_R_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_ambush04 = [getmarkerpos "ambush04", EAST, ["CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_GL","CAF_AG_EEUR_R_PKM","CAF_AG_EEUR_R_RPG","CAF_AG_EEUR_R_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_ambush05 = [getmarkerpos "ambush05", EAST, ["CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_GL","CAF_AG_EEUR_R_PKM","CAF_AG_EEUR_R_RPG","CAF_AG_EEUR_R_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_ambush06 = [getmarkerpos "ambush06", EAST, ["CAF_AG_eeur_r_Offroad_armed_01","CAF_AG_eeur_r_Offroad_armed_01"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;



_wp_ambush01 = _ambush01 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush01 setWaypointType "GUARD"; 
_wp_ambush01 setWaypointCombatMode "RED";
_wp_ambush01 setWaypointSpeed "FULL"; 
_wp_ambush01 setWaypointBehaviour "COMBAT"; 
_wp_ambush01 setWaypointFormation "COLUMN";

_wp_ambush02 = _ambush02 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush02 setWaypointType "GUARD"; 
_wp_ambush02 setWaypointCombatMode "RED";
_wp_ambush02 setWaypointSpeed "FULL"; 
_wp_ambush02 setWaypointBehaviour "COMBAT"; 
_wp_ambush02 setWaypointFormation "COLUMN";

_wp_ambush03 = _ambush03 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush03 setWaypointType "GUARD"; 
_wp_ambush03 setWaypointCombatMode "RED";
_wp_ambush03 setWaypointSpeed "FULL"; 
_wp_ambush03 setWaypointBehaviour "COMBAT"; 
_wp_ambush03 setWaypointFormation "COLUMN";

_wp_ambush04 = _ambush04 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush04 setWaypointType "GUARD"; 
_wp_ambush04 setWaypointCombatMode "RED";
_wp_ambush04 setWaypointSpeed "FULL"; 
_wp_ambush04 setWaypointBehaviour "COMBAT"; 
_wp_ambush04 setWaypointFormation "COLUMN";

_wp_ambush05 = _ambush05 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush05 setWaypointType "GUARD"; 
_wp_ambush05 setWaypointCombatMode "RED";
_wp_ambush05 setWaypointSpeed "FULL"; 
_wp_ambush05 setWaypointBehaviour "COMBAT"; 
_wp_ambush05 setWaypointFormation "COLUMN";

_wp_ambush06 = _ambush06 addWaypoint [getmarkerpos "ambush_waypoint", 0]; 
_wp_ambush06 setWaypointType "GUARD"; 
_wp_ambush06 setWaypointCombatMode "RED";
_wp_ambush06 setWaypointSpeed "FULL"; 
_wp_ambush06 setWaypointBehaviour "COMBAT"; 
_wp_ambush06 setWaypointFormation "COLUMN";