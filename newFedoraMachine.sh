#!/bin/bash

# Install free software repo
sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# install non-free software repo
sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


# Enable DeltaRPM and Fastest Mirror Plugin
echo "fastestmirror=true" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
echo "deltarpm=true" | sudo tee -a /etc/dnf/dnf.conf > /dev/null


# Install Nextcloud Client
sudo dnf install nextcloud-client -y

# Install Virt-Manager
sudo dnf install virt-manager -y

# Install neovim
sudo dnf install neovim -y

# !! todo  Download .vimrc and dependancies
git remote add origin https://github.com/agokal/General.git

# !! todo download and install automation of auto-updating script (with chron)
#mkdir ~/bin
cd ~/
git clone https://github.com/agokal/bin.git
echo 'PATH="$~/bin:$PATH"' | sudo tee -a ~/.bashrc > /dev/null
