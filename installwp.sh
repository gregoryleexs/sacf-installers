#!/bin/bash

echo "WordPress Downloader Script for 44SACF by Greg"
echo "The purpose of this script is to make it easier for you to install the required packages that are required to build a webserver in this module."
echo "You must NOT use it for purposes of cheating in tests/lab tests."
echo " "
echo "To proceed, please make sure that you have HTTPD installed. To set up WordPress, you need a MySQL server installed and configured with wordpress database and wordpress user."
echo "Furthermore, this script MUST be run as root or with sudo."

while true; do

read -p " Have you met these requirements? (yes/no) " yn

case $yn in 
	yes ) echo Proceeding;
		break;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac

done

curl https://wordpress.org/latest.tar.gz --output wordpress.tar.gz
tar xf wordpress.tar.gz
echo "To proceed, you may need to enter your password now."
sudo cp -r wordpress /var/www/html
sudo chown -R apache:apache /var/www/html/wordpress
sudo chcon -t httpd_sys_rw_content_t /var/www/html/wordpress -R
echo "Now deleting downloaded files, as WordPress contents have been copied already"
sudo rm -r wordpress
sudo rm wordpress.tar.gz

echo "We need to restart HTTPD and MariaDB first."
sudo systemctl restart httpd
sudo systemctl restart mariadb

echo "DONE! To set up Wordpress, visit http://<server_ip_address>/wordpress"
