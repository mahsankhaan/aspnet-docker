#!/bin/sh
 
#mkdir -p /dev/net

#chmod 777 /dev/net/tun

#mknod /dev/net/tun c 10 200
#chmod 777 /dev/net/tun
cd /etc/openvpn/
openvpn --config client.ovpn --daemon .
dotnet /app/webapp.dll
