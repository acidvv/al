StartProgress = false;

[] execVM "scripts\nosidechat.sqf"; 
[] execVM "briefing.sqf"; 
[] execVM "KRON_Strings.sqf";
[] execVM "Custom\gas\gasmask.sqf";
[] execVM "Custom\gas\teargasGL.sqf";
[] execVM "Custom\fn_statusBar.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "core\functions\fn_autoMessages.sqf"; 


fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";

disableRemoteSensors true;

//no fog please
[] spawn {
	while{true} do {
		sleep 20;
		300 setFog 0;
		sleep 600;
	};
};




if(!isDedicated) exitWith{};
Tower2 setVariable ["TTP_terror", false, true];
StartProgress = true;

// Clean Up Players
[
	25*60, 
	60*60, 
	0, 
	0, 
	0 
] execVM "Custom\repetitive_cleanup.sqf";
[] execVM "scripts\real_weather.sqf";
AR_SUPPORTED_VEHICLES_OVERRIDE = [ "I_Heli_Transport_02_F", "B_Heli_Transport_03_unarmed_F" ,"O_Heli_Transport_04_Box_F" ,"MV22" ]; 
ASL_SUPPORTED_VEHICLES_OVERRIDE = [ "Air" ]; 
