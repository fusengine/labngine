FROM ubuntu-upstart:latest

MAINTAINER Fusengine <info@fusengine.ch>

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
                  build-essential

# Upgrade
RUN apt-get dist-upgrade -y

# Cleanup
RUN apt-get clean

EXPOSE 22

# pepare for takeoff
CMD ["/sbin/init"]
