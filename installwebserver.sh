#!/bin/bash
echo "easy webserver installation script for 44SACF by Greg"
echo "The purpose of this script is to make it easier for you to install the required packages that are required to build a webserver in this module."
echo "You must NOT use it for purposes of cheating in tests/lab tests."
while true; do

read -p "Do you want to proceed with installing prerequisites for Wordpress (HTTPD ,MariaDB and PHP)? [yes/no]" yn

case $yn in
	yes ) echo "alright, proceeding";
	break;;
	no ) echo "Quitting...";
	exit;;
	* ) echo "Invalid input. ";;

esac

done


echo "SCRIPT STARTED. Before installing, system updates if any will be installed. You may need to enter your password NOW for all operations to be successful."
sudo dnf upgrade -y
sudo dnf install httpd -y
sudo dnf install mariadb-server -y
sudo dnf install php php-mysqlnd -y
echo "STARTING HTTPD AND MARIADB NOW, AS WELL AS ALLOWING THEM TO AUTOSTART ON BOOT"
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl start mariadb
sudo systemctl enable mariadb
echo "APPS INSTALLED. ALLOWING HTTP AND HTTPS ACCESS FROM OUTSIDE..."
sudo firewall-cmd  --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
echo "RUN SCRIPT SUCCESSFUL. MAKE SURE YOU TEST HTTPD AND MARIADB. It is recommended that you reboot your system NOW and test LATER"
