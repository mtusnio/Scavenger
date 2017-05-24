params ["_player", "_payload", "_dropoff"];

private _finishTask = {
    params [ "_player", "_index" ];
    systemChat "Payload delivered";

    private _state = "SUCCEEDED";

    if(side group player != side group _player) then {
        _state = "FAILED";
    };

    {
        if(taskState _x == "CREATED") then {
            _x setTaskState _state;
        };
    } forEach simpleTasks player;
};

[[_player, [_payload] call Scv_fnc_getNameIndex ], _finishTask] remoteExec ["bis_fnc_call", [0, -2] select isDedicated];

sleep 10;

if(count payloads <= PAYLOAD_VICTORY_COUNT) then
{
}
else
{
    activePayload = [payloads, PAYLOAD_ACTIVATION_TIME] call Scv_fnc_selectNextPayload;
    payloads = payloads - [activePayload];
};
