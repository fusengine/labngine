#!/bin/bash

# add script function
source /root/script_base.sh

# time zone docker
TIME=${TIMEZONE}

# add packages
PACKAGES_DEFAULT="vim curl sudo wget git zip unzip htop supervisor build-essential \
                  software-properties-common python-software-properties language-pack-en-base tzdata"

# Env package to dockerfile
PACKAGES_ENV_DOCKERFILES=${PACKAGES_BUILDPACK}

# Update Ubuntu
update

# Install_packages
install_packages

# Setting timezone
echo $TIME
cp /usr/share/zoneinfo/$TIME /etc/localtime
echo "$TIME" > /etc/timezone

# Upgrade ubuntu
upgrade

# Clean ubuntu
clean_ubuntu
