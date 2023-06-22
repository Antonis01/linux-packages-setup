#!/bin/bash

cd
sudo apt update
sudo apt upgrade -y
sudo apt install -y gcc make git cmake
sudo apt install -y python3 python3-pip
sudo apt install -y flex bison

# Browsers
sudo apt install -y firefox

# Utilities
sudo apt install -y nemo
sudo apt install -y neofetch
sudo apt install -y gnome-tweaks
sudo apt install -y btop

# Apps
sudo apt install -y discord
sudo apt install -y steam
sudo apt install -y lutris
sudo apt install -y vlc
sudo apt install -y filezilla

# Programming
wget https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg 
sudo mv pub.gpg /usr/share/keyrings/vscodium-archive-keyring.asc
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.asc ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update
sudo apt install codium codium-insiders
sudo apt install -y neovim
sudo apt install -y mysql-server

# PrivateGPT
git clone https://github.com/imartinez/privateGPT.git
cd privateGPT/
pip install -r requirements.txt
mv example.env .env
mkdir models
chmod +x ingest.sh
chmod +x privateGPT.sh
cd

# Server ping
sudo apt install netcat
git clone https://github.com/Antonis01/serverPing.git
cd serverPing/
chmod +x serverPing.sh
mv serverPing.sh ~/serverPing.sh
cd
rm -rf serverPing/

