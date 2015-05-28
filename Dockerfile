FROM alpine:3.1

RUN echo 'http://mirror.yandex.ru/mirrors/alpine/edge/testing/' >> /etc/apk/repositories && \
    apk --update add \
        erlang \
        erlang-crypto \
        erlang-syntax-tools && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["erl"]
