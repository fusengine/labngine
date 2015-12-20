FROM ubuntu:latest
MAINTAINER Fusengine <info@fusengine.ch>

ENV DEBIAN_FRONTEND noninteractive

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
                    python-software-properties

# Upgrade
RUN apt-get dist-upgrade -y

# Cleanup
RUN apt-get clean

# Expose port
EXPOSE 22

# start ubuntu
CMD ["/bin/bash"]
