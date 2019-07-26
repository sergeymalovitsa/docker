# Homework 1.
# Create Alpine:3.10.1 based Docker image with nginx installed

# The main image to start from:	alpine:3.10.1
FROM alpine:3.10.1

# Basic Labels
LABEL version="0.9.0"
LABEL maintainer="Daniil.Prakhin"

# Initial commands to:
# - update apk repository inside container
# - install nginx package
# - create folder for storing .pid file (by default /run/nginx/nginx.pid)
# - chown to nginx:nginx for /run/nginx folder to make sure it will be accessible
RUN apk update \
 && apk add nginx \
 && mkdir /run/nginx \
 && chown nginx:nginx /run/nginx

# Set entry point - process which defines the container status
# Start nginx server not in daemon mode
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
