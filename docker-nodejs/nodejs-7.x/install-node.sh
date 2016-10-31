#!/bin/bash

# add script function
source /root/script_base.sh

NODE_V=${NODE_VERSION}

# Nodejs
curl -sL https://deb.nodesource.com/$NODE_V | bash -

# add packages
PACKAGES_DEFAULT="nodejs"

# Env package to dockerfile
PACKAGES_ENV_DOCKERFILES=${PACKAGES_BUILDPACK}

# Update Ubuntu
update

# Install_packages
install_packages

# Upgrade ubuntu
upgrade

# Clean ubuntu
clean_ubuntu

# Purge curl
apt-get remove --purge curl -y

# NPM install
npm install -g grunt grunt-cli
