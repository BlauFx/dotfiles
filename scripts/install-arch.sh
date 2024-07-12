#!/bin/sh

source $(pwd)/packages.sh

sudo pacman -Syu
sudo pacman --needed -S ${PACKAGES_PACMAN[@]}

yay --needed -S ${PACKAGES_YAY[@]}

if [ ! -d "$HOME/repos" ]; then
	mkdir -p $HOME/repos
fi

#Set the maximum of cores avaiable to compile make
#todo: MAKEFLAGS="-j$(nproc)" in /etc/makepkg.conf
sudo sed -i 's/#MAKEFLAGS=\"-j2"/MAKEFLAGS=\"j$(nproc)\"/' /etc/makepkg.conf

#https://opentabletdriver.net/Wiki/FAQ/Linux
if grep -Fxq "blacklist wacom" /etc/modprobe.d/blacklist.conf
then
    echo "wacom driver is already blacklisted. Proceeding..."
else
	echo "blacklist wacom" | sudo tee -a /etc/modprobe.d/blacklist.conf
    sudo rmmod wacom
fi

systemctl --user daemon-reload
systemctl --user enable opentabletdriver --now

sudo systemctl enable sshd
sudo systemctl enable fstrim.timer
sudo systemctl enable paccache.timer
