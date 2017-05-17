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

_dropoff addAction [ "Drop payload", { [_this select 1, _this select 0] remoteExec ["Scv_fnc_deliverPayload", 0]; }, nil, 6, true, true, "", '!isNull (player getVariable ["Scv_carriedPayload", objNull])', 2];