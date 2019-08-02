FROM alpine:3.10.1

LABEL version="1.0.0"
LABEL maintainer="Olena Buhaiova"

RUN apk update && apk add nginx
RUN adduser -D -g 'www' www && mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www

ENTRYPOINT [ "rc-service" ]    
CMD ["nginx", "start"]


