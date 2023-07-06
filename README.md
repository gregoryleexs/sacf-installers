# sacf-installers
Some useful BASH scripts for installation of required packages for Ngee Ann Poly Server &amp; Cloud Fundamentals module. Not for public editing.

The aim of me creating this is so that you will need to worry less about the packages to install manually, hence saving you time. This will be of great use let's say when you need to set the software up on different servers or computers.

These scripts are ONLY COMPATIBLE WITH NEWER FEDORA OR ENTERPRISE LINUX-BASED DISTROS (for example, RHEL 8 or later, CentOS/Stream 8 or later, Fedora 22 or later, Amazon Linux 2023 or later). For Amazon Linux 2023 systems, I have made another version of the scripts that will run on these systems. These scripts' names end with 'amzn'.

These must NOT be used for the purposes of cheating during exams or lab tests. If you attempt to cheat using the scripts in this repo, you will be held 100% liable for the cheating offence. If you are using the files in this repo for live project demonstrations, please give attribution.

installwebserver.sh installs the Apache web server software, MariaDB MySQL database, as well as PHP tools. This will allow you to host sites easily.

installwp.sh downloads and copies the latest version of WordPress for servers to your Apache directory. Before running this, you need to ensure that you have created the WordPress database as well as a WordPress user in MariaDB.

As the module progresses, I will create more scripts. However if there are any bugs, you may feel free to report them here.

# INSTRUCTIONS
Use the following commands to download the script to your working directory.
installwebserver: wget https://github.com/gregoryleexs/sacf-installers/blob/0efec459f2d1db68a25735f40922ea5c2b294792/installwebserver.sh -O installwebserver.sh
installwebserveramzn: wget https://github.com/gregoryleexs/sacf-installers/blob/0efec459f2d1db68a25735f40922ea5c2b294792/installwebserveramzn.sh -O installwebserveramzn.sh
installwp: wget https://github.com/gregoryleexs/sacf-installers/blob/0efec459f2d1db68a25735f40922ea5c2b294792/installwp.sh -O installwp.sh
