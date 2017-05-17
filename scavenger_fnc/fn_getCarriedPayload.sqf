  /*
	Author: Michał Tuśnio

	Description:
	Get payload carried by unit
    
	Parameter(s):
	0: Unit with payload

	Returns:
	Payload object, null if no payload is carried
*/

if (!params ["_unit"]) exitWith {};

private _payload = _unit getVariable ["Scv_carriedPayload", objNull];

_payload;
