

// HQ START

_pos = [4777.991211,1038.435059,-4.76837e-007];
_object = createVehicle ["Land_Cargo_HQ_V3_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 89.9999;
_object setPosATL _pos;

// Lights HQ


_pos = [4781.982422,1037.161499,0.600001];
_object = createVehicle ["Land_PortableLight_single_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 124.953;
_object setPosATL _pos;
//_object enableSimulation false;


_pos = [4773.182617,1034.462158,0.600001];
_object = createVehicle ["Land_PortableLight_single_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 274.953;
_object setPosATL _pos;
//_object enableSimulation false;


respawn_west setpos [ getPos respawn_west select 0, getPos respawn_west select 1, 0.603112];

lixo_blufor addAction ["Limpar lixo",{["scripts\lixo.sqf","BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;}];

