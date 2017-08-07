#!/bin/bash
##
# Dependency and setup script for Ubuntu Server 17.04
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y python-certbot-apache
sudo apt-get install -y language-pack-en postgresql postgis

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install nodejs

# Request and activate ssl certificate with Let's Encrypt
sudo certbot --apache

# Enable the reverse proxy
sudo a2enmod proxy_http
sudo cp proxy.conf /etc/apache2/mods-enabled/proxy.conf
sudo systemctl restart apache2

# Clone ApiServer
git clone https://github.com/frasmarco/apiServer.git
cd apiServer
npm install
## Remember to configure it!

## Postgres setup
echo "host    all             all             all            md5" >> /etc/postgresql/9.6/main/pg_hba.conf
cat postgresql.conf >/etc/postgresql/9.6/main/postgresql.conf
systemctl restart postgresql

## Fix locales
locale-gen it_IT.UTF-8

## install apiServer service
sudo cp apiServer@.service /etc/systemd/system
sudo systemctl daemon-reload