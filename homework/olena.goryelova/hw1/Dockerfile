FROM alpine:3.10.1
LABEL version="1.0.0"
LABEL maintainer="Olena Goryelova"
    
RUN apk update && apk add --no-cache nginx
RUN apk add openrc --no-cache

RUN mkdir -p /usr/share/www/ /run/nginx/ && \
  rm /etc/nginx/conf.d/default.conf

RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/index.html

EXPOSE 80

ENTRYPOINT ["rc-service"]
CMD ["nginx", "stop"]

ENTRYPOINT ["rc-service"]
CMD ["nginx", "start"]
