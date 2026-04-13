#!bin/bash

#lib32-gnutls gnutls to lib32-libxcomposite is all required by osu! (apparently otherwise it was broken for me)
#intltool pcre gtk3 icu -> Required for compiling fsearch.

#TODOs
#moc-pulse clipse brightness brightnessctl epson-inkjet-printer-escpr
PACKAGES_PACMAN=(
	sudo make gcc git neofetch onefetch htop screen openssh curl fzf mpv vlc \
	ffmpeg ffmpegthumbnailer ffmpegthumbs ffmpeg-audio-thumbnailer obs-studio \
	discord audacity tree cifs-utils tokei stress github-cli cups samba vim firefox \
	mono wine winetricks wine-mono wine_gecko lutris steam man qemu virt-manager virt-viewer \
	dnsmasq vde2 bridge-utils openbsd-netcat edk2-ovmf  ktimetracker kdenlive kcolorpicker krita \
	kdeconnect kcolorchooser kvantum plasma  plasma-desktop syncthing jq grsync pipewire giflib \
	libpng gnutls libxinerama libxcomposite autoconf-archive intltool pcre gtk3 icu zsh fish rust \
	stow hashcat kolourpaint libreoffice-fresh evolution borg asciinema httrack helvum veracrypt \
	zip p7zip kate xsel code bash-language-server libva-mesa-driver mesa-vdpau jdk-openjdk \
	alacritty libappimage corectrl dotnet-sdk dotnet-runtime flatpak fuzzel hyprland \
	libfido2 yubikey-manager yubikey-manager-qt swappy waybar kleopatra kiten \
	xdg-desktop-portal-hyprland xdg-desktop-portal-kde xdg-desktop-portal-wlr \
	xwaylandvideobridge zsh lazygit kvantum kscreen krdc fwupd  scrcpy swaync \
	qt6-imageformats sox yubikey-manager yubikey-manager-qt cups cups-pdf cups-filters \
	system-config-printer foomatic-db foomatic-db-engine gutenprint gsfonts sane
)

# yay --needed -S
PACKAGES_YAY=(
	'opentabletdriver'
	'osu-lazer-tachyon-bin'
	'osu-mime'
	'rr'
	'bitwise'
	'brightness'
	'ente-desktop-bin'
	'peazip-qt-bin'
	'sublime-text-4'
	'needrestart'
	'fcp-bin'
	'anydesk-bin'
	'jamesdsp'
	'ttf-koruri' # ttf-koruri => works with musicbee (Koruri Regular, 9pt)
	'ttc-iosevka' # ttc-iosevka => coding font
	'ttf-jetbrains-mono' # ttf-jetbrains-mono => coding font
	'ttf-hack' # ttf-hack => conding font
	'ttf-times-new-roman' # For documents
	'jetbrains-toolbox'
	'ttf-win10'
	'phinger-cursors'
	'fsearch'
	'mprime-bin'
	'hunspell-en_us' # Spell checking
	'hunspell-de'
	'hyphen' # Hyphenation rules
	'hyphen-en'
	'hyphen-de'
	'libreoffice-extension-languagetool' # Grammar checking
	'libmythes'
	'mythes-en' # Thesaurus
	'mythes-de' # Thesaurus
	'spek-alternative'
	'droidcam'
	'xournalpp'
	'anki-bin'
	'waypipe'
	'jetbrains-toolbox'
	'hyprshot'
	'fcp-bin'
	'epson-inkjet-printer-escpr'
	'waypaper'
	'protonup-qt-bin'
	'yubico-authenticator-bin'
	'realm-studio-bin'
	'ventoy-bin'
)

PACKAGS_GIT=(
	#git://source.winehq.org/git/wine.git
)
