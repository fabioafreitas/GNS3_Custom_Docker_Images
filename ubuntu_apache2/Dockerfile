FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools telnet curl traceroute iptables nmap \
    nano vim-tiny iputils-ping apache2 \ 
    && rm -rf /var/lib/apt/lists/*

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; /etc/init.d/apache2 start; exec bash -i" ]
