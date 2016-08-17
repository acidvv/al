StartProgress = false;

[] execVM "scripts\nosidechat.sqf"; //Nosidechat Script
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Custom\gas\gasmask.sqf";
[] execVM "Custom\gas\teargasGL.sqf";
[] execVM "Custom\lift\init.sqf";
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
	20*60, // seconds to delete dead bodies (0 means don't delete) 
	35*60, // seconds to delete dead vehicles (0 means don't delete)
	0, // seconds to delete dropped weapons (0 means don't delete)
	0, // seconds to deleted planted explosives (0 means don't delete)
	0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "Custom\repetitive_cleanup.sqf";


```AR_SUPPORTED_VEHICLES_OVERRIDE = [ "I_Heli_Transport_02_F", "B_Heli_Transport_03_unarmed_F" ,"O_Heli_Transport_04_Box_F" ,"MV22" ]; ```
```ASL_SUPPORTED_VEHICLES_OVERRIDE = [ "Air" ]; ```