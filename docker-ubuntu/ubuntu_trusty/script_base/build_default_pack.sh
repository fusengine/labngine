#!/bin/bash

# add script function
source /root/script_base.sh

# REPOS ondrej
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x4f4ea0aae5267a6c
echo "deb http://ppa.launchpad.net/ondrej/apache2/ubuntu trusty main" > /etc/apt/sources.list.d/apache2.list
echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu trusty main" > /etc/apt/sources.list.d/php7.list

# nginx
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 
echo "deb http://ppa.launchpad.net/chris-lea/nginx-devel/ubuntu trusty main " > /etc/apt/sources.list.d/nginx.list

# php5.6
#sudo add-apt-repository ppa:ondrej/php5-5.6 -y

# add packages
PACKAGES_DEFAULT="vim curl sudo wget git zip unzip htop figlet supervisor build-essential \
                  software-properties-common python-software-properties language-pack-en-base"

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
