FROM alpine:3.12.9

RUN apk --no-cache upgrade \
 && apk --no-cache add  \
    iptables \
    libcap

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
