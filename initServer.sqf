[] call compile preprocessFileLineNumbers "consts.sqf";

[west, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;
[independent, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;


payloads = ["payload", PAYLOAD_MAXIMUM_COUNT] call Scv_fnc_createPayloadList;

[] spawn {
    sleep 5;
    [] execVM "payloadSelection.sqf";
}