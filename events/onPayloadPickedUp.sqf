params ["_player", "_payload"];

if(!isServer || !isDedicated) then
{
    if(player == _player) then
    {
        [side group player, "HQ"] sideChat "Good job, bring the payload to the extraction zone"
    }
    else
    {
        if(side group player == side group _player) then
        {
            [side group player, "HQ"] sideChat "We have picked up the payload";
        }
        else
        {
            [side group player, "HQ"] sideChat "Enemy has the payload, recover it";
        };
    };
};