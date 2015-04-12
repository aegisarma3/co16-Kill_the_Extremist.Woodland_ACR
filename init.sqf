if ((!isServer) && (player != player)) then {waitUntil {player == player};}; // Player sync

// ***************************************************************************************
// BREAK * BREAK * BREAK * BREAK * BREAK * BREAK * BREAK * BREAK * BREAK * BREAK * BREAK *
// ***************************************************************************************


// Sincroniza essa porcaria
//[] execVM "scripts\jip.sqf";
enableSaving [false,false];


//execVM "initIntro.sqf";
execVM "tpw.sqf";
setTerrainGrid 25;
[8,true,true,12] execFSM "scripts\timeModule.fsm";


"evac" setMarkerAlpha 0;



// Tasks
[[
	["cia_op","Coletar informação sobre extremista.","Coletar informação deixada por Alexey sobre possível localização do extremista Vladimir Katkić e enviar para o comando usando o OPSAT de seu GPS.",true,["cia_op_task",getmarkerpos "cia_op","mil_end","ColorRed", "  ALPHA: Coletar informações"]],
	["csat","Verificar apoio mecanizado.","Existem suspeitas de ajuda externa aos extremistas. Encontre e elimine qualquer armamento ou veículo que possa prejudicar ainda mais a situação em Bystrica.",true,["csat_task",getmarkerpos "csat_marker","mil_unknown","ColorOrange", "  BRAVO: Verificar ajuda externa"]],
	["tower01","Desabilitar comunicações.","Comando detectou inteligência dos extremistas pedindo reforços. Destrua essas antenas para cessar as comunicações.",true,["tower01_task",getmarkerpos "comm_tower01","mil_marker","ColorBlue", "  CHARLIE: Desabilitar comunicações."]],
	["tower02","Desabilitar comunicações.","Comando detectou inteligência dos extremistas pedindo reforços. Destrua essas antenas para cessar as comunicações.",true,["tower02_task",getmarkerpos "comm_tower02","mil_marker","ColorBlue", "  DELTA: Desabilitar comunicações."]],
	["tower03","Desabilitar comunicações.","Comando detectou inteligência dos extremistas pedindo reforços. Destrua essas antenas para cessar as comunicações.",true,["tower03_task",getmarkerpos "comm_tower03","mil_marker","ColorBlue", "  ECHO: Desabilitar comunicações."]],
	["device","Encontrar e destruir.","Segundo fontes seguras, os extremistas estão em posse de uma bomba biológica. Encontre e destrua esse artefato.",true,["bomb_task",getmarkerpos "bomb_marker","mil_warning","ColorRed", "  FOXTROT: Encontre e destrua."]],
	["intel","Ajudar a resitência.","Recebemos informações que existe uma célula de resitência na região. Verifique se eles possuem alguma informação sobre as tropas da região.",true,["intel_task",getmarkerpos "intel_marker","mil_unknown","ColorRed", "  GOLF: Ajudar a resistência."]]
],[
	["Missão","Eliminar o extremista Vladimir Katkić e sair do país.",blufor],
	["Situação","O atual cenário em Bystrica é grave. Com a ordem de retirada da base do país, extremistas tomaram o controle de vários pontos da cidade, procurando por qualquer pessoa que não seja local da região. ",blufor],
	["Instruções","A ordem de retirada já está sendo executada. Entretanto, para manter a possibilidade de um retorno militar ao país, devemos eliminar o líder dos extremistas responsáveis pelas manifestações e atividades rebeldes.",blufor],
	["Execução","Nossa inteligência recebeu um contato via OPSAT de Alexey Vargek, que alega ter informações da localização do líder extremista, Vladimir Katkić. Ele deixou a informação no ponto de contato ALPHA.",blufor]

]]  execVM "scripts\shk_taskmaster.sqf";

intel_dropbox addAction ["Coletar inteligência",{["scripts\mission\laptop.sqf","BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;},"",1,true,true,"","(_target distance _this) < 2"];












/*Logistica - Inicio*/
0 = execVM "scripts\IgiLoad\IgiLoadInit.sqf";
/*Logistica - Fim*/


// Coloca AGM nos carros de policia
clearMagazineCargoGlobal caixa_arsenal;
clearWeaponCargoGlobal caixa_arsenal;
clearItemCargoGlobal caixa_arsenal;
clearBackpackCargoGlobal caixa_arsenal;
clearMagazineCargoGlobal caixa_arsenal;
clearWeaponCargoGlobal caixa_arsenal;
clearItemCargoGlobal caixa_arsenal;
clearBackpackCargoGlobal caixa_arsenal;





caixa_arsenal additemCargoGlobal ["AGM_EarBuds", 200];
caixa_arsenal additemCargoGlobal ["AGM_Bandage", 400];
caixa_arsenal additemCargoGlobal ["AGM_Morphine", 400];
caixa_arsenal additemCargoGlobal ["AGM_Epipen", 400];
caixa_arsenal additemCargoGlobal ["AGM_Bloodbag", 400];
caixa_arsenal additemCargoGlobal ["AGM_Clacker", 200];
caixa_arsenal additemCargoGlobal ["AGM_DefusalKit", 200];
caixa_arsenal additemCargoGlobal ["AGM_MapTools", 200];
caixa_arsenal additemCargoGlobal ["AGM_SpareBarrel", 200];
caixa_arsenal additemCargoGlobal ["AGM_ItemKestrel", 200];
caixa_arsenal additemCargoGlobal ["AGM_muzzle_mzls_H", 200];
caixa_arsenal additemCargoGlobal ["AGM_muzzle_mzls_B", 200];
caixa_arsenal additemCargoGlobal ["AGM_muzzle_mzls_L", 200];
caixa_arsenal additemCargoGlobal ["AGM_muzzle_mzls_smg_01", 200];
caixa_arsenal additemCargoGlobal ["AGM_muzzle_mzls_smg_02", 200];
caixa_arsenal additemCargoGlobal ["AGM_M84", 200];


/* Editor 3D - here is the code required to spawn captured objects - Inicio*/
if (isServer) then {[] call compile preprocessfilelinenumbers "scripts\editor\data.sqf";};
/* Editor 3D - here is the code required to spawn captured objects - Fim*/








/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// CLIENT SIDE PARA NESTA LINHA  /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if (!isServer) exitWith {};
sleep 1;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// SERVER SIDE A PARTIR DESTA LINHA  /////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////






















