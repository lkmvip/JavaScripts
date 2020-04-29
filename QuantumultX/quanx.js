#quanxremote 1.0.3
;^https:\/\/(raw.githubusercontent|\w+\.github)\.(com|io)\/.*\.js$ url script-response-body quanx.js

Qx Mitm:  raw.githubusercontent.com

var body = $response.body;
body = '\/*\n@supported 自己的设备ID\n*\/\n' + body;

$done(body);
