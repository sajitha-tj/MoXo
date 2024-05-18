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

echo -e "[+] Setting up documents"
mkdir -p ~/Documents/moxo
cd ~/Documents/moxo

echo -e "[+] Downloading MoXo"
curl https://raw.githubusercontent.com/sajitha-tj/MoXo/main/moxo -O moxo
curl https://raw.githubusercontent.com/sajitha-tj/MoXo/main/README.md -O readme.md

echo -e "[+] installing"
sudo cp ~/Documents/moxo/moxo /usr/bin/moxo
sudo chmod +x /usr/bin/moxo

echo -e "[+] Installation Completed.\nGood Luck for your CTFs!"
