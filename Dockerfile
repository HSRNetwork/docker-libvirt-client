FROM alpine:3.10
LABEL maintainer="Yannick Zwicker <yzwicker@ins.hsr.ch>"

RUN apk update \
    && apk add libvirt-client \
    &&  rm -rf /var/cache/apk/*

CMD ["tail", "-f", "/dev/null"]