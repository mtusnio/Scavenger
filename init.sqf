if(!isMultiplayer) then
{
    [] call compile preprocessFileLineNumbers "consts.sqf";
    [1] call compile preprocessFileLineNumbers "params\enableDebug.sqf";
};