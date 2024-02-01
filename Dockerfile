FROM arm64v8/alpine:latest

RUN apk update && \
    apk upgrade && \
    apk --no-cache add hugo && \
    rm -rf /var/cache/apk/*

WORKDIR /srv

ENTRYPOINT ["/usr/bin/hugo"]
