#!/bin/bash

sudo add-apt-repository ppa:noobslab/macbuntu -y
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update

#Download Wallpapers MACOSX
cd /usr/share/backgrounds/
sudo wget http://drive.noobslab.com/data/Mac/MacBuntu-Wallpapers.zip
sudo unzip MacBuntu-Wallpapers.zip
sudo rm MacBuntu-Wallpapers.zip

gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/mbuntu-13.png
cd

#MacBuntu OS Y Theme, Icons and cursors:
sudo apt-get install macbuntu-os-icons-lts-v7 -y
sudo apt-get install macbuntu-os-ithemes-lts-v7 -y

#Slingscold (Alternative to Launchpad)
#sudo apt-get install slingscold -y

#Albert Spotlight (Alternative to Mac Spotlight)
#sudo apt-get install albert -y

#Plank Dock
#sudo apt-get install plank -y
#sudo apt-get install macbuntu-os-plank-theme-lts-v7 -y

#Replace 'Ubuntu Desktop' text with 'Mac' on the Panel
cd && wget -O Mac.po http://drive.noobslab.com/data/Mac/change-name-on-panel/mac.po
cd /usr/share/locale/zh_CN/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd

#Apple Logo in Launcher
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/

#Tweak Tools to change Themes & Icons:
sudo apt-get install unity-tweak-tool -y
sudo apt-get install gnome-tweak-tool -y

#Install Monochrome icons for Libreoffice:
#sudo apt-get install libreoffice-style-sifr -y

#(Optional) Mac fonts:
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip
sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
sudo fc-cache -f -v

#Apply MacBuntu Boot-screen/Splash:
#sudo apt-get install macbuntu-os-bscreen-lts-v7 -y

#(Optional) Install MacBuntu theme for LightDM Webkit Greeter:
#sudo apt-get install macbuntu-os-lightdm-lts-v7 -y

#reiniciar computador
reboot