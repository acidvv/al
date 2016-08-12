private["_vehicle","_type","_time","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_veh"];

_vehicle = cursorTarget;
_veh = typeOf _vehicle;

if(!(_veh in["B_G_Offroad_01_armed_F","O_MRAP_02_hmg_F","B_Heli_Light_01_stripped_F","O_MRAP_02_F","B_Heli_Light_01_stripped_F","shounka_monsteur","shounka_monsteur_bleufonce","shounka_monsteur_grise","shounka_monsteur_jaune","shounka_monsteur_noir", "shounka_monsteur_orange","shounka_monsteur_rouge","shounka_monsteur_violet","Mr_Own_hummer_civ_bleufonce","Mr_Own_hummer_civ_grise","Mr_Own_hummer_civ_jaune","Mr_Own_hummer_civ_noir","Mr_Own_hummer_civ_orange","Mr_Own_hummer_civ_rouge","sab_camel_ind_pro","sab_camel_red_pro","sab_camel_blu_pro","sab_camel_ind_B","sab_camel_red_B","sab_camel_blu_B"])) exitWith {hint "Nie można zniszczyć samochód, jeśli nie jest to niezgodne z prawem";};

if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	if(count _vehicleData isEqualTo 0) exitWith {deleteVehicle _vehicle};
  _vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
[0,format["%1 Twój %2 jest konfiskowany ponieważ jest nielegalny.",(_vehicleData select 0) select 1,_vehicleName]] remoteExec ["life_fnc_broadcast",0];
	life_action_inUse = true;
		_upp = "Konfiskata pojazdu";
	//Setup our progress bar.
	disableSerialization;	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
        _cP = 0.01;
	while{true} do	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	5 cutText ["","PLAIN"];
		if(player distance _vehicle > 10) exitWith {hint "Pojazd skonfiskowany.";
 life_action_inUse = false;
};
if(!alive player) exitWith {life_action_inUse = false;
};
	if((count crew _vehicle) isEqualTo 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;
};

_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Car");
			case (_vehicle isKindOf "Ship");
			case (_vehicle isKindOf "Air");
};
[player,_vehicle] remoteExec ["TON_fnc_chopShopSell"];
		hint format["Skonfiskowany %1's należy pamiętać, że to dla dobra sprawy!",_type];
[0,format["%1 destruiu %2's %3 veículo",name player,(_vehicleData select 0) select 1,_vehicleName]] remoteExec ["life_fnc_broadcast",0];
	          } else {
		hint "Konfiskata anulowana.";
	};
};
life_action_inUse = false;
