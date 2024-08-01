FROM ubuntu:noble

RUN apt-get update &&\
    apt-get dist-upgrade -y &&\ 
    apt-get autoremove -y &&\ 
    apt-get install openvpn -y &&\ 
    apt-get install curl -y

# these are for debugging
# RUN apt-get install iputils-ping -y # this gets ping

COPY ./VPN/ca.rsa.2048.crt /etc/openvpn
COPY ./VPN/vpn.conf /etc/openvpn
COPY ./VPN/crl.rsa.2048.pem /etc/openvpn
COPY ./start_openvpn.sh /root/
COPY ./VPN/server.list.txt /etc/openvpn/ 

ENTRYPOINT ["/bin/bash", "/root/start_openvpn.sh"]

# this is for debugging
# ENTRYPOINT ["tail", "-f", "/dev/null"]