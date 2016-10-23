[] call compile preprocessFileLineNumbers "consts.sqf";

[west, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;
[independent, RESPAWN_TICKETS_COUNT] call BIS_fnc_respawnTickets;


[] call compile preprocessFileLineNumbers "payloadCreateList.sqf";

[] spawn {
    sleep 5;
    [] execVM "payloadSelection.sqf";
}