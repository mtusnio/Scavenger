params ["_value"];

scv_debug = _value;
if(_value isEqualTo 0) exitWith { };

scv_debug_damage_handler = { 
    params ["_unit", "_hitSelection", "_damage", "_source", "_projectile", "_hitPartIndex", "_instigator"];
    
    if(isPlayer _source) exitWith { };
    0;
};

[] spawn {
    sleep 0.5;
    setPlayerRespawnTime 1;
};

if(!isMultiplayer) then {
    player addEventHandler ["HandleDamage", scv_debug_damage_handler];
}
else {
    if(!isDedicated) then {
        player addMPEventHandler ["MPRespawn", { 
            player addEventHandler ["HandleDamage", scv_debug_damage_handler];
        }];
    };
};