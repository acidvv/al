#include "..\..\script_macros.hpp"
/*
	File: fn_blindfold.sqf
	Author: Jason_000
	Description:
	Blindfolds the chosen player
	
*/
private["_player"];
_player = cursorTarget;

//Checks to see if the person you are going to punch in the balls is alive/is actually a player..
if(isNull _player) exitWith {};
if(!isPlayer _player) exitWith {};
if(player distance _player > 4) exitWith {};
if(!(_player getVariable "Restrained")) exitWith {hint "nie jestes aresztowany"};
if(!([false,"blindfold",1] call life_fnc_handleInv)) exitWith {};
//end of checks
	

	titleText[format["masz związane %1!",_player] ,"PLAIN"]; //Doesn't work properly watch this
	sleep 0.08;
[_player,profileName] remoteExecCall ["life_fnc_blindfoldAction",_player];
