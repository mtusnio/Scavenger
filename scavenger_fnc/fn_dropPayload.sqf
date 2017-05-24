 /*
	Author: Michał Tuśnio

	Description:
	Makes a unit drop the payload
    
	Parameter(s):
	0: Unit with payload

	Returns:
	True if payload dropped, false otherwise
*/

if (!params ["_unit"]) exitWith { };

if(!isServer) exitWith { false; };

private _payload = [_unit] call Scv_fnc_getCarriedPayload;

if(isNull _payload) exitWith { false; };

_unit setVariable ["Scv_carriedPayload", objNull, true];
_payload setPos (getPos _unit);

[_unit, _payload] execVM "events\onPayloadDropped.sqf";

true;