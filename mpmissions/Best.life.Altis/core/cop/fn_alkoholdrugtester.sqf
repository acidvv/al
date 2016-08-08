/*file:fn_alkoholdrugtester author:[midgetgrimm] edited by nic_noc for testing drugusing on civs*/ 
private["_cop","_drinky","_drugy"]; 
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; 
if(isNull _cop) exitWith {}; 
//life_drink und life_drug muessen spaeter noch in configuration.sqf eingefügt werden
_drinky = life_drink; 
_drugy = life_drug; 
//Den Wert > 0.4 kann man natuerlich aendern
if(_drinky > 0.4) then { 
[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Jest pod wpływem! ",name player,[_drinky] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",_cop]; 
} else { 
[1,format["Alkoholtest %1 \n\n Promille: %2 \n\n Jest czysty! ",name player,[_drinky] call life_fnc_numberText]] remoteExec ["life_fnc_broadcast",_cop]; 
}; 
//Beide Tests werden nacheinander (5 Sekunden unterschied) angezeigt - man testet also quasi beides in einem
sleep 5; 
//Wenn > 0 dann hat der Spieler irgendwas genommen - also ist es dann ein positives Ergebnis
if(_drugy > 0) then { 
[1,format["Drogentest %1 \n\n Ergebnis: Positiv \n\n Jest pod wpływem narkotyków! ",name player]] remoteExec ["life_fnc_broadcast",_cop]; 
} else { 
[1,format["Drogentest %1 \n\n Ergebnis: Negativ \n\n Jest czysty! ",name player]] remoteExec ["life_fnc_broadcast",_cop]; 
};
