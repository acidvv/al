/*

	Author: Nox
	Description: Magic happens...

*/
if (!(roentgen_request_accepted)) exitWith { hint "Rentegen nie jest jeszcze gotowy, proszę czekać na lekarza." };
if (roentgen_in_progress) exitWith { hint "Jest w użyciu." };
if (playerside != civilian) exitWith { hint "Nie jesteś pacjentem!" };
if (vehicle player != player) exitWith {};


[] spawn {
		
		roentgen_in_progress = true;
		publicVariable "roentgen_in_progress";
		
		roentgenmonitor1 setObjectTextureGlobal [0, ""];
		
		player setPos [3760.643,13024.226,1.017]; 
		player setDir 190; 
		
		sleep 1; 
		
		player playMove "AinjPpneMstpSnonWnonDnon";
		
		sleep 2;
		
		[player,"Device_disassembled_loop"] remoteExec ["life_fnc_globalSound",0];
		sleep 28.6;
		
		player setPos [3760.102,13023.226,0.208]; 
		player switchMove "";
		
		sleep 2;
		
		roentgenmonitor1 setObjectTextureGlobal [0, "textures\med\roentgen1.paa"];
		
		roentgen_in_progress = false;
		publicVariable "roentgen_in_progress";
		roentgen_request_accepted = false;
		publicVariable "roentgen_request_accepted";
		
		sleep 360;
		
		roentgenmonitor1 setObjectTextureGlobal [0, ""];
	};