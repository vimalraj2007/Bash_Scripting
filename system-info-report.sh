#! /bin/bash

sys_info(){
	echo "===========System Information========"
	uname -a
	df -h
	free -h
}

net_info(){
	echo "===========Network Information======="
	ip addr show 
	ip route show
}

user_info(){
	echo "===========User Information========="
	whoami
	id
}



finished=0

while [ $finished -eq 0 ]
do
	#Menu
	echo "Select the configration you need to see"
	echo " 1 - System Info"
	echo " 2 - Network Info"
	echo " 3 - User Info"
	echo " 4 - exit"

	echo "Enter your Choice(1-4)"
	read input
	case $input in
		1)sys_info;;
		2)net_info;;
		3)user_info;;
		4)finished=1;;
		*)echo "Invalid Choice"
	esac
done

echo "Thank You for visting our script"

