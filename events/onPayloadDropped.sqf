params ["_unit", "_payload"];

["Payload dropped!"] remoteExec ["systemChat", [0,-2] select isDedicated];

private _moveObjective = {
    params [ "_payload" ];
    {
        if(taskState _x == "CREATED") then {
            _x setSimpleTaskDestination (getPos _payload);
        };
    } forEach simpleTasks player;
};

[[_payload], _moveObjective] remoteExec ["bis_fnc_call", [0, -2] select isDedicated];