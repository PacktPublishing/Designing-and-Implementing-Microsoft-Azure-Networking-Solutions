#!/bin/bash

## update the OS
apt-get update -y

## Install the Quagga routing daemon
echo "Installing quagga"
apt-get -y install quagga

##  run the updates and ensure the packages are up to date and there is no new version available for the packages
apt-get -y update --fix-missing

## Enable IPv4 forwarding
echo "net.ipv4.conf.all.forwarding=1" | tee -a /etc/sysctl.conf 
echo "net.ipv4.conf.default.forwarding=1" | tee -a /etc/sysctl.conf 
sysctl -p

## Create a folder for the quagga logs
echo "creating folder for quagga logs"
mkdir -p /var/log/quagga && chown quagga:quagga /var/log/quagga
touch /var/log/zebra.log
chown quagga:quagga /var/log/zebra.log

## Create the configuration files for Quagga daemon
echo "creating empty quagga config files"
touch /etc/quagga/babeld.conf
touch /etc/quagga/bgpd.conf
touch /etc/quagga/isisd.conf
touch /etc/quagga/ospf6d.conf
touch /etc/quagga/ospfd.conf
touch /etc/quagga/ripd.conf
touch /etc/quagga/ripngd.conf
touch /etc/quagga/vtysh.conf
touch /etc/quagga/zebra.conf

## Change the ownership and permission for configuration files, under /etc/quagga folder
echo "assign to quagga user the ownership of config files"
chown quagga:quagga /etc/quagga/babeld.conf && chmod 640 /etc/quagga/babeld.conf
chown quagga:quagga /etc/quagga/bgpd.conf && chmod 640 /etc/quagga/bgpd.conf
chown quagga:quagga /etc/quagga/isisd.conf && chmod 640 /etc/quagga/isisd.conf
chown quagga:quagga /etc/quagga/ospf6d.conf && chmod 640 /etc/quagga/ospf6d.conf
chown quagga:quagga /etc/quagga/ospfd.conf && chmod 640 /etc/quagga/ospfd.conf
chown quagga:quagga /etc/quagga/ripd.conf && chmod 640 /etc/quagga/ripd.conf
chown quagga:quagga /etc/quagga/ripngd.conf && chmod 640 /etc/quagga/ripngd.conf
chown quagga:quaggavty /etc/quagga/vtysh.conf && chmod 660 /etc/quagga/vtysh.conf
chown quagga:quagga /etc/quagga/zebra.conf && chmod 640 /etc/quagga/zebra.conf

## initial startup configuration for Quagga daemons are required
echo "Setting up daemon startup config"
echo 'zebra=yes' > /etc/quagga/daemons
echo 'bgpd=yes' >> /etc/quagga/daemons
echo 'ospfd=no' >> /etc/quagga/daemons
echo 'ospf6d=no' >> /etc/quagga/daemons
echo 'ripd=no' >> /etc/quagga/daemons
echo 'ripngd=no' >> /etc/quagga/daemons
echo 'isisd=no' >> /etc/quagga/daemons
echo 'babeld=no' >> /etc/quagga/daemons

echo "add zebra config"
cat <<EOF > /etc/quagga/zebra.conf
!
hostname nvavm
password zebra
enable password zebra
!
interface eth0
!
interface lo
!
ip route 10.10.2.0/24 10.10.11.1
ip route 10.20.0.0/16 10.10.11.1
!
ip forwarding
!
line vty
!
EOF

## to start daemons at system startup
echo "enable zebra and quagga daemons at system startup"
systemctl enable zebra.service
systemctl enable bgpd.service

## run the daemons
echo "start zebra and quagga daemons"
systemctl start zebra 
systemctl start bgpd  