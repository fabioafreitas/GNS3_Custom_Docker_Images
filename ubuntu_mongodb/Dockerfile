FROM ubuntu:bionic
USER root
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools telnet curl  traceroute iptables nmap \
    nano vim-tiny iputils-ping mongodb\ 
    && rm -rf /var/lib/apt/lists/*
VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
