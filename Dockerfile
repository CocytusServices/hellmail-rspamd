FROM alpine:latest

RUN apk add --no-cache rspamd rspamd-proxy rspamd-controller; \
    mkdir /run/rspamd/

EXPOSE 11332 11334

CMD ["/usr/sbin/rspamd", "-fi"]
