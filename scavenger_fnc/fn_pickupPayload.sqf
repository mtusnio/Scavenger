/*
	Author: Michał Tuśnio

	Description:
	Call on all clients and server whenever payload is picked up

	Parameter(s):
	0: Unit which picked the payload up
    1: Payload object

	Returns:
	None
*/

if (!params ["_payload", "_player"]) exitWith {};

if(!isServer || !isDedicated) then
{
    if(player == _player) then
    {
        [side group player, "HQ"] sideChat "Good job, bring the payload to the extraction zone"
    }
    else
    {
        if(side group player == side group _player) then
        {
            [side group player, "HQ"] sideChat "We have picked up the payload";
        }
        else
        {
            [side group player, "HQ"] sideChat "Enemy has the payload, recover it";
        };
    };
};

if(isServer) then
{
    _payload setPos [0, 0, 0];
    _player setVariable ["Scv_carriedPayload", _payload, true];
};