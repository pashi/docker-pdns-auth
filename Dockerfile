FROM alpine:latest
MAINTAINER pasi@pashi.net

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --update add pdns pdns-backend-mysql 
RUN mkdir -p /app
COPY start.sh /
WORKDIR /app
VOLUME ["/app"]
ENTRYPOINT ["/start.sh"]
