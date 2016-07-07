/*
	File: fn_setupActions.sqf
	Author: 
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do {
	case civilian: {
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > 0 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && (animationState cursorObject == "Incapacitated" or animationState cursorObject == "AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon") && !(cursorObject getVariable["robbed",FALSE]) ']];
		//Zabierz Telefon
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobSmartphone",life_fnc_robItems,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && (animationState cursorObject == "Incapacitated" or animationState cursorObject == "AmovPercMstpSnonWnonDnon_amovpercmstpssurwnondnon")']];
		//Pasy
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbelt",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && !life_seatbelt && vehicle player != player ']];
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbeltOFF",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && life_seatbelt && vehicle player != player ']];
		//Leczenie
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Się</t>",life_fnc_healSelf,"",99,false,false,"",' vehicle player isEqualTo player && (damage player) > 0.01 && life_inv_medikit > 0 ']];
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Gracza</t>",life_fnc_healPlayer,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.01 && life_inv_medikit > 0']];

	};
	
	case west: {
		//CopEnter
		life_actions pushBack [player addAction[localize "STR_pAct_CopDriver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorObject && ((cursorObject isKindOf "Car")||(cursorObject isKindOf "Air")||(cursorObject isKindOf "Ship")) && (vehicle player isEqualTo player) && (locked cursorObject) != 0 && cursorObject distance player < 5']];
		life_actions pushBack [player addAction[localize "STR_pAct_CopPassenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorObject && ((cursorObject isKindOf "Car")||(cursorObject isKindOf "Air")||(cursorObject isKindOf "Ship")) && (vehicle player isEqualTo player)&& (locked cursorObject) != 0 && cursorObject distance player < 5 && (!(cursorObject isKindOf "B_Heli_Attack_01_F"))']];
		life_actions pushBack [player addAction[localize "STR_pAct_CopCommander",life_fnc_copEnter,"commander",100,false,false,"",'!isNull cursorObject && ((cursorObject isKindOf "Car")||(cursorObject isKindOf "Air")||(cursorObject isKindOf "Ship"))&& (vehicle player isEqualTo player) && (locked cursorObject) != 0 && cursorObject distance player < 5 && ((cursorObject isKindOf "B_Heli_Attack_01_F")||(cursorObject isKindOf "B_Heli_Transport_01_F")||(cursorObject isKindOf "B_MRAP_01_hmg_F"))']];
		life_actions pushBack [player addAction[localize "STR_pAct_CopExit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player) isEqualTo 2)']];
		//Seize Weapon
		life_actions = life_actions + [player addAction[localize "STR_pAct_SeizeItem",life_fnc_seizeObjects,cursorObject,0,false,false,"",'(count(nearestObjects [player,["weaponholder"],3])>0)']]; 
		//Pasy
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbelt",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && !life_seatbelt && vehicle player != player ']];
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbeltOFF",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && life_seatbelt && vehicle player != player ']];
		//Odznaka
		life_actions = life_actions + [player addAction["Pokaż Odznake",life_fnc_showID,"",1,false,true,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (cursorTarget getVariable "restrained")']];
		//Leczenie
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Się</t>",life_fnc_healSelf,"",99,false,false,"",' vehicle player isEqualTo player && (damage player) > 0.01 && life_inv_medikit > 0 ']];
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Gracza</t>",life_fnc_healPlayer,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.01 && life_inv_medikit > 0']];

	};
	
	case independent: {
		//CopEnter
		life_actions pushBack [player addAction[localize "STR_pAct_CopDriver",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorObject && ((cursorObject isKindOf "Car")||(cursorObject isKindOf "Air")||(cursorObject isKindOf "Ship")) && (vehicle player isEqualTo player) && (locked cursorObject) != 0 && cursorObject distance player < 5']];
		life_actions pushBack [player addAction[localize "STR_pAct_CopPassenger",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorObject && ((cursorObject isKindOf "Car")||(cursorObject isKindOf "Air")||(cursorObject isKindOf "Ship")) && (vehicle player isEqualTo player)&& (locked cursorObject) != 0 && cursorObject distance player < 5 && (!(cursorObject isKindOf "B_Heli_Attack_01_F"))']];
		life_actions pushBack [player addAction[localize "STR_pAct_CopExit",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player) isEqualTo 2)']];
		//Pasy
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbelt",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && !life_seatbelt && vehicle player != player ']];
		life_actions = life_actions + [player addAction[localize "STR_pAct_PutSeatbeltOFF",life_fnc_seatbelt,"",7,false,false,"",' vehicle player isKindOf "Car" && life_seatbelt && vehicle player != player ']];
		//Leczenie
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Się</t>",life_fnc_healSelf,"",99,false,false,"",' vehicle player isEqualTo player && (damage player) > 0.01 && life_inv_medikit > 0 ']];
		life_actions = life_actions + [player addAction["<t color='#01BC06'>Ulecz Gracza</t>",life_fnc_healPlayer,"",0,false,false,"",' !isNull cursorTarget && player distance cursorTarget < 2.5 && isPlayer cursorTarget && (damage cursorTarget) > 0.01 && life_inv_medikit > 0']];
		life_actions = life_actions + [player addAction["Pokaż Odznake",life_fnc_showID,"",1,false,true,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget)']];
	};
};																																											