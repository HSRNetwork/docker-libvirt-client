FROM alpine:3.18
LABEL maintainer="INS OST"

RUN apk update \
    && apk add libvirt-client \
    &&  rm -rf /var/cache/apk/*

CMD ["tail", "-f", "/dev/null"]
