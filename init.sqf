if(!isMultiplayer) then
{
    [1] call compile preprocessFileLineNumbers "params\enableDebug.sqf";
    [] call compile preprocessFileLineNumbers "consts.sqf";
};