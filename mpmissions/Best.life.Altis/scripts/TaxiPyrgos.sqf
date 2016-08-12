/*
Description : Taxi Script to Pyrgos
Author : Mahony
*/
_price = 5000;
_taxigerufen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Taksówka została wezwana! Zakaz używania podczas wszelkich interakcji</t>";
_taxiangekommen  = "<t color='#FFFF00' size='2' shadow='1' shadowColor='#000000' align='center'>Taksówka powinna byc już na miejscu teraz masz 5 sec aby do niej wsiąść </t>";
if ((life_atmbank) < _price + 25000) exitWith {
hint "Na Taxi trzeba mieć pieniądze ! !";
closeDialog 0;
};
if ((life_cash) == _price) exitWith {
hint "Akceptujemy tylko karty !";
closeDialog 0;
};
life_atmbank = life_atmbank - _price;
if (player distance (getMarkerPos "civ_spawn_2") <= 1000) exitWith {
hint "Ty już jesteś w Pyrgos !";
closeDialog 0;
};
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
_taxiP = "C_Hatchback_01_yellow_F" createVehicle position player;
_taxiP allowDamage false;
hint parseText (_taxiangekommen);
sleep 10;
deleteVehicle _taxiP;
waitUntil {vehicle player != player};


player allowDamage true;
titleText ["Jesteś w drodze do Pyrgos !", "BLACK FADED", 20];
playSound "taxi";
deleteVehicle _taxiP;
sleep 28;
titleText ["Jesteś na miejscu teraz się rozliczmy", "BLACK FADED", 1];
life_atmbank = life_atmbank - _price;
sleep 1;
player setPos (getMarkerPos "civ_spawn_2");
sleep 1;
player allowDamage true;