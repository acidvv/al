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
[] execVM "core\civilian\fn_safezones.sqf";

fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";
Eject = compile PreProcessFileLineNumbers "scripts\spad.sqf";
disableRemoteSensors true;

//Access Points
[
    true, /* _useMissionTriggers */
    true, /* _isTravelDelayEnabled */
    10, /* _travelSpeed */
    20 /* _maxTravelDuration */
] execVM "core\ap\fn_init.sqf";
// Clean Up Players
[
	10*60, // seconds to delete dead bodies (0 means don't delete) 
	35*60, // seconds to delete dead vehicles (0 means don't delete)
	0, // seconds to delete dropped weapons (0 means don't delete)
	0, // seconds to deleted planted explosives (0 means don't delete)
	0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "scripts\repetitive_cleanup.sqf";

StartProgress = true;

if(!isDedicated) exitWith{};
Tower2 setVariable ["TTP_terror", false, true];

