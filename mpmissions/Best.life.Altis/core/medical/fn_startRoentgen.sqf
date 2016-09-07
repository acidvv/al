/*

	Author: Nox
	Description: Magic happens...

*/
if (roentgen_request_accepted) exitWith { hint "Włączyłeś rentgen."; };
if (roentgen_in_progress) exitWith { hint "Jest w użyciu." };
if (playerside != independent) exitWith { hint "Nie jesteś lekarzem, a zatem nie możesz obsługiwać Retgena!" };
if (vehicle player != player) exitWith {};

roentgen_request_accepted = true;
publicVariable "roentgen_request_accepted";