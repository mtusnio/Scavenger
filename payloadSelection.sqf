private _payloadCount = count payloads;

if(_payloadCount > 0) then
{
    private _selected = floor random _payloadCount;
    private _payload = payloads select _selected;
    
    
    private _informPlayers = {
        private _selected = (_this select 0) + 1;
        private _markerName = format ["payload_marker_%1", _selected];
        [side group player, "HQ"] sideChat "New payload has been identified, it will become active in 8 minutes";
        private _newTask = player createSimpleTask [ format ["payload_task_%1", _selected] ];
        _newTask setSimpleTaskDestination (getMarkerPos _markerName);
        _newTask setSimpleTaskDescription ["", "Intercept payload", "Payload"];
        _newTask setTaskState "CREATED";
        
    };
    
    [[_selected], _informPlayers] remoteExec ["bis_fnc_call", [0,-2] select isDedicated];
    
    sleep PAYLOAD_ACTIVATION_TIME;
    
    private _pickupScript = {    
        private _payload = _this select 0;
        private _player = _this select 1;
        
        [_payload, _player] remoteExec ["Scv_fnc_pickupPayload", 0, false]
    };

    [_payload, ["Take payload", _pickupScript, nil, 1.5, true, true, "", "true", 1]] remoteExec ["addAction", [0,-2] select isDedicated, true];

    
    { [side player, "HQ"] sideChat "Payload is now active!" } remoteExec ["bis_fnc_call", [0,-2] select isDedicated];
    
    
};