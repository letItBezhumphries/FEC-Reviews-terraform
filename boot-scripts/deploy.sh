#!/bin/bash

set -e

apt-get update
apt-get install mysql-client -y

mv /tmp/FEC-Reviews-Module ~/FEC-Reviews-Module

curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

sleep 20

NODE_VERSION=$(nodejs -v)

echo "Version of Nodejs installed: ${NODE_VERSION}"

NPM_VERSION=$(npm -v)

echo "Version of NPM installed: ${NPM_VERSION}"

#Create .bash_profile file to persist nvm vars
sudo -u ubuntu touch /home/ubuntu/.bash_profile

