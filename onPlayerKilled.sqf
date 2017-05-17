params ["_unit", "_killer", "_respawn", "_respawnDelay"];

if(isServer) then {
    [_unit] call Scv_fnc_dropPayload;
};