#!/bin/bash

# Update packages
sudo apt update

# Install Apache Web Server
sudo apt install apache2 

# Edit index.html to add project intro
sudo nano /var/www/html/index.html

# Install MySQL Server
sudo apt install mysql-server 

# Login to MySQL to set up WordPress DB
sudo mysql 
CREATE DATABASE wordpress;\
CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'Testpass123';\
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';\
EXIT;"

# Install PHP for WordPress
sudo apt install php libapache2-mod-php php-mysql 

# Download and extract WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
sudo mv wordpress /var/www/html/

# Move WordPress to root directory (optional)
sudo mv /var/www/html/wordpress/* /var/www/html/

# Configure Apache Virtual Host
sudo cd /etc/apache2/sites-available/wordpress.conf
<VirtualHost *:80>
    ServerAdmin admin@freshgrocery.site
    ServerName freshgrocery.site
    ServerAlias www.freshgrocery.site
    DocumentRoot /var/www/html

    <Directory /var/www/html/>
        AllowOverride All
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log
</VirtualHost>

# Enable the WordPress site
sudo systemctl restart apache2

# Install Certbot for SSL
sudo apt install certbot python3-certbot-apache -y
sudo certbot --apache

# Final restart
sudo systemctl restart apache2

# Done
