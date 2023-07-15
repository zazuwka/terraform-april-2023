#!/bin/bash

sudo apt update -y
sudo apt install apache2 php php-mysql php-cgi php-gd php-cli -y
sudo apt install mariadb-client mariadb-server -y
wget https://wordpress.org/latest.tar.gz
sudo tar -xf latest.tar.gz -C /var/www/html/
sudo mv /var/www/html/wordpress/* /var/www/html/
sudo chown -R www-data:www-data /var/www/html/
sudo chmod 775 /var/www/html/*
sudo rm -rf index.html
sudo systemctl restart apache2