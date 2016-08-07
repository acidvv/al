/*
	File: fn_wantedRemove.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm

	Description:
	Removes a person from the wanted list.
*/
private["_uid","_query"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
if(_uid == "") exitWith {}; //Bad data

_query = format["UPDATE wanted SET active = '0', wantedCrimes = '[]', wantedBounty = 0 WHERE wantedID='%1'",_uid];
[_query,2] call DB_fnc_asyncCall;
_IFoundYou = ObjNull;

{
    if(getPlayerUid _x isEqualTo _uid) then
    {
        _IFoundYou = _x;
    };
} foreach allPlayers;

myBounty = -1;
(owner _IFoundYou) publicVariableClient "myBounty";