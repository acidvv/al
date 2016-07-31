#include "..\..\script_macros.hpp"
/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {\
		if (_unit getVariable["Revive",false]) exitWith {};
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball","B_65x39_Caseless"] && _curWep in ["hgun_P07_snds_F","arifle_MXC_Black_F"]) then {
			if(side _source isEqualTo west && playerSide isEqualTo civilian) then {
				private["_distance"];
				_distance = if(_projectile == "B_65x39_Caseless") then {100} else {35};
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !life_isknocked && !(_unit GVAR ["restrained",false])) then {
						if (vehicle player != player) then {
							if (typeOf (vehicle player) == "B_Quadbike_01_F") then {
								player action ["Eject",vehicle player];
								[_unit,_source] spawn life_fnc_tazed;
							};
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};

			//Temp fix for super tasers on cops.
			if(side _source isEqualTo west && (playerSide isEqualTo west OR playerSide isEqualTo independent)) then {
				_damage = false;
			};
		};
	};
};



if (_projectile in ["mini_Grenade"]) then
{
	// Player was flashbanged
	_damage = 0;
	[_projectile] spawn life_fnc_handleFlashbang;
};

//Pasy
if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source isEqualTo _unit)) then {
	if (life_seatbelt) then { _damage = _damage / 2 };
};
[] call life_fnc_hudUpdate;
_damage;


