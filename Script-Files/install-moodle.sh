#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y nginx postgresql postgresql-contrib php8.3 php8.3-fpm \
    php8.3-pgsql php8.3-curl php8.3-xml php8.3-mbstring php8.3-zip php8.3-intl \
    php8.3-gd unzip git certbot python3-certbot-nginx

# Configure PostgreSQL
sudo -i -u postgres psql -f postgres-setup.sql

# Clone Moodle repository
cd /var/www/html
sudo git clone -b MOODLE_402_STABLE git://git.moodle.org/moodle.git
sudo chown -R www-data:www-data /var/www/html/moodle
sudo chmod -R 755 /var/www/html/moodle

# Apply Moodle data directory permissions
./moodledata-permissions.sh

# Configure Nginx
sudo ln -s /etc/nginx/sites-available/moodle /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl restart nginx

# Obtain SSL Certificate
sudo certbot --nginx -d yourdomain.xyz -d www.yourdomain.xyz

# Install Moodle via CLI
 php admin/cli/install.php \
    --lang=en \
    --wwwroot=https://yourdomain.xyz \
    --dbtype=pgsql \
    --dbhost=localhost \
    --dbport=5432 \
    --dataroot=/var/www/moodledata \
    --dbname=moodle \
    --dbuser=moodleuser \
    --dbpass=123qweasd \
    --prefix=mdl_ \
    --adminuser=admin \
    --adminemail=admin@gmail.com \
    --adminpass=123@Qweasd \
    --fullname=testserver \
    --shortname=testserver \
    --chmod=0777 \
    --non-interactive \
    --agree-license

echo "Moodle installation completed!"
