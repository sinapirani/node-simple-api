FROM alpine:3.10.1

RUN apk add --update bash socat

COPY tcp-proxy.sh /usr/bin/tcp-proxy

CMD /usr/bin/tcp-proxy 89.22.229.231 443

