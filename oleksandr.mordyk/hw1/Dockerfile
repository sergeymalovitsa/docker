#Home work #1

FROM alpine:latest

LABEL build="27-Jul-2019"
LABEL maintainer="Mordyk Oleksandr kurtwalkir@gmail.com"

RUN apk update && apk upgrade && apk add bash && apk add nginx
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /run/nginx

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'
