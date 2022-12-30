#!/usr/bin/env bash
 
apt-get update && apt-get install -y --no-install-recommends python3 python3-pip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
cd /usr/bin
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt
chmod +x packetcrypt
cd /home
git clone https://github.com/sengepeke/peer2profit-heroku.git
cd peer2profit-heroku/webapp
pip3 install --no-cache-dir -q -r requirements.txt
clear
python3 main.py
