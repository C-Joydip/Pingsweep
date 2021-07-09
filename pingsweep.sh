#!bin/bash

echo "Installing Requirements" | lolcat -as 10
apt update -y
apt upgrade -y
apt install ping -y
apt install ruby -y
gem install lolcat

echo "To ping an IP type ip
To scan a Subnet type subnet" 
echo "What do you wana do? : " | lolcat -as 10
read cnfrm

case "$cnfrm" in
	[sS][uU][bB][nN][eE][tT])
		echo "Enter the subnet: " | lolcat -as 10
		read sb
		for ipw in $(seq 1 254); do
		ping -c 1 $sb.$ipw 
		done
		echo "Thanks for using my tool"
		;;
	[iI][pP])
		echo "Enter your ip: " | lolcat -as 10
		read ip
		ping -c 1 $ip
		echo "Thanks for using my tool"
		;;
	*)
		echo "Invalid Options"
		;;
esac
