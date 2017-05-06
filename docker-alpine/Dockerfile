FROM alpine
MAINTAINER Fusengine <info@fusengine.ch>

# update alpine
RUN apk update --no-cache && apk upgrade --no-cache

# Add Repos php7.0 and php7.1
#RUN wget -O /etc/apk/keys/php-alpine.rsa.pub http://php.codecasts.rocks/php-alpine.rsa.pub && \
#    echo "http://php.codecasts.rocks/7.0" >> /etc/apk/repositories && \
#    echo "http://php.codecasts.rocks/7.1" >> /etc/apk/repositories

# update alpine
RUN apk --no-cache update && apk --no-cache upgrade

# install package
RUN apk --no-cache add --update vim openrc htop curl git zip unzip

# Clean cache
RUN rm -rf /var/cache/apk/*