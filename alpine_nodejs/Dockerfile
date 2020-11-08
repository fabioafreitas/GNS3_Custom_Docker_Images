FROM alpine
RUN apk update
RUN apk add nodejs npm
RUN apk add nano net-tools nmap
RUN npm install -g express socketio socket.io-client jquery
VOLUME [ "/root" ]
CMD ["/bin/sh"]