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

curl -s "https://raw.githubusercontent.com/sajitha-tj/MoXo/main/moxo" -o moxo || DOWNLOAD_FAILED=1
curl -s "https://raw.githubusercontent.com/sajitha-tj/MoXo/main/README.md" -o readme.md || DOWNLOAD_FAILED=1

if [[ $DOWNLOAD_FAILED == 1 ]];then
	echo -e "[!] Error occured while downloading the files. Check your connections and try again!" >&2
	exit
fi

# moxo uses xclip inorder to copy variable values to your clipboard
echo -e "[+] Check for third party apps"
XCLIP_CHECK=$(apt list 2>/dev/null | grep "xclip" | grep "installed")

if [[ $XCLIP_CHECK == "" ]]; then
	echo -e "[!] xclip is not installed\n[!] Moxo uses xclip to copy variable values to the clipboard so that you can paste them directly with CTRL+V, after a get command"
	read -p "[?] Do you want to install xclip? [y/n]" yn
	# installing xclip
	case $yn in
		[Yy]* )
			echo "[+] Installing xcip..."
			sudo apt install xclip
			;;
	esac

else
	echo -e "[+] xclip is installed"
fi

# copying files to bin directory and changing permissions
echo -e "[+] installing\n"
INSTALL_FAILED=0

sudo cp ~/Documents/moxo/moxo /usr/bin/moxo || INSTALL_FAILED=1
sudo chmod +x /usr/bin/moxo || INSTALL_FAILED=2

case $INSTALL_FAILED in
	0 )
		echo -e "[+] Installation Completed.\nGlad to see you are rocking with moxo. Go forth and hack with glory!"
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