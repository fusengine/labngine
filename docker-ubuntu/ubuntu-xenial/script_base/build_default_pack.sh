#!/bin/bash

# add script function
source /root/script_base.sh

# add packages
PACKAGES_DEFAULT="vim curl wget git zip unzip htop supervisor build-essential \
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
