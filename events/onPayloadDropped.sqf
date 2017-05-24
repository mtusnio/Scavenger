params ["_unit", "_payload"];

["Payload dropped!"] remoteExec ["systemChat", [0,-2] select isDedicated];