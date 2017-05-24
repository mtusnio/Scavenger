 /*
	Author: Michal Tusnio

	Description:
	Returns the end index of a variable name, i.e. for "payload_1" it will return 1 as a number

	Parameter(s):
	0: String or Object
    
	Returns:
	Number
*/
if (!params ["_name"]) exitWith {};

if(typeName _name != "STRING") then {
    _name = vehicleVarName _name;
};

private _strings = _name splitString "_";
parseNumber (_strings select ((count _strings) - 1));
        