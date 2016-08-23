if (vehicle player isEqualTo player) then
{
 {
 deleteVehicle _x;
 } forEach nearestObjects [getpos player,["WeaponHolder","GroundWeaponHolder","WeaponHolderSimulated"],3];
};
[] spawn {
 hint "Umieszczenie amunicji i broni w torbie w promieniu 3 metrów..";
};