 /*
	Author: Michał Tuśnio

	Description:
	Selects and prepares the next payload for activation

	Parameter(s):
	0: Array, payloads to choose from
    1: Number, payload activation delay
    
	Returns:
	Selected payload object
*/
if (!params ["_payloads", "_activationDelay"]) exitWith {};

if(isServer) then
{
    if(count _payloads > 0) then
    {
        private _selected = floor random (count _payloads);
        private _payload = _payloads select _selected;

        [_payload, _activationDelay] execVM "events\onPayloadSelected.sqf";
        
        _payload;
    };
};
