#!/bin/bash
sudo mkdir /var/www/moodledata
sudo chown -R www-data:www-data /var/www/moodledata
sudo chmod -R 777 /var/www/moodledata
echo "Permissions set for moodledata!"
