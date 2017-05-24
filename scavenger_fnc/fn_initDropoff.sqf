/*
    Author: Michal Tusnio

    Description:
    Use in object's init to initialise a drop off point

    Parameter(s):
    0: Object which will be the dropoff point
    1: Side which can drop the payload
    
    Returns:
    None
*/

params ["_dropoff", ["_side", objNull]];

if(isNull _side || (side group player) isEqualTo _side) then {
    _dropoff addAction [ "Drop payload", {
    [_this select 1, _this select 0] remoteExec ["Scv_fnc_deliverPayload", 0];
    },
    nil, 6, true, true, "", '!isNull (player getVariable ["Scv_carriedPayload", objNull])', 2];
};