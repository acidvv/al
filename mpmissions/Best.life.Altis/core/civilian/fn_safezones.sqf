/*
 File: fn_safezones.sqf
 Author: keine Ahnung :D Hab das Script vor ewigkeiten mal auf meiner platte Gefunden
 Editor: #Provokan
 Description: kein Kravalla in Kavalla :)
 löscht die einzelnen Kugeln. 
*/
private ["_eh1","_inArea","_zone1","_zone2","_zone3","_zone4","_zone5","_dis"];
_zone1 = getMarkerPos "safezone_kav"; // <-- HIER EURE SAFE_ZONE NAMEN REIN !!!
_zone2 = getMarkerPos "safezone_sof"; // <-- HIER EURE SAFE_ZONE NAMEN REIN !!!
_zone3 = getMarkerPos "safezone_pygros"; // <-- HIER EURE SAFE_ZONE NAMEN REIN !!!
_zone4 = getMarkerPos "safezone_ath"; // <-- HIER EURE SAFE_ZONE NAMEN REIN !!!
_zone5 = getMarkerPos "safezone_vip"; // <-- HIER EURE SAFE_ZONE NAMEN REIN !!!
_dis = 175; // DISTANCE SAFE ZONE (euren Marker Radius angeben) 
_inArea = false;
switch (playerSide) do
{
 case civilian:
 {
 while {true} do
 {
 if (alive player) then
 { 
 if (((_zone1 distance player < _dis) || (_zone2 distance player < _dis) || (_zone3 distance player < _dis)) || (_zone4 distance player < _dis) && (!_inArea)) then //|| (_zone5 distance player < _dis))
 { 
 _eh1 = player addEventHandler ["fired", {deleteVehicle (_this select 6);}];
 _inArea = true;
 hint parseText "<t color='#FF0000'><t size='2'><t align='center'>UWAGA<br/><br/><t align='center'><t size='1'><t color='#ffffff'> Zakaz strzelania, okradania, powalania i przejeżdżania innych graczy w zielonych strefach!";
 player allowDamage false;
 };
 if (((_zone1 distance player > _dis) && (_zone2 distance player > _dis) && (_zone3 distance player > _dis)) && (_zone4 distance player > _dis) && (_inArea)) then //&&(_zone5 distance player > _dis)
 { 
 player removeEventHandler ["fired", _eh1];
 _inArea = false;
 hint parseText "<t color='#FF0000'><t size='2'><t align='center'>UWAGA<br/><br/><t align='center'><t size='1'><t color='#ffffff'>Powodzenia może przeżyjesz!";
 player allowDamage true;
 };
 };
 };
 };
 sleep 3;
};