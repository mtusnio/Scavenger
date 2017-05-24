/*
    Author: Michal Tusnio

    Description:
    Delivers specified payload

    Parameter(s):
    0: Unit, player delivering the payload
    1: Dropoff point
    
    Returns:
    None
*/

if (!params ["_player", "_dropoff"]) exitWith {};

if(isServer) then
{
    private _payload = _player getVariable ["Scv_carriedPayload", objNull];
    if(!isNull _payload) then
    {
        _player setVariable ["Scv_carriedPayload", objNull, true];
        side group _player addScoreSide 100;
        [_player, _payload, _dropoff] execVM "events\onPayloadDelivered.sqf"
    };
};