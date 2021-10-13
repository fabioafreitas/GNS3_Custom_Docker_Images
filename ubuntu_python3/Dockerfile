FROM jordanirabor/python3.7-pip-pipenv
RUN apt-get update -y
RUN apt-get install -y vim-tiny iputils-ping
RUN pip3 install flask flask_cors mysql-connector-python websockets
VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
