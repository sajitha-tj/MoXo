#!/bin/bash

banner(){
	echo -e "
• ▌ ▄ ·.       ▐▄• ▄       
·██ ▐███▪▪      █▌█▌▪▪     
▐█ ▌▐▌▐█· ▄█▀▄  ·██·  ▄█▀▄    ~ MoXo v1.0~ 
██ ██▌▐█▌▐█▌.▐▌▪▐█·█▌▐█▌.▐▌   [By: sajitha_tj]
▀▀  █▪▀▀▀ ▀█▄▀▪•▀▀ ▀▀ ▀█▄▀▪  
"
}

banner

# creating new directories
echo -e "[+] Setting up documents"
rm -r ~/Documents/moxo
mkdir -p ~/Documents/moxo
cd ~/Documents/moxo


# downloading src files from github
echo -e "[+] Downloading MoXo"
DOWNLOAD_FAILED=0

curl -s -m 20 https://raw.githubusercontent.com/sajitha-tj/MoXo/main/moxo -O moxo 2>/dev/null || DOWNLOAD_FAILED=1

if [[ $DOWNLOAD_FAILED == 0 ]]; then
	curl -s -m 20 https://raw.githubusercontent.com/sajitha-tj/MoXo/main/README.md -O readme.md 2>/dev/null || DOWNLOAD_FAILED=1
fi

if [[ $DOWNLOAD_FAILED == 1 ]];then
	echo -e "[!] Error occured while downloading the files. Check your connections and try again!" >&2
	exit
fi

# copying files to bin directory and changing permissions
echo -e "[+] installing\n"
INSTALL_FAILED=0

sudo cp ~/Documents/moxo/moxo /usr/bin/moxo || INSTALL_FAILED=1
sudo chmod +x /usr/bin/moxo || INSTALL_FAILED=2

case $INSTALL_FAILED in
	0 )
		echo -e "[+] Installation Completed.\nGood Luck for your CTFs!"
		exit
		;;
	1 )
		echo -e "[!] error occured while copying files" >&2
		exit
		;;
	2 )
		echo -e "[!] Error while changing permissions" >&2
		exit
		;;
esac