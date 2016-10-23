[] call compile preprocessFileLineNumbers "consts.sqf";

[west, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;
[independent, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;


payloads = ["payload", PAYLOAD_MAXIMUM_COUNT] call Scv_fnc_createPayloadList;

activePayload = [payloads, PAYLOAD_ACTIVATION_TIME] call Scv_fnc_selectNextPayload;
payloads = payloads - [activePayload];
