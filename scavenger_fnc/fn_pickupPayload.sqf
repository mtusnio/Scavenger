/*
	Author: Michał Tuśnio

	Description:
	Picks up provided payload

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