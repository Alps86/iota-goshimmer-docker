#bin/bash

apt update
apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg-agent \
     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
/etc/init.d/docker start || true
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker-compose -v

mkdir -p /opt/goshimmer
cd /opt/goshimmer

mkdir db
chmod 0777 db

# setup service
curl -LO https://raw.githubusercontent.com/Alps86/iota-goshimmer-docker/master/goshimmer.service
curl -LO https://raw.githubusercontent.com/Alps86/iota-goshimmer-docker/master/config.sh
curl -LO https://raw.githubusercontent.com/Alps86/iota-goshimmer-docker/master/docker-compose.yml

chmod +x config.sh

