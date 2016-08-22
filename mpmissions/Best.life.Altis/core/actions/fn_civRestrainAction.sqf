#include "..\..\script_macros.hpp"
/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; 
if((player distance _unit > 3)) exitWith {};
if((_unit GVAR "restrained")) exitWith {};
if((_unit GVAR "civrestrained")) exitWith {};
if(player isEqualTo _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

if(life_inv_zipties < 1) then
{
    hint "Nie masz Zippów";
} else {
    life_inv_zipties = life_inv_zipties - 1;
    //Broadcast!
    [_unit,"ziptie"] remoteExec ["life_fnc_globalSound",0]; 
    _unit SVAR["civrestrained",true,true];
    hint "you have restrained the player";
	[player] remoteExec [ "life_fnc_civRestrain", _unit];
};
