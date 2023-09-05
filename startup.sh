#!/bin/sh
 
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun
cd /etc/openvpn/
ls
openvpn --config client.ovpn --daemon .
#dotnet /app/webapp.dll
