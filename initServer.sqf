[west, 20] call BIS_fnc_respawnTickets;
[independent, 20] call BIS_fnc_respawnTickets;

[] call compile preprocessFileLineNumbers "payloadCreateList.sqf";

[] spawn {
    sleep 5;
    [] execVM "payloadSelection.sqf";
}