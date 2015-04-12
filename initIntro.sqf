titleCut ["", "BLACK faded", 0];  sleep 6;  titleCut ["", "BLACK IN", 1];
if (hasInterface) then {
    private ["_cam","_camx","_camy","_camz","_object"];
    waituntil {!(isnull player)};

    enableEnvironment false;
    setViewDistance 500;
    //_video = ["videos\intro.ogv"] spawn bis_fnc_playVideo;
    //sleep 0.5;
    //_title = parsetext "<t size='2.0'>Tensão em Bystrica</t><br />Porta voz do Pentágono anuncia retirada de tropas do país";
    //_scroll = parsetext "Novas manifestações aumentam após anúncio - Base americana sofre primeiro atentado em 4 anos - Informações de Amir Sokolov são liberadas na Internet - Governo da Slovakia nega ligação com manifestantes - Turista é morto e mais 4 são feridos em explosão no centro da cidade";
    //_aan = [_title,_scroll] spawn BIS_fnc_AAN;

    //cuttext ["","plain"];
    //waitUntil {scriptDone _video};

    playMusic "intro_bts";

    _object = player;
    _camx = getposATL player select 0;
    _camy = getposATL player select 1;
    _camz = getposATL player select 2;


    // Retira o Overlay do AAN
    //(uinamespace getvariable "BIS_AAN") closedisplay 1;
    _cam = "camera" CamCreate [_camx +400 ,_camy - 400,_camz+100];


    _cam CamSetTarget player;
    _cam CameraEffect ["Internal","Back"];
    _cam CamCommit 0;

    _cam camsetpos [_camx -15 ,_camy + 15,_camz+0];
    _cam CamCommit 15;

	["<t size='4.5' ><img image=""signs\logo.paa"" /><br/><t size='1.0' color='#7A0A0A'>Buffalos Tactical Squad<br/><t size='1.0' color='#FFFFFF'>Apresenta</t>",0,0.2,5,1,0.0] spawn bis_fnc_dynamictext;

    sleep 5;

    ["<t size='1.0' color='#7A0A0A'>Kill the Extremist<t size='0.5' color='#FFFFFF'>v3.0<t size='1.0' color='#FFFFFF'> Desenvolvida por <br/><t size='0.6' color='#FFFFFF'>Toaster [BTS]</t>",0,0.2,3,1,0.0] spawn bis_fnc_dynamictext;

    sleep 10;



    _cam CameraEffect ["Terminate","Back"];
    CamDestroy _cam;
    //waitUntil{!(isNil "BIS_fnc_init")};
    setViewDistance 900;
    [str ("Porto de Bystrica"), str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Retirada")] call BIS_fnc_infoText;

    sleep 5;

    playMusic "";


};
