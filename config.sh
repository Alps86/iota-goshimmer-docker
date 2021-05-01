#bin/bash

read -p "EMAIL: " email
read -p "DOMAIN: " domain

echo "EMAIL=$email
DOMAIN=$domain" > /etc/default/hornet

cp hornet.service /etc/systemd/system/hornet.service && rm hornet.service
systemctl enable hornet.service
systemctl daemon-reload
