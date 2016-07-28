StartProgress = false;

[] execVM "scripts\nosidechat.sqf"; //Nosidechat Script
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Custom\safezone.sqf";
[] execVM "Custom\gas\gasmask.sqf";
[] execVM "Custom\gas\teargasGL.sqf";
[] execVM "Custom\lift\init.sqf";
[] execVM "Custom\fn_statusBar.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "core\functions\fn_autoMessages.sqf"; 
fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";
Eject = compile PreProcessFileLineNumbers "Functions\spad.sqf";
disableRemoteSensors true;

//no fog please
[] spawn {
	while{true} do {
		sleep 20;
		300 setFog 0;
		sleep 600;
	};
};

fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";
StartProgress = true;

if(!isDedicated) exitWith{};
Tower2 setVariable ["TTP_terror", false, true];

