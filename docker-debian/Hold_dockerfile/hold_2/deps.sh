echo ''
echo '                                Update debian'
echo ''
# update
apt-get update

echo ''
echo '              Install packages for debian                        '
echo ''

apt-get install -yqq vim curl wget git zip unzip htop figlet supervisor build-essential software-properties-common python-software-properties


echo ''
echo 'Add Repos on debian php7'
echo ''
echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
wget -O - https://www.dotdeb.org/dotdeb.gpg | apt-key add -
apt update

echo ''
figlet Re update
echo ''
apt-get update

echo ''
echo 'Upgrade'
echo ''
apt-get upgrade -y

echo ''
echo '                        Is complete                              '
