#! /bin/bash

echo "Package Installer Menu"
echo " 1 - Install Vim"
echo " 2 - Install Nano"
echo " 3 - Install htop"
echo " 4 - Install Nmap"
echo " 5 - Install Python"
echo " 6 - System Update"
echo " 7 - System Upgrade"
echo " 8 - Exit"
echo "Enter your choice: "
read package

case $package in
	1) sudo apt install -y vim;;
	2) sudo apt install -y nano;;
	3) sudo apt install -y htop;;
	4) sudo apt install -y nmap;;
	5) sudo apt install -y python3;;
	6) sudo apt install -y update;;
	7) sudo apt install -y upgrade;;
	8) exit 0;;
	*) echo "Invalid Choice"
esac



