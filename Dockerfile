FROM petehouston/docker-alpine-core

MAINTAINER Pete Houston <contact@petehouston.com>

ENV BUILD_DEPS curl-dev ruby-dev build-base
ENV RUBY_DEPS ruby ruby-irb ruby-io-console ruby-bundler

RUN apk update && \
    apk upgrade && \
    apk add $BUILD_DEPS && \
    apk add $RUBY_DEPS && \
    apk del $BUILD_DEPS && \
    rm -rf /var/cache/apk/*

CMD ["/usr/bin/ruby", "--version"]
