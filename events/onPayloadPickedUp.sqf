params ["_player", "_payload"];

["Payload has been picked up."] remoteExec ["systemChat", [0,-2] select isDedicated];