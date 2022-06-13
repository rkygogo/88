#!/bin/sh
rm -rf /etc/trojan-go/config.json
cat << EOF > /etc/trojan-go/config.json
    {
      "run_type": "server",
    "local_addr": "0.0.0.0",
    "local_port": 443,
    "remote_addr": "127.0.0.1",
    "remote_port": 80,
    "password": [
        "$UUID"
    ],
"websocket": {
    "enabled": true,
    "hostname": "www.your-awesome-domain-name.com"
    },
    "router":{
        "enabled": true,
        "block": [
            "geoip:private"
        ]
    }
}
EOF
xray -c /etc/trojan-go/config.json
