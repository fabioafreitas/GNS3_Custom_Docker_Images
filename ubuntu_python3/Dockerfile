FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install \
    net-tools traceroute nano vim-tiny iputils-ping \
    python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install flask flask_cors mysql-connector-python

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]