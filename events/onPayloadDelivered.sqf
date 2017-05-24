params ["_player", "_payload", "_dropoff"];

["Payload has been delivered."] remoteExec ["systemChat", [0,-2] select isDedicated];;

if(isServer) then {
    sleep 10;

    if(count payloads <= PAYLOAD_VICTORY_COUNT) then
    {
    }
    else
    {
        activePayload = [payloads, PAYLOAD_ACTIVATION_TIME] call Scv_fnc_selectNextPayload;
        payloads = payloads - [activePayload];
    };
};