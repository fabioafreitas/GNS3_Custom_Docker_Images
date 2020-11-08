FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools telnet traceroute openssh-client openssh-server iptables nmap nano vim-tiny iputils-ping build-essential \
    python3 python3-pysnmp4 python3-ldap3 python3-paramiko python3-pip python3-aioxmlrpc python3-flask python3-flask-cors\
    && rm -rf /var/lib/apt/lists/*

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]