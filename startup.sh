#!/bin/sh
 
mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun
cd /etc/openvpn/
openvpn --config client.ovpn --daemon .
dotnet /webapp.dll