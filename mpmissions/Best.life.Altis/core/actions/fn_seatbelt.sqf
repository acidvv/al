/*
File: fn_seatbelt.sqf
*/

[player,"seatbelt"] remoteExec ["life_fnc_globalSound",0]; 

if (!life_seatbelt) then {
	life_seatbelt = true;
} else {
	life_seatbelt = false;
};