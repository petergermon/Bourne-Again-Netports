#!/usr/bin/bash
# Scripted in Bash by Peter Germon
userExit=0
RED='\033[0;31m'
WHITE='\033[1:37m'
NC='\033[0m'
	clear
	echo ""
	echo -e " $RED *------------------------------*$NC"
	echo -e " $RED |$NC $WHITE   Bourne-Again Netports  $NC   $RED|$NC"
	echo -e " $RED |------------------------------|$NC"
	echo -e " $RED |$NC $WHITE 1. Analyse Ports $NC           $RED|$NC"
	echo -e " $RED |$NC $WHITE 2. Kill PID $NC                $RED|$NC"
	echo -e " $RED |$NC $WHITE 3. Exit                    $NC $RED|$NC"
	echo -e " $RED *------------------------------*$NC"
	echo ""
	echo -e "$NC"
while [ $userExit -eq 0 ]
do
	read -p "Please make a selection: " menuSelect
	if [ $menuSelect -eq 1 ]; then
		sudo netstat -tulpn
	elif [ $menuSelect -eq 2 ]; then
		read -p "Enter PID: " pid
		sudo kill $pid
	elif [ $menuSelect -eq 3 ]; then
		userExit=1
		clear
	else
		echo "Invalid Selection"
	fi
done
