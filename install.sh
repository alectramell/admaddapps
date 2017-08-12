#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

echo "Sudo Priveleges are Required for Installation."

read -s -p "Please enter sudo password: " XPASS

clear

REQ1=$(which zenity)
REQ2=$(which pv)
REQ3=$(which nautilus)

clear

if [ $REQ1 = "/usr/bin/zenity" ]
then
	echo "REQ1=true"
	clear
else
	echo "REQ1=false"
	clear
	echo "$XPASS" | sudo -S apt-get install zenity
fi

clear

if [ $REQ2 = "/usr/bin/pv" ]
then
	echo "REQ2=true"
	clear
else
	echo "REQ2=false"
	clear
	echo "$XPASS" | sudo -S apt-get install pv
fi

clear

if [ $REQ3 = "/usr/bin/nautilus" ]
then
	echo "REQ3=true"
	clear
else
	echo "REQ3=false"
	clear
	echo "$XPASS" | sudo -S apt-get install nautilus
fi

clear

wget https://github.com/alectramell/admaddapps/raw/master/admaddapps-1.0.deb -O /home/$(whoami)/Desktop/admaddapps-1.0.deb

clear

echo "$XPASS" | sudo -S dpkg -i /home/$(whoami)/Desktop/admaddapps-1.0.deb

clear

sleep 0.5

clear

rm /home/$(whoami)/Desktop/admaddapps-1.0.deb

clear

echo "ADM Add-Apps has been Installed!"

sleep 3

clear

$(admaddapps)
