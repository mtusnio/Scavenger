params ["_player", "_payload", "_dropoff"];

sleep 10;

if(isServer) then {
    if(count payloads <= PAYLOAD_VICTORY_COUNT) then
    {
    }
    else
    {
        activePayload = [payloads, PAYLOAD_ACTIVATION_TIME] call Scv_fnc_selectNextPayload;
        payloads = payloads - [activePayload];
    };
};