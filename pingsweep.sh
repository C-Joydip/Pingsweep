#!bin/bash

echo "Installing Requirements"
apt update -y
apt upgrade -y
apt install ping -y
apt install ruby -y
gem install lolcat

echo "To ping an IP type ip
To scan a Subnet type subnet" 
read -p "What do you wana do? : " cnfrm

case "$cnfrm" in
	[sS][uU][bB][nN][eE][tT])
		read -p "Enter the subnet: " sb
		for ipw in $(seq 1 254); do
		ping -c 1 $sb.$ipw 
		done
		echo "Thanks for using my tool"
		;;
	[iI][pP])
		read -p "Enter your ip: " ip
		ping -c 1 $ip
		echo "Thanks for using my tool"
		;;
	*)
		echo "Invalid Options"
		;;
esac
