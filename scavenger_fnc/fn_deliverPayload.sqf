/*
	Author: Michal Tusnio

	Description:
	Call on the player to deliver the carried payload

	Parameter(s):
	0: Unit, player delivering the payload
    
	Returns:
	None
*/

if (!params ["_player"]) exitWith {};

if(!isServer || !isDedicated) then
{
    if(player == _player) then
    {
        [side group player, "HQ"] sideChat "Perfect, payload delivered"
    }
    else
    {
        if(side group player == side group _player) then
        {
            [side group player, "HQ"] sideChat "Our side has delivered the payload";
        }
        else
        {
            [side group player, "HQ"] sideChat "The enemy have delivered the payload";
        };
    };
};

if(isServer) then
{
    private _payload = _player getVariable ["Scv_carriedPayload", objNull];
    if(!isNull _payload) then
    {
        _player setVariable ["Scv_carriedPayload", objNull, true];
        side group _player addScoreSide 100;
        [_player, _payload] execVM "events\onPayloadDelivered.sqf"
    };
};