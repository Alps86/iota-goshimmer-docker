#bin/bash

read -p "EMAIL: " email
read -p "DOMAIN: " domain

echo "EMAIL=$email
DOMAIN=$domain" > /etc/default/goshimmer

cp goshimmer.service /etc/systemd/system/goshimmer.service && rm goshimmer.service
systemctl enable goshimmer.service
systemctl daemon-reload
