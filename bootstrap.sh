#!/usr/bin/env bash

apt-get update

apt-get install -y openjdk-6-jre
apt-get install -y openjdk-7-jdk
apt-get install -y php5 php5-curl
apt-get install -y nodejs
apt-get install -y node-less
apt-get install -y npm
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

pip install pyyaml
pip install tinkerer

npm install less

mkdir /home/vagrant/data
cd /home/vagrant/data
git clone git@github.com:doctrine/doctrine-website-sphinx.git
git submodule init
git submodule sync
git submodule update
mkdir pages
mkdir site/_static
./bin/generate-github-token.sh
ant install-sphinx
ant build

export VISUAL=vim
export EDITOR="$VISUAL"