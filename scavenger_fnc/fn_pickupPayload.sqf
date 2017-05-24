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

if(isServer) then
{
    _payload setPos [0, 0, 0];
    _player setVariable ["Scv_carriedPayload", _payload, true];
    [_player, _payload] execVM "events\onPayloadPickedUp.sqf"
};