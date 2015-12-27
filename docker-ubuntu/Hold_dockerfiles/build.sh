echo ''
echo '                    Add ubuntu '
echo ''
# Add Key to php7 && Add repos to install php 7
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 0x4f4ea0aae5267a6c
echo "deb http://ppa.launchpad.net/ondrej/php-7.0/ubuntu trusty main" > /etc/apt/sources.list.d/php7.list

echo ''
echo '                    Update ubuntu '
echo ''
# Update
apt-get update

echo ''
echo '                    Install packages for ubuntu                      '
echo ''
# Install packages
apt-get install -y vim curl wget git zip unzip htop figlet supervisor build-essential \
                  software-properties-common python-software-properties language-pack-en-base

echo ''
echo '                 Upgrade ubuntu                       '
echo ''
# Upgrade
apt-get dist-upgrade -y && apt-get upgrade -y

echo ''
echo '                  Cleanup                      '
echo ''

# Cleanup
apt-get clean
echo ''
echo '                        Is complete                              '
