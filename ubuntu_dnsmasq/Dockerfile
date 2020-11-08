FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools telnet curl traceroute iptables nmap \
    nano vim-tiny iputils-ping \
    dnsmasq bind9-host dnsutils \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/dns/dnsmasq.conf /etc/dnsmasq.conf

RUN DEBIAN_FRONTEND=noninteractive chmod 644 /etc/dnsmasq.conf

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; /etc/init.d/dnsmasq start; exec bash -i" ]
