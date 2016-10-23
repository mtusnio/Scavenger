private _payloadCount = count payloads;

if(_payloadCount > 0) then
{
    private _selected = floor random _payloadCount;
    private _payload = payloads select _selected;
    
    
    private _informPlayers = {
        private _selected = _this select 0;
        private _markerName = format ["payload_marker_%1", _selected];
        [side player, "HQ"] sideChat "New payload has been identified, it will become active in 8 minutes";
        private _newTask = player createSimpleTask [ format ["payload_task_%1", _selected] ];
        _newTask setSimpleTaskDestination (getMarkerPos _markerName);
        _newTask setSimpleTaskDescription ["", "Intercept payload", "Payload"];
        _newTask setTaskState "CREATED";
        
    };
    
    [[_selected], _informPlayers] remoteExec ["bis_fnc_call", 0];
    
    sleep PAYLOAD_ACTIVATION_TIME;
    
    [_payload] execVM "payloadActivate.sqf";
    
    { [side player, "HQ"] sideChat "Payload is now active!" } remoteExec ["bis_fnc_call", 0];
    
    
};