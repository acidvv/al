/*
Description : Taxi Script to Sofia
Author : Mahony
*/
_price = 55000;
_taxigerufen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Taksówka została wezwana! Zakaz używania podczas wszelkich interakcji</t>";
_taxiangekommen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Taksówka powinna byc już na miejscu możesz jechać </t>";
if ((life_atmbank) < _price + 25000) exitWith {
hint "Na Taxi trzeba mieć pieniądze ! !";
closeDialog 0;
};
if ((life_cash) == _price) exitWith {
hint "Akceptujemy tylko karty !";
closeDialog 0;
};
if (player distance (getMarkerPos "civ_spawn_vip") <= 1000) exitWith {
hint "Ty już jesteś w BestClubie !";
closeDialog 0;
};
life_atmbank = life_atmbank - _price;
if (player distance (getMarkerPos "jail_marker") <= 500) exitWith {
hint "Jesteś w wiezieniu !";
closeDialog 0;
};
if(player getVariable ["restrained",false]) exitWith {
hint "Jesteś aresztowany lub związany!";
closeDialog 0;
};

closeDialog 0;
sleep 2;
hint parseText (_taxigerufen);
sleep 30;
_taxiC = "I_Quadbike_01_F" createVehicle position player;
_taxiC allowDamage false;
hint parseText (_taxiangekommen);
sleep 5;
waitUntil {vehicle player != player};
sleep 1;
player allowDamage true;
titleText ["Jesteś w drodze do Raju !", "BLACK FADED", 20];
playSound "taxi";
deleteVehicle _taxiC;
sleep 28;
titleText ["Jesteś na miejscu teraz się rozliczmy", "BLACK FADED", 1];
life_atmbank = life_atmbank - 5000;
sleep 1;
player setPos (getMarkerPos "civ_spawn_vip");
sleep 1;
player allowDamage true;