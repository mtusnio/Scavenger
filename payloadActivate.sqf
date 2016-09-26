private _payload = _this select 0;
private _pickupScript = {
};

remoteExec ["addAction", -2, true];
_payload addAction ["Take payload", _pickupScript, nil, 1.5, true, true, "", "true", 1]