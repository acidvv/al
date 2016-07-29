/*
File: fn_seatbelt.sqf
*/

private ["_criticalSpeed","_veh","_speed","_vel","_pos"];

_criticalSpeed = 90;
while {!isDedicated} do
{
	waitUntil {vehicle player != player};
	_veh = vehicle player;
	_speed = speed _veh;
	if (_speed > _criticalSpeed) then
	{
		_vel = velocity _veh;
		sleep 0.5;
		if ( _speed - (speed _veh) > _criticalSpeed ) then
		{
			_pos = getPos player;
			moveOut player;
			player disableCollisionWith _veh; // not sure if this works
			player setPos [(_pos select 0) + (_vel select 0), (_pos select 1) + (_vel select 1), (_pos select 2) + (_vel select 2)];
			player setDir getDir _veh;
			player setVelocity [(_vel select 0), (_vel select 1), (_vel select 2) + 3];

			sleep 2;
			player enableCollisionWith _veh;
		};
	};
	sleep 0.2;
};