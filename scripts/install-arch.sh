#!/bin/sh

source $(pwd)/packages.sh

sudo pacman -Syu
sudo pacman --needed -S ${PACKAGES_PACMAN[@]}

yay --needed -S ${PACKAGES_YAY[@]}

if [ ! -d "$HOME/repos" ]; then
	mkdir -p $HOME/repos
fi

if [ ! -d "$HOME/.steam/root/compatibilitytools.d/" ]; then
	mkdir -p $HOME/.steam/root/compatibilitytools.d/
fi

#Set the maximum of cores avaiable to compile make
#todo: MAKEFLAGS="-j$(nproc)" in /etc/makepkg.conf
sudo sed -i 's/#MAKEFLAGS=\"-j2"/MAKEFLAGS=\"j$(nproc)\"/' /etc/makepkg.conf

sudo systemctl enable sshd
sudo systemctl enable fstrim.timer
sudo systemctl enable paccache.timer
