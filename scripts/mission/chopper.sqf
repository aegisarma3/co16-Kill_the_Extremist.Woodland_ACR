_mygroup = [getmarkerpos "chopper", EAST, ["O_Heli_Attack_02_black_F"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;

_wp1 = _mygroup addWaypoint [getmarkerpos "chopper_wp1", 0]; 
_wp1 setWaypointType "MOVE"; 
_wp1 setWaypointCombatMode "GREEN";
_wp1 setWaypointSpeed "FULL"; 
_wp1 setWaypointBehaviour "COMBAT"; 
_wp1 setWaypointFormation "LINE";


_wp2 = _mygroup addWaypoint [getmarkerpos "chopper_wp2", 0]; 
_wp2 setWaypointType "MOVE"; 
_wp2 setWaypointCombatMode "GREEN";
_wp2 setWaypointSpeed "FULL"; 
_wp2 setWaypointBehaviour "COMBAT"; 
_wp2 setWaypointFormation "LINE";


_wp3 = _mygroup addWaypoint [getmarkerpos "chopper_wp3", 0]; 
_wp3 setWaypointType "GUARD"; 
_wp3 setWaypointCombatMode "RED";
_wp3 setWaypointSpeed "FULL"; 
_wp3 setWaypointBehaviour "COMBAT"; 
_wp3 setWaypointFormation "LINE";

