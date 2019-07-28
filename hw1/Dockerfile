FROM alpine:3.10.1

LABEL version="1.0.0"
LABEL maintainer="Volodymyr Kaliuzhnyi"

RUN apk update && apk add nginx && rm -rf /var/cache/apk/*\
&& mkdir -p /run/nginx

COPY website /usr/share/nginx/html

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g", "daemon off;"]