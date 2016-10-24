class CfgFunctions
{
    class Scv
    {
        class General
        {
            file = "scavenger_fnc";
            class getNameIndex { };
        }
        class Payload
        {
            file = "scavenger_fnc";
            class pickupPayload { };
            class deliverPayload { };
            class createPayloadList { };
            class selectNextPayload { };
        };

        class Dropoff
        {
            file = "scavenger_fnc";
            class initDropoff { };
        };
    };
};