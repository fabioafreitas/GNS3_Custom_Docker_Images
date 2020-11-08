FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools telnet curl traceroute nmap \
    nano vim-tiny iputils-ping \
    bind9 bind9utils bind9-doc \
    && rm -rf /var/lib/apt/lists/*

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; /etc/init.d/bind9 start; exec bash -i" ]
