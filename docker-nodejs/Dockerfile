FROM labengine/ubuntu-upstart
MAINTAINER Fusengine <info@fusengine.ch>

# add version nodejs
ENV NODE_VERSION setup_5.x

# Update Ubuntu and install curl
# RUN figlet Fusengine Nodejs

# Add Nodejs repos
RUN curl -sL https://deb.nodesource.com/${NODE_VERSION}| sudo -E bash -

# Update Ubuntu
RUN apt-get update

# Intall Nodejs
RUN apt-get install -y nodejs

# Install grunt-cli
RUN npm install -g grunt-cli

# Upgrade and dist-upgrade
RUN apt-get dist-upgrade -y && apt-get upgrade -y

# Cleanup
RUN apt-get clean

# Create directory
RUN mkdir /data
RUN chmod 775 /data

# WORKDIR
WORKDIR /data

# version Nodejs
RUN echo Node Version && node --version
RUN npm --version
