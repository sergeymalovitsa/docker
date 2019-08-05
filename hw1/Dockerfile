FROM alpine:3.10.1

LABEL version="1.0.0"
LABEL maintainer="Sergey  Malovitsa"

RUN apk update && apk add iputils

ENTRYPOINT ["ping"]
CMD ["google.com"]

