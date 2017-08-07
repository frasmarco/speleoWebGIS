#!/bin/bash
##
# Dependency and setup script for Ubuntu Server 17.04
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y python-certbot-apache
sudo apt-get install -y postgresql postgis

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install nodejs

# Request and activate ssl certificate with Let's Encrypt
sudo certbot --apache

# Enable the reverse proxy
a2enmod proxy_http
sudo cp proxy.conf /etc/apache2/mods-enabled/proxy.conf
sudo systemctl restart apache2