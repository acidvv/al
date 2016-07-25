/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ CONFIGURATION DE BASE DE LA BOURSE ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 04;     // La durée de fonctionnement jusqu'au prochain redémarrage du serveur en heures.
DYNMARKET_UseExternalDatabase  = true;  // Si le script utilise une base de données externe ?
DYNMARKET_PriceUpdateInterval  = 03;     // Après combien de minutes devrait être mis à jour le prix ?
DYNMARKET_CreateBackups        = false;   // Si le serveur ne sauvegarde pas les prix régulièrement dans la base de données, il le fera lorsque le serveur de redémarre ?
DYNMARKET_CreateBackupInterval = 03;     // Après combien de mises à jour de la bourse le serveur devrait-il sauvegarder les prix dans la base de données ?
DYNMARKET_UserNotification     = false;  // Est-ce que les joueurs devraient être informé par un message (hint) à chaque fois que la bourse est mise à jour ?

// █████████████████ TEXTES DE NOTIFICATION  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Nasze ceny zostały zaktualizowane!",
	"Nowe ceny ...."
];

// █████████████████ CONFIGURATION DU GROUPE D'ARTICLES █████████████████

DYNMARKET_Items_Groups =
[		
	 ["food",
		[    
		    ["aplle",-1,100,200],
			["peach",-1,100,200],
			["salema_raw",-1,100,500],
			["ornate_raw",-1,100,500],
			["mackerel_raw",-1,300,700],
			["tuna_raw",-1,1300,1800],
			["mullet_raw",-1,800,1200]
			],
		2
	],
	
	["foods",
		[
			["hen_raw",-1,450,750],
			["rooster_raw",-1,500,900],
			["sheep_raw",-1,900,1700],
			["goat_raw",-1,1300,2500]
			],
		2
	],
	
	["Ressources",
		[
			["oil_processed",-1,1500,5000],
			["plank",-1,3000,7500],
			["cloth",-1,800,2500],
			["steelplate",-1,2200,5500],
			["gunpowder",-1,2000,4500],
			["rubber",-1,1000,4500],
			["copper_refined",-1,1000,3200],
			["iron_refined",-1,1250,4250],
			["salt_refined",-1,750,3050],
			["glass",-1,1000,4000],
			["diamond_cut",-1,3000,9000],
			["Skarb",-1,20000,47000],
			["beer",-1,3000,6500],
			["cement",-1,1000,4000]
			],		
		2.5
	],
	
	["Illegal", 
		[
			
			["cocaine_processed",-1,5000,10000],
			["heroin_processed",-1,5500,9500],
			["whiskey",-1,4500,8000],
			["heba",-1,7000,12000],
			["marijuana",-1,4000,8000],
			["C4",-1,22000,57000],
			["turtle_raw",-1,5000,7000]
			],
		2.5
	]
];

// █████████████████    TOUS LES ARTICLES VENDABLE    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	
	
	
	["apple",100],
	["peach",100],
	["salema_raw",310],
	["ornate_raw",300],
	["mackerel_raw",500],
	["tuna_raw",1100],
	["mullet_raw",700],
	["hen_raw",500],
	["rooster_raw",700],
	["sheep_raw",1100],
	["goat_raw",3000],
	
	
	["oil_processed",2500],
	["plank",3500],
	["cloth",1200],
	["steelplate",3000],
	["gunpowder",2500],
	["rubber",2000],
	["copper_refined",1700],
	["salt_refined",1375],
	["iron_refined",2200],
	["glass",2045],
	["cement",2000],
	["diamond_cut",6000],
	["Skarb",32000],
	["Beer",4500],
	
	
		
    ["heroin_processed",7000],
	["whiskey",5500],
	["heba",8000],
	["marijuana",5500],
	["cocaine_processed",7700],
	["C4",37700],
	["turtle_raw",6200]
	
];


//███████████████████████████████████████████████████████████████████████
//██████████████████ NE PAS MODIFIER LE CODE SUIVANT! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> LES PRIX ACTUELS SONT EN COURS D'ÉCRITURE DANS LA BASE DE DONNÉES    ###";
		diag_log "### DYNMARKET >> COMME PRÉVU, RÉSULTAT EN ATTENTE ...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
