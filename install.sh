#!/bin/bash
set -o nounset
set -o errexit

echo -e "\nchecking system specs"
pwd
sudo lsb_release -a
echo -e "\n| If you are not running this installer with ubuntu 14.04lts,\n elementary OS 0.3,ubuntu-flavored \n| or a remastered version with system-d,\n| you may have problems with this"
echo -e "\n| If you are not running this installer with Ubuntu 14.04LTS, \n| elementary OS 0.3, Ubuntu-flavored \n| or a remastered version with system-d,\n| you may incounter problems"

echo -e "\n|\n|Running Installer \n|"

# 01 - Update your system
echo "Update your system"
sudo apt-get -y update;
sudo apt-get -y upgrade;
sudo apt-get -y dist-upgrade;

# 02 - Installing additional drivers
#Software & Updates - Additional Drivers


# 03 - Install Multimedia Codecs and Enable DVD Playback
echo -e "\n|\n| Installing Multimedia Codecs and Enable DVD Playback\n|"
sudo apt-add-repository ppa:mc3man/trusty-media
#sudo apt-add-repository -y ppa:mc3man/trusty-media
sudo apt-get -y update;
sudo apt-get -y install ubuntu-restricted-extras ffmpeg gstreamer0.10-plugins-ugly libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav

# 3a Enable DVD Playback
echo -e "\n|\n Enable DVD Playback \n|"
sudo /usr/share/doc/libdvdread4/install-css.s­h

# 04 - Install VLC Media Player
echo -e "\n| Install VLC Media Player\n|"
sudo apt-get -y install vlc

# 05 - Install Plugin Flash Player and Pepper Flash
sudo apt-get -y installing flashplugin-installer pepperflashplugin-nonfree
echo -e "\n| Installing Plugin Flash Player and Pepper Flash\n|"

# 06 - Installing JAVA
echo -e "\n| Installing JAVA...\n|"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java9-installer

# 07 - Installing Support for Archive Formats and Restricted Extras
echo -e "\n|\n|Installing Support for Archive Formats and Restricted Extras\n|"
sudo apt-get -y unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

# 08 - Installing LibreOffice Suites
echo -e "\nInstall LibreOffice Suites\n|"
sudo apt-get -y install libreoffice libreoffice-gtk libreoffice-style-sifr

# 09 - Installing Additional Web Browser
"\n Install Additional Web Browser \n|"
sudo apt-get -y install google-chrome-stable firefox

# 10 - Installing Torrent Client
echo -e "\n| Installing Torrent Client called Transmission \n|"
sudo apt-get install -y transmission

# 11 - Install Download Manager
#wget http://xdman.sourceforge.net/xdman_mi...
#sudo dpkg -i xdman_mint_ubuntu.deb
echo -e "\n| Skipping Download Manager xdman\n|"

# 12 - Install Graphic Editor
echo -e "\n| Installing Graphic Editor,Gimp\n"
sudo apt-get install gimp inkscape

# 13 - Install Indicator Synapse
sudo apt-get install -y indicator-synapse

# 14 - Install Elementary Tweak
sudo apt-add-repository ppa:mpstark/elementary-tweaks-daily
#sudo apt-add-repository -y ppa:mpstark/elementary-tweaks-daily 
sudo apt-get -y install elementary-tweak 

# 15 - Insall Birdie Twitter Client
#sudo add-apt-repository ppa:birdie-team/stable
#sudo apt-get -y update
#sudo apt-get -y install birdie

# 16 - Install Pidgin and Skype
sudo apt-get install skype pidgin

# 17 - Install Steam Gaming Client
sudo apt-get -y install steam

# 18 - Install Bleachbit System Cleaner
sudo apt-get -y install bleachbit

# 19 - Install Cloud Storage

#Download DropBox : https://www.dropbox.com/install?os=lnx
echo -e "\n|\n Download DropBox : https://www.dropbox.com/install?os=lnx \n|"
#  sudo apt-get install dropbox

#Install Google Drive :
#sudo add-apt-repository ppa:alessandro-strada/ppa
#sudo apt-get -y update
#sudo apt-get install -y google-drive-ocamlfuse

# 20 - For Laptop : Install TLP for Improve Battery Life and Reduce Overheating
echo "For Laptop : Installing TLP for Improve Battery Life and Reduce Overheating"
sudo add-apt-repository ppa:linrunner/tlp
#sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get -y update
sudo tlp start

# 21 - Update your system
sudo apt-get -y update;
sudo apt-get -y upgrade;
sudo apt-get -y dist-upgrade

# 22- gksu| graphical su
sudo apt-get -y install gksu

# 23 update grub and kernel
echo -e "\n|\n update grub and kernel \n|"
sudo update-grub

# 24 xchat | online support,also incase of emergencies
echo -e "\n| \n|\nInstalling AN IRC client called xchat \n| For Online support,also incase of emergencies use this program for community support\n| \n" 
sudo apt-get install hexchat unifont unifont-bin






































































































































































# ideas
#nano /etc/init.d/ondemand change the governer to high/max for the installation-maybe change it back after the install.
#/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors
#
#vim-nano-lynx-tree-htop-ssh-ssh server-openvpn?-shellcheck
#
#debconf?install-
#sudo apt-get install git
#
#
#
#
pwd
history








exit0 
