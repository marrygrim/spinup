#!/bin/bash
set -o nounset
set -o errexit

#adding temp user -not finished-optional
#sudo adduser spinup
#sudo addgroup spinup sudo root
#supermang supermang
#login spinup supermang supermang

pwd;sleep 2
echo -e "\n checking system specs\n|"

sudo lsb_release -a;sleep 4
echo -e "\n| If you are not running this    installer with Ubuntu 14.04LTS, \n| elementary OS 0.3, Ubuntu-flavored \n| or a remastered version with system-d,\n| you may incounter problems"
echo -e "\n| YOU HAVE 10 SECONDS TO EXIT NOW IF YOU DO NOT MET THE REQUIREMENTS"
echo
sleep 10
#
#
# Running Installer
echo -e "\n|\n|Running Installer \n|"; sleep 4
#
#menu goes here
#
# 01 - Update your system
echo -e "\n|Update your system\n|";sleep 3
sudo apt-get -y update;
sudo apt-get -y upgrade;
sudo apt-get -y dist-upgrade;

# 02 - Installing additional drivers
#Software & Updates - Additional Drivers
#echo -e "\n| Software & Updates - Additional Drivers";sleep 3
#
# 03 - Install Multimedia Codecs and Enable DVD Playback
echo -e "\n|\n| Installing Multimedia Codecs and Enable DVD Playback\n|";sleep 4
#sudo apt-add-repository ppa:mc3man/trusty-media
#sudo apt-add-repository -y ppa:mc3man/trusty-media
sudo apt-get -y update;
sudo apt-get -y install ubuntu-restricted-extras ffmpeg gstreamer0.10-plugins-ugly libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav

# 3a Enable DVD Playback
echo -e "\n|\n Enable DVD Playback \n|"
sudo /usr/share/doc/libdvdread4/install-css.s­h;sleep 5

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
echo -e "\n Install Additional Web Browser \n|";sleep 3
sudo apt-get -y install google-chrome-stable firefox

# 10 - Installing Torrent Client
echo -e "\n| Installing Torrent Client called Transmission \n|";sleep 3
sudo apt-get install -y transmission

# 11 - Install Download Manager
#wget http://xdman.sourceforge.net/xdman_mi...
#sudo dpkg -i xdman_mint_ubuntu.deb
echo -e "\n| Skipping Download Manager xdman\n|"

# 12 - Install Graphic Editor
echo -e "\n| Installing Graphic Editor,Gimp\n";sleep 3
sudo apt-get install gimp inkscape

# 13 - Installing Indicator Synapse
echo -e "\n|Installing Indicator Synapse\n";sleep 3
sudo apt-get install -y indicator-synapse

# 14 - Installing Elementary Tweak
echo -e "\n Installing Elementary Tweak\n|";sleep 3
#sudo apt-add-repository ppa:mpstark/elementary-tweaks-daily
#sudo apt-add-repository -y ppa:mpstark/elementary-tweaks-daily
#sudo apt-get -y install elementary-tweak

# 15 - Insalling Birdie Twitter Client
#echo -e "\n| Insalling Birdie Twitter Client\n|";sleep 4
#sudo add-apt-repository ppa:birdie-team/stable
#sudo apt-get -y update
#sudo apt-get -y install birdie

# 16 - Installing Pidgin and Skype
echo -e "\n| Installing Pidgin and Skype\n|";sleep 3
sudo apt-get install skype pidgin

# 17 - Installing Steam Gaming Client
echo -e "\n| Installing Steam Gaming Client\n|";sleep 4
sudo apt-get -y install steam

# 18 - Install Bleachbit System Cleaner
echo -e "\n| Installing Bleachbit System Cleaner-\n|";sleep 4
sudo apt-get -y install bleachbit

# 19 - Install Cloud Storage

#Download DropBox : https://www.dropbox.com/install?os=lnx
#echo -e "\n|\n Download DropBox : https://www.dropbox.com/install?os=lnx \n|";sleep 4
#  sudo apt-get install dropbox

#Installing Google Drive :
#echo -e "\n Installing Google Drive\n|";sleep 3
#sudo add-apt-repository ppa:alessandro-strada/ppa
#sudo apt-get -y update
#sudo apt-get install -y google-drive-ocamlfuse

# 20 - For Laptop : Install TLP for Improve Battery Life and Reduce Overheating
echo -e "\n| For Laptop : Installing TLP for Improve Battery Life and Reduce Overheating \n| ";sleep 5
sudo add-apt-repository ppa:linrunner/tlp
#sudo add-apt-repository -y ppa:linrunner/tlp
sudo apt-get -y update
sudo tlp start

# 21 - Update your system
echo -e "\n Updating your system ... again\n|";sleep 3
sudo apt-get -y update;
sudo apt-get -y upgrade;
sudo apt-get -y dist-upgrade

# 22- gksu| graphical su
echo -e "\n| gksu| graphical su or sudo\n|";sleep 4
sudo apt-get -y install gksu

# 23 update grub and kernel
echo -e "\n|\n update grub and kernel \n|";sleep 3
sudo update-grub

# 24 xchat | online support,also incase of emergencies
# here is why to use this instead of xchat
#http://community.linuxmint.com/idea/view/4695
echo -e "\n|\n| Installing AN IRC client called Hexxchat. \n| For Online support, Also incase of times of emergencies use this program for community support\n|\n| Here is why to use this instead of xchat.\n| http://community.linuxmint.com/idea/view/4695";sleep 9
sudo apt-get install hexchat 

#25 firefox 
echo -e "\n| Firefox-The Internet is here,better then Internet Explorer-\n| Firefox is available for all Microsoft Windows-\n| Filehippo is a nice place to get Firefox for Windows too.";sleep 9
sudo apt-get install firefox ttf-lyx

#26 GIT- code repositary- 
echo -e "\n| GIT- code repositary-its like a social network for code!\n| Have you ever wondered where and the code is for this project is at? \n| Then copy and paste this link in your web broswer like \n| Firefox, Chrome, Midori, Ophra."
echo -e "\n|  https://github.com/marrygrim/spinup/ \n|";sleep 10

# ideas
#do a system report of the system-if can not because need a program then install something that can do so.... -checking system specs-line 5-
#nano /etc/init.d/ondemand change the governer to high/max for the installation-maybe change it back after the install.
#/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors
#additional drivers command to search and install at the very begining of the script search for the title of "#02 - Installing additional drivers"-if restart maybe needed to complete the install-Then either write code to stop the script make the rest of the script as a job/cronjob on the next reboot-or if it is safe to continue on then reboot after the "spinup" is completed all tasks[even the kernal and grub stuff,tricky stuff] Remeber to place a job in either code config to do a system update and ask if the enduser wants to update as the first task on start up after the desktop fully loads and the internet connect is available. 
#
#
#
#vim-nano-lynx-tree-htop-ssh-ssh server-openvpn?-shellcheck-
#softeither vpn server?
#debconf?install-
#sudo apt-get install git
#git server?
#samba-wget-screen-tmux
#http://noah.org/wiki/Ubuntu_Fresh_Install


#Video, UVC, V4L:
#uvccapture | capture still JPEG frames from MJPEG video stream.
#luvcview | view output of UVC device.
#sudo apt-get install uvccapture luvcview
#
#Laptops, Notebooks, Portables, Mobiles:
#uswsusp: 496k | allows the system to have its state saved to disk and be powered off. Includes a program to suspend the system to RAM after the state is saved to disk. In that state, the system still uses power, but resuming is faster. If the battery depletes, the state is resumed from disk without data loss.
#
#sudo apt-get install skype?
#
#sudo apt-get install xclip
#xclip -sel clip < ~/.ssh/id_rsa.pub
# Copies the contents of the id_rsa.pub file to your clipboard
#
#hardware support-----------
#xserver-xorg-input-synaptics-dev-lts-raring- install laptop touch pad drivers?,optional
#wifi drivers?
#eth0 drivers?
#
#
#teamviewer
#echo -e "\n| Installing Teamviewer-remote distance support-meeting and presentation\n|" 
#http://download.teamviewer.com/download/teamviewer_i386.deb
#dpkg -i teamviewer_i386.deb
#echo -e "\n| In case -dpkg- indicates missing dependencies, complete the installation by executing the following command:"
#support link| https://www.teamviewer.com/EN/help/363-How-do-I-install-TeamViewer-on-my-Linux-distribution.aspx
#
#setup keyboard shortcuts for 
#Synapse[clt,space] templates with predefine options.
#[windows management and work-flow adjustments]
#[open the "start menu" with the super key,aka windows' key]
#ramdisk for the install? do i remove the ramdisk after install? menu-selector for how much ram a computer has so to auto config a ratio for the ramdisk-install could take less then an hour on dsl or adsl.-run as -different file-subscript- or something like that?
#proload for linux-aka like super-fetch for Microsoft-Windows
#make adjustable proload ram configurations-template like even-make a dirctory for them[spinup] to live
#maybe make a gui for this program and put this into a .deb and .rem file.
#pacman compatible commands already
#have an option to install apt-get and/or aptitude-synpatic package managers at the very beginning
#whatever the option they choose have the commands be variables so to be multi-os and system - muiltarch?
#filesystem for downloading the packages, temp folder,offline mode, recovery mode, logs, logs with failed and completes successfully code by call number-something to filterer the logs some how- maybe lastly a complete piped to new log txt file,with traps and debugging- if somehting does not complete, this trap log with take notes and when trying to run the installer/spinup program, this will be pointed out and broken parts of the installer with try to be fixed. 
echo
sudo dpkg --configure -a
echo
sudo apt-get install -f
echo;sleep 8
echo
echo -e "\n| closing this window- in 10 seconds\n| type the command [history] to see what has happened"
echo
pwd;sleep 2
history;sleep 9
echo
echo -e "\n This window will now close in 30 seconds"
sleep 30;logout;exit 1
