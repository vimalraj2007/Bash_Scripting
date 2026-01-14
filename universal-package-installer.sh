#! /bin/bash

release=/etc/os-release

if  grep -q "Arch" $release || grep -q "Manjaro" $release 
then
	sudo pacman -Syu
elif grep -q "Debian" $release || grep -q "Ubuntu" $release  ||  grep -q "Kali" $release 
then
	sudo apt update && sudo apt upgrade -y
elif grep -q  "Fedora" $release || grep -q "CentOS" $release 
then
	sudo dnf upgrade -y
else
	echo "Unsupported distro"
	exit 1
fi

echo "Your Installation was successfully"

