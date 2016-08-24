#!/bin/bash

# add script function
source /root/script_base.sh

apt update

# add packages
PACKAGES_DEFAULT="vim sudo curl wget git zip unzip htop figlet supervisor \
                  build-essential software-properties-common python-software-properties"

# Env package to dockerfile
PACKAGES_ENV_DOCKERFILES=${PACKAGES_BUILDPACK}

# Update debian
update

# Install_packages
install_packages

# REPOS php7
echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
wget -O - https://www.dotdeb.org/dotdeb.gpg | apt-key add -
apt update

# Upgrade debian
upgrade

# Clean debian
clean_debian
