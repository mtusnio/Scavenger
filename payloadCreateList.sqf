payloads = [];

for "_i" from 1 to PAYLOAD_MAXIMUM_COUNT do
{
    private _payloadName = format [ "payload_%1", _i ];
    
    if(!isNil _payloadName) then
    {
        private _payload = missionNamespace getVariable [ _payloadName, objNull ]; 
        payloads pushBack _payload;
    };
   
};