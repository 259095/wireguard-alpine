FROM alpine:latest

# Documentation and examples
# https://wiki.alpinelinux.org/wiki/Configure_a_Wireguard_interface_(wg)

RUN apk add --no-cache --update wireguard-tools supervisor libqrencode && \
    rm -rf /var/cache/apk/*

CMD ["/usr/bin/supervisord", "-c", "/etc/wireguard/supervisord.conf"]
