#include "..\..\script_macros.hpp"
/*
	File: fn_s_onCheckedChange.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Switching it up and making it prettier..
*/
private["_option","_state"];
_option = SEL(_this,0);
_state = SEL(_this,1);

switch(_option) do {
	case "tags": {
		if(EQUAL(_state,1)) then {
			life_settings_tagson = true; 
			SVAR_PNAS["life_settings_tagson",true];
			LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
		} else {
			life_settings_tagson = false;
			SVAR_PNAS["life_settings_tagson",false];
			[LIFE_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		};
	};
	
	case "objects": {
		if(EQUAL(_state,1)) then {
			life_settings_revealObjects = true;
			SVAR_PNAS["life_settings_revealObjects",true];
			LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
		} else {
			life_settings_revealObjects = false; 
			SVAR_PNAS["life_settings_revealObjects",false];
			[LIFE_ID_RevealObjects,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
		};
	};
	
	case "sidechat": {		
		if(EQUAL(_state,1)) then {
			life_enableSidechannel = true;
			SVAR_PNAS["life_enableSidechannel",true];
			life_settings_enableSidechannel = GVAR_PNAS["life_enableSidechannel",true];
		} else {
			life_enableSidechannel = false;
			SVAR_PNAS["life_enableSidechannel",false];
			life_settings_enableSidechannel = GVAR_PNAS["life_enableSidechannel",false];
		};
		[player,life_settings_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_managesc",RSERV];
	};
	 case "broadcast": {
         if (_state isEqualTo 1) then {
             life_enableNewsBroadcast = true;
             profileNamespace setVariable ["life_enableNewsBroadcast",true];
             life_settings_enableNewsBroadcast = profileNamespace getVariable ["life_enableNewsBroadcast",true];
         } else {
             life_enableNewsBroadcast = false;
             profileNamespace setVariable ["life_enableNewsBroadcast",false];
             life_settings_enableNewsBroadcast = profileNamespace getVariable ["life_enableNewsBroadcast",false];
         };
     };
};