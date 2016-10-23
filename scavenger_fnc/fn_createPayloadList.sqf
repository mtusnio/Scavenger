/*
	Author: Michał Tuśnio

	Description:
	Creates a list of all payloads

	Parameter(s):
	0: String, payload prefix
    1: Number, maximum amount of payloads
    
	Returns:
	Array containing all mission payloads
*/
if (!params ["_prefix", "_maximum"]) exitWith {};

private _payloads = [];

for "_i" from 1 to _maximum do
{
    private _payloadName = format [ "%1_%2", _prefix, _i ];
    
    if(!isNil _payloadName) then
    {
        private _payload = missionNamespace getVariable [ _payloadName, objNull ]; 
        _payloads pushBack _payload;
    };
   
};

_payloads;