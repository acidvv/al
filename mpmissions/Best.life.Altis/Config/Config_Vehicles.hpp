class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: ARRAY (This is for limiting items to certain things)
    *            0: Variable to read from
    *            1: Variable Value Type (SCALAR / BOOL /EQUAL)
    *            2: What to compare to (-1 = Check Disabled)
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
    */
    class civ_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "C_Hatchback_01_F", { "", "", -1 } },
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "C_Hatchback_01_sport_F", { "", "", -1 } },
            { "C_Van_01_box_F", { "", "", -1 } },
			{ "C_Van_01_transport_F", { "", "", -1 } },
			{ "C_Offroad_02_unarmed_F", { "", "", -1 } },
            { "max_bike", { "", "", -1 } },
            { "max_bike1", { "", "", -1 } },
            { "max_bike2", { "", "", -1 } },
            { "max_bike3", { "", "", -1 } },
            { "max_bike4", { "", "", -1 } },
            { "Mrshounka_yamaha_p", { "", "", -1 } },
            { "Mrshounka_yamaha_p_bf", { "", "", -1 } },
            { "Mrshounka_yamaha_p_g", { "", "", -1 } },
            { "Mrshounka_yamaha_p_j", { "", "", -1 } },
            { "Mrshounka_yamaha_p_noir", { "", "", -1 } },
            { "Mrshounka_yamaha_p_o", { "", "", -1 } },
            { "Mrshounka_yamaha_p_r", { "", "", -1 } },
            { "Mrshounka_yamaha_p_v", { "", "", -1 } },
            { "shounka_buggy", { "", "", -1 } },
            { "shounka_buggy_bleufonce", { "", "", -1 } },
            { "shounka_buggy_grise", { "", "", -1 } },
            { "shounka_buggy_jaune", { "", "", -1 } },
            { "shounka_buggy_noir", { "", "", -1 } },
            { "shounka_buggy_orange", { "", "", -1 } },
            { "shounka_buggy_rouge", { "", "", -1 } },
            { "shounka_buggy_violet", { "", "", -1 } },
            { "max_BMW", { "", "", -1 } },
            { "max_BMW1", { "", "", -1 } },
            { "max_BMW2", { "", "", -1 } },
            { "max_BMW_M3_GTR3", { "", "", -1 } },
            { "max_BMW_M3_GTR", { "", "", -1 } },
            { "max_BMW_M3_GTR1", { "", "", -1 } },
            { "max_BMW_M3_GTR2", { "", "", -1 } },
            { "max_charger_black", { "", "", -1 } },
            { "max_charger_blue", { "", "", -1 } },
            { "max_charger_red", { "", "", -1 } },
            { "max_H3_urbancamo", { "", "", -1 } },
            { "max_H3_vegeta", { "", "", -1 } },
            { "max_H3_yellow", { "", "", -1 } },
            { "max_impala_black", { "", "", -1 } },
            { "max_impala_blue", { "", "", -1 } },
            { "max_impala_red", { "", "", -1 } },
            { "max_impala_white", { "", "", -1 } },
            { "max_lambo2", { "", "", -1 } },
            { "max_lambo1", { "", "", -1 } },
            { "max_lambo", { "", "", -1 } },
            { "Mr_Own_dodge15_civ", { "", "", -1 } },
            { "Mr_Own_dodge15_civ_bleufonce", { "", "", -1 } },
            { "Mr_Own_dodge15_civ_grise", { "", "", -1 } },
            { "Mr_Own_dodge15_civ_jaune", { "", "", -1 } },
            { "Mr_Own_dodge15_civ_noir", { "", "", -1 } },
            { "Mr_Own_dodge15_civ_orange", { "", "", -1 } },
            { "SIG_SuperBeeL", { "", "", -1 } },
            { "SIG_SuperBeeB", { "", "", -1 } },   
            { "SIG_SuperBeeG", { "", "", -1 } }, 
            { "SIG_SuperBeeM", { "", "", -1 } }, 
            { "SIG_SuperBeeY", { "", "", -1 } }, 
            { "SIG_Magnums", { "", "", -1 } },  
            { "shounka_f430_spider", { "", "", -1 } }, 
            { "shounka_f430_spider_bleufonce", { "", "", -1 } }, 
            { "shounka_f430_spider_grise", { "", "", -1 } }, 
            { "shounka_f430_spider_jaune", { "", "", -1 } }, 
            { "shounka_f430_spider_noir", { "", "", -1 } }, 
            { "shounka_f430_spider_orange", { "", "", -1 } }, 
            { "shounka_f430_spider_rouge", { "", "", -1 } }, 
            { "shounka_f430_spider_violet", { "", "", -1 } }, 
            { "Mrshounka_lykan_c", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_bleufonce", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_grise", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_jaune", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_noir", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_orange", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_rouge", { "", "", -1 } }, 
            { "Mrshounka_lykan_c_violet", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_bleufonce", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_grise", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_jaune", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_noir", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_orange", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_rouge", { "", "", -1 } }, 
            { "Mrshounka_a3_308_civ_violet", { "", "", -1 } }, 
            { "Mrshounka_corbillard_c", { "", "", -1 } },
            { "Mrshounka_corbillard_c_bleufonce", { "", "", -1 } },
            { "Mrshounka_corbillard_c_grise", { "", "", -1 } },
            { "Mrshounka_corbillard_c_jaune", { "", "", -1 } },
            { "Mrshounka_corbillard_c_orange", { "", "", -1 } },
            { "Mrshounka_corbillard_c_rouge", { "", "", -1 } },
            { "max_suv_black", { "", "", -1 } },
            { "max_suv_blue", { "", "", -1 } },
            { "max_suv_green", { "", "", -1 } },
            { "max_suv_red", { "", "", -1 } },
            { "shounka_avalanche", { "", "", -1 } },
            { "shounka_avalanche_bleufonce", { "", "", -1 } },
            { "shounka_avalanche_grise", { "", "", -1 } },
            { "shounka_avalanche_noir", { "", "", -1 } },
            { "shounka_avalanche_orange", { "", "", -1 } },
            { "shounka_avalanche_rouge", { "", "", -1 } },
            { "shounka_avalanche_violet", { "", "", -1 } },  
            { "max_jeep_black", { "", "", -1 } },
            { "max_jeep_blue", { "", "", -1 } },
            { "max_jeep_green", { "", "", -1 } },
            { "max_jeep_red", { "", "", -1 } }, 
            { "max_van_blue", { "", "", -1 } },
            { "max_van_green", { "", "", -1 } },
            { "max_van_Grey", { "", "", -1 } },
            { "max_van_red", { "", "", -1 } },
            { "max_van_white", { "", "", -1 } },
            { "max_van_cola", { "", "", -1 } },
            { "max_van_green", { "", "", -1 } },
            { "Mrshounka_Vandura_civ", { "", "", -1 } },
            { "Mrshounka_Vandura_civ_bleufonce", { "", "", -1 } },
            { "Mrshounka_Vandura_civ_jaune", { "", "", -1 } },
            { "Mrshounka_Vandura_civ_noir", { "", "", -1 } },
            { "Mrshounka_Vandura_civ_rouge", { "", "", -1 } },
            { "Mrshounka_Vandura_civ_violet", { "", "", -1 } },  
			{ "C_Van_01_fuel_F", { "", "", -1 } }
        };
    };

	class civ_vip_car_bronze {
        side = "civ";
        vehicles[] = {
			{ "B_Quadbike_01_F", { "", "", -1 } },
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 1 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 1 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 1 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 1 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 1 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 1 } }
        };
    };

	class civ_vip_car_silver {
        side = "civ";
        vehicles[] = {
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 2 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 2 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 2 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 2 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 2 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 2 } }
        };
    };

	class civ_vip_car_gold {
        side = "civ";
        vehicles[] = {
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 3 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 3 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 3 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "B_Truck_01_ammo_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 3 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 3 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "B_Truck_01_box_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "O_Truck_03_device_F", { "life_donorlevel", "SCALAR", 3 } }
        };
    };

	class civ_vip_car_platinum {
        side = "civ";
        vehicles[] = {
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 4 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 4 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 4 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "B_Truck_01_ammo_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 4 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 4 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "B_Truck_01_box_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "O_Truck_03_device_F", { "life_donorlevel", "SCALAR", 4 } }, 
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 4 } },
            { "B_MRAP_01_F", { "life_donorlevel", "SCALAR", 4 } }
        };
    };

	class civ_vip_car_diamante {
        side = "civ";
        vehicles[] = {
			{ "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 5 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_ammo_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 5 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 5 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_box_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "O_Truck_03_device_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "O_MRAP_02_F", { "life_donorlevel", "SCALAR", 5 } },
            { "C_Hatchback_01_sport_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_SUV_01_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_Offroad_01_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "C_Van_01_box_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "I_Truck_02_transport_F", { "life_donorlevel", "SCALAR", 5 } },
            { "I_Truck_02_covered_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Truck_03_transport_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Truck_03_covered_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_ammo_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_transport_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_covered_F", { "life_donorlevel", "SCALAR", 5 } },
            { "I_Truck_02_fuel_F", { "life_donorlevel", "SCALAR", 5 } },
            { "B_Truck_01_fuel_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Truck_01_box_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "O_Truck_03_device_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "max_bike", { "life_donorlevel", "SCALAR", 5 } },
            { "max_bike1", { "life_donorlevel", "SCALAR", 5 } },
            { "max_bike2", { "life_donorlevel", "SCALAR", 5 } },
            { "max_bike3", { "life_donorlevel", "SCALAR", 5 } },
            { "max_bike4", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW1", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW2", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW_M3_GTR3", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW_M3_GTR", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW_M3_GTR1", { "life_donorlevel", "SCALAR", 5 } },
            { "max_BMW_M3_GTR2", { "life_donorlevel", "SCALAR", 5 } },
            { "max_charger_black", { "life_donorlevel", "SCALAR", 5 } },
            { "max_charger_blue", { "life_donorlevel", "SCALAR", 5 } },
            { "max_charger_red", { "life_donorlevel", "SCALAR", 5 } },
            { "max_H3_urbancamo", { "life_donorlevel", "SCALAR", 5 } },
            { "max_H3_vegeta", { "life_donorlevel", "SCALAR", 5 } },
            { "max_H3_yellow", { "life_donorlevel", "SCALAR", 5 } },
            { "max_impala_black", { "life_donorlevel", "SCALAR", 5 } },
            { "max_impala_blue", { "life_donorlevel", "SCALAR", 5 } },
            { "max_impala_red", { "life_donorlevel", "SCALAR", 5 } },
            { "max_impala_white", { "life_donorlevel", "SCALAR", 5 } },
            { "max_lambo2", { "life_donorlevel", "SCALAR", 5 } },
            { "max_lambo1", { "life_donorlevel", "SCALAR", 5 } },
            { "max_lambo", { "life_donorlevel", "SCALAR", 5 } },
            { "max_suv_black", { "life_donorlevel", "SCALAR", 5 } },
            { "max_suv_blue", { "life_donorlevel", "SCALAR", 5 } },
            { "max_suv_green", { "life_donorlevel", "SCALAR", 5 } },
            { "max_suv_red", { "life_donorlevel", "SCALAR", 5 } },
            { "max_jeep_black", { "life_donorlevel", "SCALAR", 5 } },
            { "max_jeep_blue", { "life_donorlevel", "SCALAR", 5 } },
            { "max_jeep_green", { "life_donorlevel", "SCALAR", 5 } },
            { "max_jeep_red", { "life_donorlevel", "SCALAR", 5 } }, 
            { "max_van_blue", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_green", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_Grey", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_red", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_white", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_cola", { "life_donorlevel", "SCALAR", 5 } },
            { "max_van_green", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_bleufonce", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_grise", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_jaune", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_noir", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_orange", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_rouge", { "life_donorlevel", "SCALAR", 5 } },
            { "shounka_limo_civ_violet", { "life_donorlevel", "SCALAR", 5 } },
            { "B_MRAP_01_F", { "life_donorlevel", "SCALAR", 5 } }
        };
    };

	class civ_vip_air_bronze {
        side = "civ";
        vehicles[] = {
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 1 } },
			{ "B_Heli_Light_01_stripped_F", { "life_donorlevel", "SCALAR", 1 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 1 } }
        };
    };

	class civ_vip_air_silver {
        side = "civ";
        vehicles[] = {
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "B_Heli_Light_01_stripped_F", { "life_donorlevel", "SCALAR", 2 } },
			{ "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 2 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 2 } }
        };
    };

	class civ_vip_air_gold {
        side = "civ";
        vehicles[] = {
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 3 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "I_Heli_light_03_unarmed_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "B_Heli_Light_01_stripped_F", { "life_donorlevel", "SCALAR", 3 } },
			{ "O_Heli_Transport_04_black_F", { "life_donorlevel", "SCALAR", 3 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 3 } }
        };
    };

	class civ_vip_air_platinum {
        side = "civ";
        vehicles[] = {
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 4 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "B_Heli_Light_01_stripped_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "I_Heli_light_03_unarmed_F", { "life_donorlevel", "SCALAR", 4 } },
			{ "O_Heli_Transport_04_black_F", { "life_donorlevel", "SCALAR", 4 } },
            { "I_Heli_Transport_02_F", { "life_donorlevel", "SCALAR", 4 } }
        };
    };

	class civ_vip_air_diamante {
        side = "civ";
        vehicles[] = {
            { "O_Heli_Light_02_unarmed_F", { "life_donorlevel", "SCALAR", 5 } },
            { "O_Heli_Transport_04_Box_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_Heli_Light_01_stripped_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "O_Heli_Transport_04_black_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "I_Heli_light_03_unarmed_F", { "life_donorlevel", "SCALAR", 5 } },
			{ "B_T_VTOL_01_vehicle_F", { "life_donorlevel", "SCALAR", 5 } },
			 
			{ "C_Plane_Civil_01_F", { "", "", -1 } }
        };
    };

    class kart_shop {
        side = "civ";
        vehicles[] = {
            { "C_Kart_01_Blu_F", { "", "", -1 } },
            { "C_Kart_01_Fuel_F", { "", "", -1 } },
            { "C_Kart_01_Red_F", { "", "", -1 } },
            { "C_Kart_01_Vrana_F", { "", "", -1 } }
        };
    };

    class civ_truck {
        side = "civ";
        vehicles[] = {
            { "I_Truck_02_transport_F", { "", "", -1 } },
            { "I_Truck_02_covered_F", { "", "", -1 } },
            { "O_Truck_03_transport_F", { "", "", -1 } },
            { "O_Truck_03_covered_F", { "", "", -1 } },
			{ "O_Truck_03_ammo_F", { "", "", -1 } },
			{ "B_Truck_01_transport_F", { "", "", -1 } },
			{ "B_Truck_01_covered_F", { "", "", -1 } },
            { "I_Truck_02_fuel_F", { "", "", -1 } },
            { "B_Truck_01_fuel_F", { "", "", -1 } },
			{ "B_Truck_01_box_F", { "", "", -1 } },
            { "shounka_a3_dafxf_euro6_f", { "", "", -1 } },
           	{ "O_Truck_03_device_F",  { "", "", -1 } }
        };
    };

    class civ_air {
        side = "civ";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", { "", "", -1 } },
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "", "", -1 } },
			{ "I_Heli_light_03_unarmed_F", { "", "", -1 } },
			{ "C_Plane_Civil_01_F", { "", "", -1 } },
            { "I_Heli_Transport_02_F", { "", "", -1 } }
			
        };
    };

     class civ_ship {
        side = "civ";
        vehicles[] = {
            { "C_Rubberboat", { "", "", -1 } },
			{ "C_Scooter_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_F", { "", "", -1 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };

    class reb_car {
        side = "civ";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "shounka_monsteur", { "", "", -1 } },
            { "shounka_monsteur_bleufonce", { "", "", -1 } },
            { "shounka_monsteur_grise", { "", "", -1 } },
            { "shounka_monsteur_jaune", { "", "", -1 } },
            { "shounka_monsteur_noir", { "", "", -1 } },
            { "shounka_monsteur_orange", { "", "", -1 } },
            { "shounka_monsteur_rouge", { "", "", -1 } },
            { "shounka_monsteur_violet", { "", "", -1 } },
            { "Mr_Own_hummer_civ_bleufonce", { "", "", -1 } },
            { "Mr_Own_hummer_civ_grise", { "", "", -1 } },
            { "Mr_Own_hummer_civ_jaune", { "", "", -1 } },
            { "Mr_Own_hummer_civ_noir", { "", "", -1 } },
            { "Mr_Own_hummer_civ_orange", { "", "", -1 } },
            { "Mr_Own_hummer_civ_rouge", { "", "", -1 } },
            { "B_G_Offroad_01_F", { "", "", -1 } },
            { "O_MRAP_02_F", { "", "", -1 } },
            { "B_Heli_Light_01_stripped_F", { "", "", -1 } },
            { "B_G_Offroad_01_armed_F", { "", "", -1 } },
			{ "O_T_LSV_02_unarmed_F", { "", "", -1 } },
			{ "I_Heli_light_03_unarmed_F", { "", "", -1 } },
			{ "O_Heli_Light_02_unarmed_F", { "", "", -1 } },
   			{ "O_Heli_Transport_04_Box_F", { "", "", -1 } },
            { "B_T_VTOL_01_vehicle_F", { "", "", -1 } },
			{ "O_Truck_02_box_F", { "", "", -1 } },
            { "O_Truck_02_covered_F", { "", "", -1 } },
			{ "I_Truck_02_fuel_F",  { "", "", -1 } },
            { "B_Truck_01_fuel_F",  { "", "", -1 } },
			{ "B_Truck_01_box_F", { "", "", -1 } },
            { "sab_camel_ind_pro", { "", "", -1 } },
            { "sab_camel_red_pro", { "", "", -1 } },
            { "sab_camel_blu_pro", { "", "", -1 } },
            { "sab_camel_ind_B", { "", "", -1 } },
            { "sab_camel_red_B", { "", "", -1 } },
            { "sab_camel_blu_B", { "", "", -1 } },
			{ "O_Truck_03_device_F",  { "", "", -1 } }
			 };
    };

    class med_shop {
        side = "med";
        vehicles[] = {
            { "C_Offroad_01_F", { "", "", -1 } },
            { "I_Truck_02_medical_F", { "life_medicLevel", "SCALAR", 2 } }
        };
    };

    class med_air_hs {
        side = "med";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "life_medicLevel", "SCALAR", 1 } },
            { "max_HEMS_heli", { "life_medicLevel", "SCALAR", 2 } },
            { "O_Heli_Light_02_unarmed_F", { "life_medicLevel", "SCALAR", 5 } }
        };
    };

    class cop_car {
        side = "cop";
        vehicles[] = {
            { "B_Quadbike_01_F", { "", "", -1 } },
            { "C_Offroad_01_F", { "", "", -1 } },
            { "C_SUV_01_F", { "", "", -1 } },
            { "C_Hatchback_01_sport_F", { "life_coplevel", "SCALAR", 1 } },
            { "max_bike_police", { "life_coplevel", "SCALAR", 1 } },
            { "max_CrownVic_sheriff", { "life_coplevel", "SCALAR", 3 } },
            { "B_MRAP_01_F", { "life_coplevel", "SCALAR", 5 } },
			{ "O_T_LSV_02_armed_F", { "life_coplevel", "SCALAR", 6 } },
            { "B_G_Offroad_01_armed_F", { "life_coplevel", "SCALAR", 6 } },
            { "B_MRAP_01_hmg_F", { "life_coplevel", "SCALAR", 6 } },
			{ "I_MRAP_03_F", { "life_coplevel", "SCALAR", 6 } },
            { "max_FBI_van", { "life_coplevel", "SCALAR", 6 } },
            { "max_impala_security", { "life_coplevel", "SCALAR", 7 } },
            { "max_H3_sheriff", { "life_coplevel", "SCALAR", 8 } },
            { "I_MRAP_03_gmg_F", { "life_coplevel", "SCALAR", 8 } }
        };
    };
	
    class cop_air {
        side = "cop";
        vehicles[] = {
            { "B_Heli_Light_01_F", { "", "", -1 } },
            { "O_Heli_Light_02_unarmed_F", { "life_coplevel", "SCALAR", 2 } },
            { "police_light_heli", { "life_coplevel", "SCALAR", 3 } },
			{ "I_Heli_light_03_unarmed_F", { "life_coplevel", "SCALAR", 5 } },
            { "O_T_VTOL_02_vehicle_F", { "life_coplevel", "SCALAR", 7 } },
			{ "B_Heli_Light_01_armed_F", { "life_coplevel", "SCALAR", 7 } }
        };
    };

    class cop_ship {
        side = "cop";
        vehicles[] = {
            { "B_Boat_Transport_01_F", { "", "", -1 } },
            { "C_Boat_Civil_01_police_F", { "", "", -1 } },
            { "B_Boat_Armed_01_minigun_F", { "life_coplevel", "SCALAR", 3 } },
			{ "I_C_Boat_Transport_02_F", { "life_coplevel", "SCALAR", 3 } },
            { "B_SDV_01_F", { "", "", -1 } }
        };
    };
};

class LifeCfgVehicles {
    /*
    *    Vehicle Configs (Contains textures and other stuff)
    *
    *    "price" is the price before any multipliers set in Master_Config are applied.
    *
    *    Default Multiplier Values & Calculations:
    *       Civilian [Purchase, Sell]: [1.0, 0.5]
    *       Cop [Purchase, Sell]: [0.5, 0.5]
    *       Medic [Purchase, Sell]: [0.75, 0.5]
    *       ChopShop: Payout = price * 0.25
    *       GarageSell: Payout = price * [0.5, 0.5, 0.5, -1]
    *       Cop Impound: Payout = price * 0.1
    *       Pull Vehicle from Garage: Cost = price * [1, 0.5, 0.75, -1] * [0.5, 0.5, 0.5, -1]
    *           -- Pull Vehicle & GarageSell Array Explanation = [civ,cop,medic,east]
    *
    *       1: ARRAY (license required)
    *         Ex: { "driver", "" , "" , "" } //civilian, west, independent, east
    *         licenses[] = { {"CIV"}, {"COP"}, {"MEDIC"}, {"EAST"} };
    *    Textures config follows { Texture Name, side, {texture(s)path}}
    *    Texture(s)path follows this format:
    *    INDEX 0: Texture Layer 0
    *    INDEX 1: Texture Layer 1
    *    INDEX 2: Texture Layer 2
    *    etc etc etc
    *
    */

    class Default {
        vItemSpace = -1;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class I_Truck_02_medical_F {
        vItemSpace = 250;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 55000;
		assurPrice = 15000;
        textures[] = {
			{ "EMS", "med", {
                "textures\Med\Vehicles\medic_front.jpg",
                "textures\Med\Vehicles\medicback.jpg"
            } }
		};
    };
class C_Offroad_02_unarmed_F {
        vItemSpace = 50;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price=705000;
		assurPrice = 75000;
        textures[] = {};
    };
    class O_T_LSV_02_unarmed_F {
        vItemSpace = 50;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price= 1505000;
		assurPrice = 225000;
        textures[] = {};
    };
class B_T_VTOL_01_vehicle_F {
        vItemSpace = 1200;
        licenses[] = { {"trucking"}, {"pilot"}, {""}, {""} };
        price= 20105000;
		assurPrice = 4135000;
        textures[] = {};
    };
    class O_Truck_03_medical_F {
        vItemSpace = 300;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 55000;
		assurPrice = 25000;
        textures[] = {};
    };
    class O_Truck_03_ammo_F {
        vItemSpace = 695;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 3209000;
		assurPrice = 533500;
        textures[] = {};
    };
	
	class O_Truck_02_box_F {
        vItemSpace = 300;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1195000;
		assurPrice = 175500;
        textures[] = {};
    };
	
	class I_Truck_02_box_F {
        vItemSpace = 445;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1935000;
		assurPrice = 210500;
        textures[] = {};
    };

    class C_Rubberboat {
        vItemSpace = 150;
        licenses[] = { {""}, {""}, {""}, {""} };
        price = 15000;
		assurPrice = 7000;
        textures[] = { };
    };

    class I_Heli_light_03_unarmed_F {
        vItemSpace = 350;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 3850000;
		assurPrice = 475000;
        textures[] = {  };
    };

    class B_Heli_Light_01_armed_F {
        vItemSpace = 20;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 1400000;
		assurPrice = 200000;
        textures[] = {
            { "Police", "cop", {
              "textures\Cop\Vehicles\police_heli2.paa"
              } }
        };
    };

    class B_MRAP_01_hmg_F {
        vItemSpace = 25;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 550000;
		assurPrice = 125000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };
class O_T_LSV_02_armed_F {
        vItemSpace = 55;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 150000;
		assurPrice = 55000;
        textures[] = {};
            
    };
	class O_T_VTOL_02_vehicle_F {
        vItemSpace = 900;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 14150000;
		assurPrice = 2925000;
        textures[] = {};
            
    };
	class I_MRAP_03_gmg_F {
        vItemSpace = 10;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 550000;
		assurPrice = 93000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };
    class I_MRAP_03_F {
        vItemSpace = 10;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 250000;
		assurPrice = 63000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class B_Boat_Armed_01_minigun_F {
        vItemSpace = 275;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 75000;
		assurPrice = 23000;
        textures[] = {};
    };
   class I_C_Boat_Transport_02_F {
        vItemSpace = 275;
        licenses[] = { {""}, {"swat"}, {""}, {""} };
        price = 175000;
		assurPrice = 70000;
        textures[] = { };
    };
    class B_Boat_Transport_01_F {
        vItemSpace = 45;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 55000;
		assurPrice = 10000;
        textures[] = {};
    };

    class O_Truck_03_transport_F {
        vItemSpace = 400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1200000;
		assurPrice = 225000;
        textures[] = { };
    };

    class O_Truck_03_device_F {
        vItemSpace = 475;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 2300000;
		assurPrice = 350000;
        textures[] = { };
    };
	
	class B_Truck_01_covered_F {
        vItemSpace = 585;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 2509000;
		assurPrice = 353000;
        textures[] = { };
    };

    class Land_CargoBox_V1_F {
        vItemSpace = 1000;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class Box_IND_Grenades_F {
        vItemSpace = 500;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_supplyCrate_F {
        vItemSpace = 900;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = -1;
        textures[] = {};
    };

    class B_G_Offroad_01_F {
        vItemSpace = 115;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 35000;
		assurPrice = 10000;
        textures[] = { };
    };

    class B_G_Offroad_01_armed_F {
        vItemSpace = 105;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 2400000;
		assurPrice = 350000;
        textures[] = {
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)",
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_MRAP_02_hmg_F {
        vItemSpace = 115;
        licenses[] = { {"rebel"}, {""}, {""}, {""} };
        price = 9500000;
        textures[] = { };
    };

    class C_Boat_Civil_01_F {
        vItemSpace = 120;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 25000;
		assurPrice = 4000;
        textures[] = { };
    };
	 class C_Scooter_Transport_01_F {
        vItemSpace = 50;
        licenses[] = { {"boat"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 30000;
        textures[] = {};
    };

    class C_Boat_Civil_01_police_F {
        vItemSpace = 85;
        licenses[] = { {""}, {"cg"}, {""}, {""} };
        price = 20000;
		assurPrice = 4000;
        textures[] = {};
    };

    class B_Truck_01_box_F {
        vItemSpace = 910;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 6450000;
		assurPrice = 1135500;
        textures[] = { };
    };
    
     class shounka_ivceco_bleufonce {
        vItemSpace = 1400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 10450000;
		assurPrice = 2335500;
        textures[] = { };
    };
     class shounka_ivceco_grise {
        vItemSpace = 1200;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 8000000;
		assurPrice = 3135500;
        textures[] = { };
    };
     class shounka_ivceco_noir {
        vItemSpace = 1200;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 8000000;
		assurPrice = 2635500;
        textures[] = { };
    };
     class shounka_ivceco_orange {
        vItemSpace = 1200;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 8000000;
		assurPrice = 2835500;
        textures[] = { };
    };
     class shounka_ivceco_rose {
        vItemSpace = 1400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 10450000;
		assurPrice = 2435500;
        textures[] = { };
    };
     class shounka_ivceco_rouge {
        vItemSpace = 1400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 10450000;
		assurPrice = 2135500;
        textures[] = { };
    };
    class shounka_ivceco_violet {
        vItemSpace = 1400;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 10450000;
		assurPrice = 2135500;
        textures[] = { };
    };
       class shounka_a3_dafxf_euro6_f {
        vItemSpace = 1230;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 10450000;
		assurPrice = 2135500;
        textures[] = { };
    };
	
    class B_Truck_01_transport_F {
        vItemSpace = 530;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 2810000;
		assurPrice = 458300;
        textures[] = { };
    };
	
	class B_Truck_01_ammo_F	{
        vItemSpace = 810;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 5250000;
		assurPrice = 775500;
        textures[] = { };
    };

    class O_MRAP_02_F {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {"rebel"}, {""}, {""} };
        price = 4250000;
		assurPrice = 775500;
        textures[] = { 
		    { "Ifrit Chamas VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\flame_ifrit_1.jpg",
					"textures\Vip\Vehicles\ifrit\flame_ifrit_2.jpg"
            } },
		    { "Ifrit Batman VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\ifrit_batman_front.jpg",
					"textures\Vip\Vehicles\ifrit\ifrit_batman_hinten.jpg"
            } },
		    { "Ifrit Wolf Bite VIP", "civ", {
	                "textures\Vip\Vehicles\ifrit\mrap_02_ext_01_co.jpg",
					"textures\Vip\Vehicles\ifrit\mrap_02_ext_02_co.jpg"
            } }			
		};
    };

    class C_Offroad_01_F {
        vItemSpace = 80;
        //assurPrice[] = { 1000, 1000, 1000, 1000 };
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 155000;
		assurPrice = 43500;
        textures[] = {
            { "Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa"
            } },
            { "Yellow", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa"
            } },
            { "White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa"
            } },
            { "Blue", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa"
            } },
            { "Dark Red", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa"
            } },
            { "Blue / White", "civ", {
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa",
                "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa"
            } },
            { "Taxi", "cop", {
                "#(argb,8,8,3)color(0.6,0.3,0.01,1)"
            } },
            { "Trump", "civ", {
                "textures\Civ\Vehicles\OffTRUMP.jpg"
            } },
            { "Shrek", "cop", {
                "textures\Civ\Vehicles\OffSHREK.jpg"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\policeoffroad.jpg"
            } },
            { "Medical", "med", {
                "textures\Med\Vehicles\offroadMED.jpg"
            } }
        };
    };

    class C_Kart_01_Blu_F {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 15000;
		assurPrice = 2500;
        textures[] = {};
    };
    class max_bike {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
		assurPrice = 12500;
        textures[] = {};
    };
    class max_bike2 {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
		assurPrice = 12500;
        textures[] = {};
    };
    class max_bike3 {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
		assurPrice = 12500;
        textures[] = {};
    };
    class max_bike4 {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
		assurPrice = 12500;
        textures[] = {};
    };
   class max_bike1 {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 45000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_bf {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_g {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_j {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_noir {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_o {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_rose {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_r {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mrshounka_yamaha_p_v {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 12500;
        textures[] = {};
    };
     class shounka_buggy {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_bleufonce {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_grise {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_jaune {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_noir {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_orange {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_rose {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_rouge {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class shounka_buggy_violet {
        vItemSpace = 20;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 125000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 425000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_bleufonce {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 435000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_grise {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 445000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_jaune {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 425000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_noir {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 425000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_orange {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 415000;
		assurPrice = 12500;
        textures[] = {};
    };
    class Mr_Own_dodge15_civ_rose {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 435000;
		assurPrice = 12500;
        textures[] = {};
    };
     class shounka_avalanche {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_bleufonce {
        vItemSpace = 130;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 285000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_grise {
        vItemSpace = 110;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 265000;
		assurPrice = 32500;
        textures[] = {};
    };
    class sshounka_avalanche_jaune {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_noir {
        vItemSpace = 130;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 285000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_orange {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 255000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_rose {
        vItemSpace = 140;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 300000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_rouge {
        vItemSpace = 120;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 32500;
        textures[] = {};
    };
    class shounka_avalanche_violet {
        vItemSpace = 130;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 285000;
		assurPrice = 32500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c  {
        vItemSpace = 190;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 355000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_bleufonce   {
        vItemSpace = 200;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 375000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_grise   {
        vItemSpace = 180;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 345000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_jaune    {
        vItemSpace = 190;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 355000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_orange   {
        vItemSpace = 180;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 345000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_rose   {
        vItemSpace = 200;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 375000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_corbillard_c_rouge   {
        vItemSpace = 190;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 355000;
		assurPrice = 52500;
        textures[] = {};
    };
    class shounka_f430_spider   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 845000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_bleufonce   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 875000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_grise   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 975000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_jaune   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 935000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_noir   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 925000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_orange   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 945000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_rose   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 915000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_rouge	   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 905000;
		assurPrice = 252500;
        textures[] = {};
    };
    class shounka_f430_spider_violet   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 915000;
		assurPrice = 252500;
        textures[] = {};
    };
    
    class Mrshounka_lykan_c   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_bleufonce   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_grise   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
     class Mrshounka_lykan_c_jaune   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_noir   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_orange   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_rose   {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_lykan_c_rouge  {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
     class Mrshounka_lykan_c_violet  {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 705000;
		assurPrice = 152500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 335000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_bleufonce  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 325000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_grise  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_jaune  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 305000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_noir  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 335000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_orange  {
        vItemSpace = 75;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 345000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_rose  {
        vItemSpace = 80;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 365000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_rouge  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 335000;
		assurPrice = 52500;
        textures[] = {};
    };
    class Mrshounka_a3_308_civ_violet  {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 52500;
        textures[] = {};
    };
     class shounka_limo_civ  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2315000;
		assurPrice = 452500;
        textures[] = {};
    };
    class shounka_limo_civ_bleufonce  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2415000;
		assurPrice = 452500;
        textures[] = {};
    };
    class shounka_limo_civ_grise  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2115000;
		assurPrice = 452500;
        textures[] = {};
    };
    class shounka_limo_civ_jaune  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2415000;
		assurPrice = 452500;
        textures[] = {};
    };
    class shounka_limo_civ_noir  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2215000;
		assurPrice = 452500;
        textures[] = {};
    };
    class shounka_limo_civ_orange  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2315000;
		assurPrice = 52500;
        textures[] = {};
    };
    class shounka_limo_civ_rose  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2315000;
		assurPrice = 52500;
        textures[] = {};
    };
    class shounka_limo_civ_rouge  {
        vItemSpace = 220;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 2115000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_Magnums  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 295000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SIG_Hubcaps  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 285000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SIG_Hcode  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 52500;
        textures[] = {};
    };
   
    class SIG_SuperBeeL  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 295000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SuperBeeB  {
        vItemSpace = 110;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SuperBeeG  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 295000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SuperBeeM  {
        vItemSpace = 110;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 52500;
        textures[] = {};
    };
    class SIG_SuperBeeY  {
        vItemSpace = 100;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 285000;
		assurPrice = 52500;
        textures[] = {};
    };
    class max_BMW {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 40500;
        textures[] = {};
    };
    class max_BMW_M3_GTR3 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 325000;
		assurPrice = 70500;
        textures[] = {};
    };
    class max_BMW_M3_GTR {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 325000;
		assurPrice = 70500;
        textures[] = {};
    };
    class max_BMW_M3_GTR1 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 325000;
		assurPrice = 70500;
        textures[] = {};
    };
    class max_BMW1 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 40500;
        textures[] = {};
    };
    class max_BMW2 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 40500;
        textures[] = {};
    };
    class max_BMW_M3_GTR2 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 325000;
		assurPrice = 70500;
        textures[] = {};
    };
    class max_charger_black {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 185000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_charger_blue {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 185000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_charger_red {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 185000;
		assurPrice = 19500;
        textures[] = {};
    };
     class max_H3_urbancamo {
        vItemSpace = 130;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 255000;
		assurPrice = 49500;
        textures[] = {};
    };
     class max_H3_vegeta {
        vItemSpace = 130;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 255000;
		assurPrice = 49500;
        textures[] = {};
    };
     class max_H3_yellow {
        vItemSpace = 130;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 255000;
		assurPrice = 49500;
        textures[] = {};
    };
     class max_impala_black {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 135000;
		assurPrice = 29500;
        textures[] = {};
    };
     class max_impala_blue {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 135000;
		assurPrice = 29500;
        textures[] = {};
    };
     class max_impala_red {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 135000;
		assurPrice = 29500;
        textures[] = {};
    };
     class max_impala_white {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 135000;
		assurPrice = 29500;
        textures[] = {};
    };
     class max_jeep_black {
        vItemSpace = 100;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
		assurPrice = 39500;
        textures[] = {};
    };
     class max_jeep_blue {
        vItemSpace = 100;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
		assurPrice = 39500;
        textures[] = {};
    };
     class max_jeep_green {
        vItemSpace = 100;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
		assurPrice = 39500;
        textures[] = {};
    };
     class max_jeep_red {
        vItemSpace = 100;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
		assurPrice = 39500;
        textures[] = {};
    };
     class max_lambo2 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 605000;
		assurPrice = 129500;
        textures[] = {};
    };
     class max_lambo1 {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 605000;
		assurPrice = 129500;
        textures[] = {};
    };
     class max_lambo {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 605000;
		assurPrice = 129500;
        textures[] = {};
    };
    class max_suv_black {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_suv_blue {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_suv_green {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_suv_red {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_suv_UC {
        vItemSpace = 70;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class max_van_blue {
        vItemSpace = 260;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_van_green {
        vItemSpace = 210;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_van_Grey {
        vItemSpace = 220;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 235000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_van_red {
        vItemSpace = 240;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 265000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_van_white {
        vItemSpace = 230;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 255000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_bleufonce {
        vItemSpace = 290;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 335000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_noir {
        vItemSpace = 280;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_jaune {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 305000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_rose {
        vItemSpace = 260;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 295000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_rouge {
        vItemSpace = 300;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 345000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ_violet {
        vItemSpace = 310;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 355000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mrshounka_Vandura_civ {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 295000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_bleufonce {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_grise {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_jaune {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_noir {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_orange {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_rose {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class Mr_Own_hummer_civ_rouge {
        vItemSpace = 270;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 695000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_bleufonce {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_grise {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_jaune {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_noir {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_orange {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_rose {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_rouge {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class shounka_monsteur_violet {
        vItemSpace = 200;
        licenses[] = { {"trucking"}, {"rebel"}, {""}, {""} };
        price = 495000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_van_cola {
        vItemSpace = 220;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 235000;
		assurPrice = 59500;
        textures[] = {};
    };
     class max_ambulance {
        vItemSpace = 260;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 275000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_HEMS_heli {
        vItemSpace = 160;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 375000;
		assurPrice = 79500;
        textures[] = {};
    };
     class max_bike_police {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 19500;
        textures[] = {};
    };
    class police_light_heli {
        vItemSpace = 50;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 59500;
        textures[] = {};
    };
    class max_CrownVic_sheriff {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 215000;
		assurPrice = 319500;
        textures[] = {};
    };
    class max_H3_sheriff {
        vItemSpace = 50;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 115000;
		assurPrice = 39500;
        textures[] = {};
    };
    class max_FBI_van {
        vItemSpace = 150;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 215000;
		assurPrice = 39500;
        textures[] = {};
    };
    class max_impala_security {
        vItemSpace = 50;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 315000;
		assurPrice = 49500;
        textures[] = {};
    };
    

/*
To edit another information in this classes you can use this exemple.
class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{
    vItemSpace = 40;
    price = ;
};

will modify the virtual space and the price of the vehicle, but other information such as license and textures will pick up the vehicle declare at : Vehicle {};
*/
    class C_Kart_01_Fuel_F : C_Kart_01_Blu_F{}; // Get all information of C_Kart_01_Blu_F
    class C_Kart_01_Red_F  : C_Kart_01_Blu_F{};
    class C_Kart_01_Vrana_F : C_Kart_01_Blu_F{};

    class C_Hatchback_01_sport_F {
        vItemSpace = 54;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 590000;
		assurPrice = 157000;
        textures[] = {
            { "Red", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport01_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport02_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport03_co.paa"
            } },
            { "Black / White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport04_co.paa"
            } },
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport05_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_sport06_co.paa"
            } },
            { "Sanic", "civ", {
                "textures\Civ\Vehicles\HatchSANIC.jpg"
            } },
			{ "Martini", "civ", {
                "textures\Civ\Vehicles\mcreafordwrc.paa"
            } },
			{ "MonsterV2", "civ", {
                "textures\Civ\Vehicles\civ_monsterwrcv2_hbsport.paa"
            } },
			{ "MonsterV3", "civ", {
                "textures\Civ\Vehicles\civ_monsterwrc_hb.paa"
            } },
			{ "Domino's", "civ", {
                "textures\Civ\Vehicles\civ_dominospizza_hb.paa"
            } },
			{ "RedBull", "civ", {
                "textures\Civ\Vehicles\vwwrc.paa"
            } },
			{ "AbudHabic", "civ", {
                "textures\Civ\Vehicles\abudhabiwrc.paa"
            } },
            { "Bope", "cop", {
                "textures\Cop\Vehicles\bopehactebk.jpg"
			} },
            { "Police", "cop", {
                "textures\Cop\Vehicles\policehatch.jpg"
            } }
        };
    };

    class B_Quadbike_01_F {
        vItemSpace = 25;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 8500;
		assurPrice = 2350;
        textures[] = {
            { "Brown", "cop", {
                "\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa"
            } },
            { "Digi Desert", "reb", {
                "\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa"
            } },
            { "Black", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa"
            } },
            { "Blue", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa"
            } },
            { "Red", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa"
            } },
            { "White", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa"
            } },
            { "Digi Green", "civ", {
                "\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa"
            } },
            { "Hunter Camo", "civ", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } },
            { "Rebel Camo", "reb", {
                "\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa"
            } }
        };
    };

    class I_Truck_02_covered_F {
        vItemSpace = 330;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 600000;
		assurPrice = 148000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class I_Truck_02_transport_F {
        vItemSpace = 275;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 400000;
		assurPrice = 120000;
        textures[] = {
            { "Orange", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"
            } },
            { "Black", "cop", {
                "#(argb,8,8,3)color(0.05,0.05,0.05,1)"
            } }
        };
    };

    class O_Truck_03_covered_F {
        vItemSpace = 475;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1521500;
		assurPrice = 254500;
        textures[] = {};
    };

    class C_Hatchback_01_F {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 80500;
		assurPrice = 15150;
        textures[] = {
            { "Beige", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa"
            } },
            { "Green", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa"
            } },
            { "Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa"
            } },
            { "Dark Blue", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa"
            } },
            { "Yellow", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa"
            } },
            { "White", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa"
            } },
            { "Grey", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa"
            } },
            { "Black", "civ", {
                "\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa"
            } }
        };
    };

    class C_SUV_01_F {
        vItemSpace = 55;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 80500;
		assurPrice = 15150;
        textures[] = {
            { "Dark Red", "cop", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa"
            } },
            { "Silver", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa"
            } },
            { "Orange", "civ", {
                "\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa"
            } },
            { "Asiimov", "civ", {
                "textures\Civ\Vehicles\suvASIIMOV.paa"
            } },
            { "Hyperbeast", "civ", {
                "textures\Civ\Vehicles\suvHYPER.paa"
            } },
			  { "Taxi", "civ", {
                "textures\Civ\Vehicles\SUV_Taxi.jpg"
            } },
            { "Nyan", "civ", {
                "textures\Civ\Vehicles\suvNYAN.jpg"
            } },
            { "Sticker", "civ", {
                "textures\Civ\Vehicles\suvSTICKER.paa"
            } },
            { "Police", "cop", {
                "textures\Cop\Vehicles\suvpolice.jpg"
            } },
			{ "Bope", "cop", {
                "textures\Cop\Vehicles\suvbope.jpg"
            } },
            { "Medical", "med", {
                "textures\Med\Vehicles\suvMED.jpg"
            } },
            { "JurassicPark", "civ", {
                "textures\Civ\Vehicles\civ_jurassicpark_suv.paa"
            } },
            { "White", "civ", {
                "textures\Civ\Vehicles\suv_white.jpg"
            } },
            { "Poly", "civ", {
                "textures\Civ\Vehicles\suv_poly.jpg"
            } }
        };
    };

    class C_Van_01_transport_F {
        vItemSpace = 155;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 225000;
		assurPrice = 25500;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class C_Van_01_box_F {
        vItemSpace = 210;
        licenses[] = { {"driver"}, {""}, {""}, {""} };
        price = 290000;
		assurPrice = 43000;
        textures[] = {
            { "White", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa"
            } },
            { "Red", "civ", {
                "\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa"
            } }
        };
    };

    class B_MRAP_01_F {
        vItemSpace = 65;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 100000;
		assurPrice = 30000;
        textures[] = {
           { "Hunter VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\donator_hunter_front.paa",
					"textures\Vip\Vehicles\hunter\donator_hunter_hinten.paa"
			} },
			{ "Hunter Assassino de COP VIP", "civ", {
					"textures\Vip\Vehicles\hunter\mrap_01_base_co.jpg",
	                "textures\Vip\Vehicles\hunter\mrap_01_adds_co.jpg",

			} },
			{ "Hunter Unicórnio VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\unicorn_hunter_teil1.paa",
					"textures\Vip\Vehicles\hunter\unicorn_hunter_teil2.paa"
			} },
			{ "Hunter Caveira VIP", "civ", {
	                "textures\Vip\Vehicles\hunter\graywolfhunter_1.jpg",
					"textures\Vip\Vehicles\hunter\graywolfhunter_2.jpg"
			} },
			{ "Police", "cop", {
                "textures\Cop\Vehicles\Hunter1.jpg",
                "textures\Cop\Vehicles\Hunter2.jpg"
            } }
        };
    };

    class B_Heli_Light_01_stripped_F {
        vItemSpace = 130;
        licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 950000;
		assurPrice = 71000;
        textures[] = {
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } }
        };
    };

    class I_Heli_Transport_02_F {
       vItemSpace = 600;
       licenses[] = { {"pilot"}, {""}, {""}, {""} };
       price = 7905000;
	   assurPrice = 1308500;
       textures[] = {};
   };
    class C_Plane_Civil_01_F {
       vItemSpace = 125;
       licenses[] = { {"pilot"}, {""}, {""}, {""} };
       price = 4575000;
	   assurPrice = 388500;
       textures[] = {};
   };
    class sab_camel_ind_pro {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 988500;
       textures[] = {};
   };
   class sab_camel_red_pro {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 988500;
       textures[] = {};
   };
   class sab_camel_blu_pro {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 388500;
       textures[] = {};
   };
   class sab_camel_ind_B {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 988500;
       textures[] = {};
   };
   class sab_camel_red_B {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 988500;
       textures[] = {};
   };
   class sab_camel_blu_B {
       vItemSpace = 75;
       licenses[] = { {"pilot"}, {"rebel"}, {""}, {""} };
       price = 22575000;
	   assurPrice = 988500;
       textures[] = {};
   };
      
   class B_Heli_Transport_03_unarmed_F {
       vItemSpace = 720;
       licenses[] = { {"pilot"}, {""}, {""}, {""} };
       price = 9635000;
	   assurPrice = 2361300;
       textures[] = {};
   };
   
    class O_Heli_Transport_04_black_F {
       vItemSpace = 115;
       licenses[] = { {"pilot"}, {""}, {""}, {""} };
       price = 1235000;
	   assurPrice = 236300;
       textures[] = {};
   };
   
   class O_Truck_02_covered_F {
       vItemSpace = 275;
       licenses[] = { {"trucking"}, {""}, {""}, {""} };
       price = 535000;
	   assurPrice = 90500;
       textures[] = {};
   };
   
   class O_Truck_02_transport_F {
       vItemSpace = 255;
       licenses[] = { {"trucking"}, {""}, {""}, {""} };
       price = 375000;
	   assurPrice = 74500;
       textures[] = {};
   };

   class O_Heli_Transport_04_Box_F {
      vItemSpace = 450;
      licenses[] = { {"pilot"}, {""}, {""}, {""} };
      price = 6305000;
	  assurPrice = 1231500;
      textures[] = {};
    };

    class B_Heli_Light_01_F {
        vItemSpace = 90;
        licenses[] = { {"pilot"}, {"cAir"}, {"mAir"}, {""} };
        price = 1250000;
		assurPrice = 245000;
        textures[] = {
            { "Police", "cop", {
                "textures\Cop\Vehicles\policeheli.jpg"
            } },
            { "Sheriff", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa"
            } },
            { "Civ Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa"
            } },
            { "Civ Red", "civ", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa"
            } },
            { "Blueline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa"
            } },
            { "Elliptical", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa"
            } },
            { "Furious", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa"
            } },
            { "Jeans Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa"
            } },
            { "Speedy Redline", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa"
            } },
            { "Sunset", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa"
            } },
            { "Vrana", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa"
            } },
            { "Waves Blue", "civ", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa"
            } },
            { "Rebel Digital", "reb", {
                "\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa"
            } },
            { "Digi Green", "reb", {
                "\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa"
            } },
            { "EMS", "med", {
                "textures\Med\Vehicles\hummingMED.jpg"
            } }
        };
    };

    class C_Heli_Light_01_civil_F : B_Heli_Light_01_F {
        vItemSpace = 75;
		licenses[] = { {"pilot"}, {""}, {""}, {""} };
        price = 800000;
		assurPrice = 125000;
    };

    class O_Heli_Light_02_unarmed_F {
        vItemSpace = 240;
        licenses[] = { {"pilot" }, {""}, {""}, {""} };
        price = 2200000;
		assurPrice = 342000;
        textures[] = {
            { "Black", "cop", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa"
            } },
            { "White / Blue", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa"
            } },
            { "Digi Green", "civ", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa"
            } },
            { "Desert Digi", "reb", {
                "\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa"
            } },
            { "EMS White", "med", {
                "textures\Med\Vehicles\EMS_Heli.jpg"
            } }
        };
    };

    class B_SDV_01_F {
        vItemSpace = 110;
        licenses[] = { {"boat"}, {"cg"}, {""}, {""} };
        price = 150000;
		assurPrice = 55000;
        textures[] = {};
    };

        class C_Van_01_fuel_F {
        vItemSpace = 130;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 175000;
		assurPrice = 52500;
        textures[] = {
            { "White", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_co.paa"
            } },
            { "Red", "civ", {
                "\A3\soft_f_gamma\Van_01\data\van_01_ext_red_co.paa",
                "\A3\soft_f_gamma\Van_01\data\van_01_tank_red_co.paa"
            } }
        };
    };

    class I_Truck_02_fuel_F {
        vItemSpace = 260;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 850000;
		assurPrice = 186500;
        textures[] = {
            { "White", "civ", {
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa",
                "\A3\Soft_F_Beta\Truck_02\data\truck_02_fuel_co.paa"
            } }
        };
    };

    class B_Truck_01_fuel_F {
        vItemSpace = 390;
        vFuelSpace = 9999999;
        licenses[] = { {"trucking"}, {""}, {""}, {""} };
        price = 1300000;
		assurPrice = 165500;
        textures[] = {};
    };
};
