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
DYNMARKET_PriceUpdateInterval  = 02;     // Après combien de minutes devrait être mis à jour le prix ?
DYNMARKET_CreateBackups        = true;   // Si le serveur ne sauvegarde pas les prix régulièrement dans la base de données, il le fera lorsque le serveur de redémarre ?
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
			["salema_raw",-1,300,500],
			["ornate_raw",-1,300,500],
			["mackerel_raw",-1,380,700],
			["tuna_raw",-1,1300,1800],
			["mullet_raw",-1,800,1200]
			],
		0.5
	],
	
	["foods",
		[
			["hen_raw",-1,450,750],
			["rooster_raw",-1,500,900],
			["sheep_raw",-1,900,1700],
			["goat_raw",-1,1300,2500]
			],
		0.5
	],
	
	["Ressources",
		[
			["oil_processed",-1,2500,4500],
			["plank",-1,2800,5200],
			["cloth",-1,1300,2500],
			["steelplate",-1,2600,5000],
			["gunpowder",-1,2200,4600],
			["rubber",-1,2300,4300],
			["copper_refined",-1,1700,4600],
			["iron_refined",-1,1650,4550],
			["salt_refined",-1,1750,4450],
			["glass",-1,1900,4800],
			["diamond_cut",-1,6100,8500],
			["Skarb",-1,26000,47000],
			["beer",-1,3000,5800],
			["cement",-1,1700,4200]
			],		
		2.0
	],
	
	["Illegal", 
		[
			
			["cocaine_processed",-1,6500,9000],
			["heroin_processed",-1,5700,8000],
			["whiskey",-1,4500,6800],
			["heba",-1,8200,12000],
			["marijuana",-1,5000,7300],
			["C4",-1,28000,51000],
			["turtle_raw",-1,5000,7200]
			],
		2.0
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
	["goat_raw",2000],
	
	
	["oil_processed",3700],
	["plank",4300],
	["cloth",2200],
	["steelplate",4200],
	["gunpowder",4100],
	["rubber",3500],
	["copper_refined",3800],
	["salt_refined",3675],
	["iron_refined",3900],
	["glass",3945],
	["cement",3700],
	["diamond_cut",7000],
	["Skarb",34000],
	["beer",4800],
	
	
		
    ["heroin_processed",7000],
	["whiskey",6000],
	["heba",10000],
	["marijuana",6100],
	["cocaine_processed",8000],
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
