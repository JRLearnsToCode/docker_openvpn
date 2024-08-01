#! /bin/bash

# get the list of servers available for vpn
# then use shuf to randomly select one of the servers
remote_server=$(/usr/bin/shuf -n 1 /etc/openvpn/server.list.txt)

# need to log which server I connected to

/usr/sbin/openvpn \
    --config /etc/openvpn/vpn.conf \
    --auth-user-pass <(echo -e "$(<$VPN_USERNAME)"'\n'"$(<$VPN_PASSWORD)") \
    --remote $remote_server

# need to log what ip address I received