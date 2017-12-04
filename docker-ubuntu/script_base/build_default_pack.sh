#!/bin/bash

# add script function
source /root/script_base.sh

# time zone docker
TIME=${TIMEZONE}

# add repos ondrej
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x4f4ea0aae5267a6c
echo "deb http://ppa.launchpad.net/ondrej/apache2/ubuntu xenial main" > /etc/apt/sources.list.d/apache2.list
echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main" > /etc/apt/sources.list.d/php7.list

# nginx
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 
echo "deb http://ppa.launchpad.net/chris-lea/nginx-devel/ubuntu xenial main " > /etc/apt/sources.list.d/nginx.list

# add packages
PACKAGES_DEFAULT="vim curl sudo wget git zip unzip htop supervisor build-essential \
                  software-properties-common python-software-properties language-pack-en-base"

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
