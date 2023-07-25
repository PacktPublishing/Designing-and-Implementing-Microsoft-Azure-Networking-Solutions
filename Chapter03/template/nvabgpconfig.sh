## NOTE:
## before running the script, customize the values of variables suitable for your deployment. 
## asn_quagga: Autonomous system number assigned to quagga
## bgp_routerId: IP address of quagga VM
## bgp_network1: first network advertised from quagga to the router server (inclusive of subnetmask)
## bgp_network2: second network advertised from quagga to the router server (inclusive of subnetmask)
## bgp_network3: third network advertised from quagga to the router server (inclusive of subnetmask)
## routeserver_IP1: first IP address of the router server 
## routeserver_IP2: second IP address of the router server

asn_quagga=65501
bgp_routerId=10.10.11.4
bgp_network1=10.100.1.0/24
bgp_network2=10.100.2.0/24
bgp_network3=10.100.3.0/24
routeserver_IP1=10.10.10.4
routeserver_IP2=10.10.10.5

echo "add quagga config"
cat <<EOF > /etc/quagga/bgpd.conf
!
router bgp $asn_quagga
 bgp router-id $bgp_routerId
 network $bgp_network1
 network $bgp_network2
 network $bgp_network3
 neighbor $routeserver_IP1 remote-as 65515
 neighbor $routeserver_IP1 soft-reconfiguration inbound
 neighbor $routeserver_IP2 remote-as 65515
 neighbor $routeserver_IP2 soft-reconfiguration inbound
!
 address-family ipv6
 exit-address-family
 exit
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