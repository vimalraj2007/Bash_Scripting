# /bin/bash

plain_scan(){
	echo "Enter the ip address of the target"
	read target
	nmap "$target"
}

Whole_scan(){
	echo "Enter the network postion of ip address"
	read range

	for i in {1..255}
        do
        	ip="$range.$i"
        	echo "[+] Scanning $ip"
        	nmap -sn "$ip"  > result_ip.txt

        	if grep "Host is up" result_ip.txt ; then
        	    echo "$ip is up"
        	else
           	 echo "$ip is down"
        	fi
   	 done
}
Aggressive_scan(){
	echo "Enter the ip address of the target"
        read target

	nmap -A "$target"
}

Port_scan(){
	echo "Enter the ip address of the target"
        read target

	echo "Enter the no.of port scanning"
        read n
	for ((i=1;i<=n;i++));
	do
		echo "Enter the port $i: "
		read value
		arr[i]=$value
	done
	for((i=1;i<=n;i++));
	do
        	if nmap -p "${arr[$i]}" "$target" | grep -q "open"; then
                	echo "[+] Port ${arr[$i]} is OPEN on $target"
        	else
                	echo "[-] Port ${arr[$i]} is CLOSED or FILTERED on $target"
       		 fi
	done
}
finished=0

while [ $finished -eq 0 ]
do
	echo "Enter the type of nmap scan"
	echo " 1 - Plain nmap scan"
	echo " 2 - whole network scan"
	echo " 3 - Aggressive nmap scan"
	echo " 4 - Port nmap scan"
	echo " 5 - Exit"
	echo "Enter you choice(1-4)"
	read choice

	case $choice in
		1)plain_scan;;
		2)Whole_scan;;
		3)Aggressive_scan;;
		4)Port_scan;;
		5)finished=1;;
		*)echo "Invalid Choice"
	esac
done

echo "Thank you for using own script"
