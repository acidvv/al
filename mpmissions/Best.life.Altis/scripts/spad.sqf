//Auto ParaChute Proof of concept 							

//by Beerkan

//version Beta 0.82

[] spawn

{

   while {true} do

	{private ['_player','_chute'];

		if ( (getPosATL player select 2 > 100) && (vehicle player IsEqualto player) && (alive player)) then

            {

            waitUntil {(position player select 2) <= 100};

            addCamShake [8, 2, 20];

            chute = createVehicle ['Steerable_Parachute_F', position Player, [], 0, 'FLY'];

            chute setPos position player;

            player moveIndriver chute;

            chute allowDamage false;

            };

        sleep 2;

    };

};
player addEventHandler ["GetOut", spad];