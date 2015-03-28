#!/usr/bin/env bash

export VISUAL=vim
export EDITOR="$VISUAL"

apt-get install -y software-properties-common
apt-get install -y python-software-properties

apt-add-repository ppa:ansible/ansible

apt-get update

apt-get install -y openjdk-6-jre
apt-get install -y openjdk-7-jdk
apt-get install -y php5 php5-curl php5-mongo
apt-get install -y mongodb
apt-get install -y vim
apt-get install -y curl
apt-get install -y git
apt-get install -y ant
apt-get install -y apache2
apt-get install -y libxml2
apt-get install -y python
apt-get install -y python-dev
apt-get install -y python-pip
apt-get install -y make
apt-get install -y ansible

pip install pyyaml
pip install tinkerer
pip install cssselect
pip install lxml

wget https://phar.phpunit.de/phpunit.phar
mv phpunit.phar /usr/bin/phpunit
chmod +x /usr/bin/phpunit

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/bin/composer

if [ ! -d "/vagrant/data" ]; then
    mkdir /vagrant/data
fi

rm -rf /var/www
ln -s /vagrant/data/doctrine-website-sphinx/site/blog/html /var/www

cd /vagrant/data
git clone git@github.com:doctrine/doctrine-sphinx-theme.git
git clone git@github.com:doctrine/doctrine-website-sphinx.git
