#!/bin/bash

echo "--> Updating the server <--"

apt-get update
apt-get upgrade -y

echo "--> Unstalling apache and unzip <--"

apt-get install apache2 -y
apt-get install unzip -y

cd /tmp

echo "--> Downloading the files <--"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

echo "--> Copying files to apache <--"

cp -R * /var/www/html
