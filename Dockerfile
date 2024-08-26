FROM alpine:3.10.1

RUN apk add --update bash socat

RUN apk add caddy

RUN apk add openrc --no-cache

COPY tcp-proxy.sh /usr/bin/tcp-proxy

CMD /usr/bin/tcp-proxy 89.22.229.231 443

