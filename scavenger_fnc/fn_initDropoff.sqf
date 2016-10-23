/*
	Author: Michal Tusnio

	Description:
	Call on the server to initialise an object as the payload dropoff point

	Parameter(s):
	0: Object which will be the dropoff point
    
	Returns:
	None
*/

if (!params ["_dropoff"]) exitWith {};

private _payloadDrop = {
    params ["_dropoff", "_player"];

    [_player] remoteExec ["Mh_fn_deliverPayload", 2];
}
_dropoff addAction [ "Drop payload", _payloadDrop, nil, 6, true, true, "", '!isNil (player getVariable ["Scv_carriedPayload", nil])', 2]