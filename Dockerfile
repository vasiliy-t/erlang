FROM alpine:3.2

RUN echo 'http://mirror.yandex.ru/mirrors/alpine/edge/testing/' >> /etc/apk/repositories && \
    apk --update add \
        erlang \
        erlang-crypto \
        erlang-sasl && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["erl"]
