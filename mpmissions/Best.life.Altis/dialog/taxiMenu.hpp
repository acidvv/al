class life_taxiMenu {

	idd = TaxiMenu;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
class _backgroundMain: Life_RscText
{
	idc = -1;
	x = 0.298906 * safezoneW + safezoneX;
	y = 0.423 * safezoneH + safezoneY;
	w = 0.502187 * safezoneW;
	h = 0.143 * safezoneH;
	colorBackground[] = {0,0,0,0.7};
};
class _taxiPic: life_RscPicture
{
	idc = -1;
	text = "icons\Taxi1.paa";
	x = 0.443281 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.0979687 * safezoneW;
	h = 0.143 * safezoneH;
	colorText[] = {0,0,0,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0,0,0,1};
};
	};
	class controls {
class _btn_Kavala: Life_RscButtonMenu
{
	idc = -1;
	text = "Kavala"; 
	action = "[] execVM ""scripts\TaxiKavala.sqf"";";
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class _btnAthira: Life_RscButtonMenu
{
	idc = -1;
	text = "Athira"; 
	action = "[] execVM ""scripts\TaxiAthira.sqf"";";
	x = 0.412344 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class _btnSofia: Life_RscButtonMenu
{
	idc = -1;
	text = "Sofia"; 
	action = "[] execVM ""scripts\TaxiSofia.sqf"";";
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class _btnPyrgos: Life_RscButtonMenu
{
	idc = -1;
	text = "Pyrgos"; 
	action = "[] execVM ""scripts\TaxiPyrgos.sqf"";";
	x = 0.608281 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
class _btnBestClub: Life_RscButtonMenu
{
	idc = -1;
	text = "BestClub"; 
	action = "[] execVM ""scripts\TaxiBestClub.sqf"";";
	x = 0.708281 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
	colorBackground[] = {0,0,0,1};
};
	};
	
};