params ["_player", "_payload", "_dropoff"];

if(!isServer || !isDedicated) then
{
    if(player == _player) then
    {
        [side group player, "HQ"] sideChat "Perfect, payload delivered"
    }
    else
    {
        if(side group player == side group _player) then
        {
            [side group player, "HQ"] sideChat "Our side has delivered the payload";
        }
        else
        {
            [side group player, "HQ"] sideChat "The enemy have delivered the payload";
        };
    };
};

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