#!/bin/bash
apt update -y

# install and configure bind9 dns service
sleep 60
apt install bind9 -y
systemctl restart bind9.service

# install dnsutils for testing DNS
apt install dnsutils -y

# add the DNS zones
curl https://raw.githubusercontent.com/davidokeyode/AZ-700/main/chapter-2/template/bindconfig -o /etc/bind/named.conf.local

# restart the DNS service
systemctl restart bind9.service