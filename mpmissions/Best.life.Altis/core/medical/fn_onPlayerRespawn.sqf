#include "..\..\script_macros.hpp"
/*
	File: fn_onPlayerRespawn.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Does something but I won't know till I write it...
*/
private["_unit","_corpse","_containers"];
_unit = SEL(_this,0);
_corpse = SEL(_this,1);
life_corpse = _corpse;

//Comment this code out if you want them to keep the weapon on the ground.
_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5]; 
{deleteVehicle _x;} forEach _containers; //Delete the containers.

//Set some vars on our new body.
_unit SVAR ["restrained",false,true];
_unit SVAR ["Escorting",false,true];
_unit SVAR ["transporting",false,true];
_unit SVAR ["masked",false,true];
_unit SVAR ["playerSurrender",false,true];
_unit SVAR ["steam64id",steamid,true]; 
_unit SVAR ["realname",profileName,true]; 

_unit addRating 1e12;
player playMoveNow "AmovPpneMstpSrasWrflDnon";

[] call life_fnc_setupActions;
[_unit,life_settings_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_managesc",RSERV];
if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),0)) then {player enableFatigue false;};
