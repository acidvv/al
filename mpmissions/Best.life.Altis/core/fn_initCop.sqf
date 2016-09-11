#include "..\script_macros.hpp"
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Cop Initialization file.
*/
private "_end";
player addRating 9999999;
enableRadio false;
enableSentences false;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

if(life_blacklisted) exitWith {
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(FETCH_CONST(life_coplevel) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];
[] call life_fnc_spawnMenu;
[] spawn life_fnc_placeablesInit;
waitUntil{!isNull (findDisplay 38500)}; 
waitUntil{isNull (findDisplay 38500)}; 

switch (FETCH_CONST(life_coplevel)) do
{
	case 1: { life_paycheck = life_paycheck + 3500; }; 
    case 2: { life_paycheck = life_paycheck + 4000; }; 
    case 3: { life_paycheck = life_paycheck + 6000; }; 
    case 4: { life_paycheck = life_paycheck + 8000; }; 
    case 5: { life_paycheck = life_paycheck + 10000; }; 
    case 6: { life_paycheck = life_paycheck + 12000; }; 
    case 7: { life_paycheck = life_paycheck + 14000; }; 
	default { life_paycheck = life_paycheck };
};
