#include "..\..\script_macros.hpp"

/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft","_return","_craftSites"];
if(!((player distance (getMarkerPos "CraftingArea1") < 50) OR  (player distance (getMarkerPos "CraftingArea2") < 50) OR  (player distance (getMarkerPos "CraftingArea3") < 50))) then  {
	closeDialog 0;
	_return = false;
	hint "Musisz być na terenie Kraftingu!";
	} else {

_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft isEqualTo "") exitWith {closeDialog 0}; //Bad shop type passed.

_craftSites = ["CraftingArea1","CraftingArea2","CraftingArea3"];

switch(_craft) do
{
	case "weapon":
	{
		_return = [
				//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
				["hgun_Rook40_F", ["steel",6,"barrel",1,"trigger",1,"goldcoin",2]],
				["hgun_Pistol_heavy_02_F", ["steel",9,"barrel",1,"trigger",1,"goldcoin",6]],
				["arifle_TRG21_F", ["steel",15,"barrel",2,"trigger",1,"butt",2,"sight",1,"goldcoin",7]],
				["LMG_Zafir_F", ["steel",10,"barrel",3,"trigger",1,"butt",2,"sight",2,"goldcoin",11]],
				["srifle_DMR_01_F", ["steel",15,"barrel",5,"trigger",1,"butt",5,"sight",4,"cloth",3"goldcoin",10]]
        ];
	};

    case "vehicle":
    {
		_return = [
			];
    };

	case "uniform":
	{
         _return = [
				["U_O_Wetsuit",["cloth",5,"rubber",3,"goldcoin",7]],
				["U_O_CombatUniform_oucamo",["cloth",11,"goldcoin",9]],
				["U_B_GhillieSuit	",["cloth",20,"goldcoin",11]],
				["U_O_FullGhillie_sard",["cloth",30,,"goldcoin",11]]
        ];
	};

	case "backpack":
	{
        _return = [
				["B_Kitbag_cbr",["cloth",25,"goldcoin",7]]
			];
	};

	case "item":
	{
        _return = [
      ["lockpick",["iron_refined",5,"goldcoin",7]],
      ["pickaxe",["iron_refined",3,"rubber",2,,"goldcoin",11]],
			["butt",["iron_refined",4,"rubber",3,,"goldcoin",12]],
			["sight",["iron_refined",4,"steel",4,"goldcoin",13]],
			["barrel",["iron_refined",4,"steel",7,"goldcoin",14]],
			["trigger",["iron_refined",8,"goldcoin",7]],
			["fuelFull",["iron_refined",7,"oil_processed",5,"goldcoin",2]],
			["blastingcharge",["cloth",4,"C4",5,"trigger",1,"goldcoin",15]],
			["storagesmall",["steel",10,"iron_refined",8,"goldcoin",14]]
            ["cloth",["wool",20,"goldcoin",15]]
	  ];
	};

    case "vest":
    {
        _return = [
        ["V_PlateCarrierL_CTRG",["cloth",16,"steelplate",2,,"goldcoin",7]],
				["V_HarnessOGL_brn",["cloth",35,"sulfur",25,"C4",2,"trigger",1,"goldcoin",7]]
        ];
    };
    case "ammo":
    {
        _return = [
        ["150Rnd_762x54_Box_Tracer",["iron_refined",15,"gunpowder",22,"goldcoin",7]],
		["30Rnd_556x45_Stanag_Tracer_Red",["iron_refined",15,"gunpowder",16,"goldcoin",7]],
		["7Rnd_408_Mag",["iron_refined",25,"gunpowder",30,"goldcoin",7]]
		["10Rnd_762x54_Mag",["iron_refined",20,"gunpowder",25,"goldcoin",10]]
      	];
    };

    case "attach":
    {
        _return = [
        ["optic_Aco",["sight",1,"iron_refined",1,"goldcoin",7,"glass",2]],
        ["optic_Aco_grn",["sight",1,"iron_refined",1,"goldcoin",7"glass",2]],
        ["optic_MRCO",["sight",1,"iron_refined",3,"goldcoin",7"glass",3]],
        ["optic_MRD",["sight",1,"iron_refined",1,"goldcoin",7"glass",7]],
		["optic_SOS",["sight",6,"iron_refined",4,"goldcoin",10"glass",10]],
        ["FirstAidKit",["cloth",3,"goldcoin",7]]
			];
		};
	};
	_return;
};
