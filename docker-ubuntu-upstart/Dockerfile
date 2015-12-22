FROM ubuntu-upstart:latest

MAINTAINER Fusengine <info@fusengine.ch>

# Add Key to php7 && Add repos to install php 7
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0x4f4ea0aae5267a6c && \
    echo "deb http://ppa.launchpad.net/ondrej/php-7.0/ubuntu trusty main" > /etc/apt/sources.list.d/php7.list

# Update
RUN apt-get update

# Install packages
RUN apt-get install -y \
                  vim \
                  curl \
                  wget \
                  git \
                  zip \
                  unzip \
                  htop \
                  supervisor \
                  build-essential \
                  software-properties-common \
                  python-software-properties \
                  language-pack-en-base

# Upgrade
RUN apt-get dist-upgrade -y

# Cleanup
RUN apt-get clean

EXPOSE 22

# pepare for takeoff
CMD ["/sbin/init"]
