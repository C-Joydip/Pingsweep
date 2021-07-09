#!bin/bash

echo "To ping an IP type ip
To scan a Subnet type subnet" 
echo "What do you wana do? : "
read cnfrm
if [ "$cnfrm" = "subnet" ];
then
	echo "Enter the subnet: "
	read sb
	for ipw in $(seq 1 254); do
	ping -c 1 $sb.$ipw 
	done
	echo "Thanks for using my tool"
fi
if [ "$cnfrm" = "ip" ];
then
	echo "Enter your ip: "
	read ip
	ping -c 1 $ip
	echo "Thanks for using my tool"
else
	echo "Invalid Options"
fi