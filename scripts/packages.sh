#!bin/bash

#lib32-gnutls gnutls to lib32-libxcomposite is all required by osu! (apparently otherwise it was broken for me)
#intltool pcre gtk3 icu -> Required for compiling fsearch.

#TODOs
#moc-pulse clipse brightness brightnessctl epson-inkjet-printer-escpr
PACKAGES_PACMAN=(
	sudo make gcc git neofetch onefetch htop screen openssh curl fzf mpv vlc \
	ffmpeg ffmpegthumbnailer ffmpegthumbs ffmpeg-audio-thumbnailer obs-studio discord audacity tree \
	cifs-utils tokei stress github-cli cups samba vim firefox vivaldi vivaldi-ffmpeg-codecs \
	mono wine winetricks wine-mono wine_gecko lutris steam man qemu virt-manager virt-viewer \
	dnsmasq vde2 bridge-utils openbsd-netcat edk2-ovmf  ktimetracker kdenlive kcolorpicker krita kdeconnect kcolorchooser \
	kvantum plasma  plasma-desktop syncthing jq grsync \
	pipewire lib32-pipewire lib32-libpulse giflib lib32-giflib libpng lib32-libpng gnutls lib32-gnutls libxinerama lib32-libxinerama \
	libxcomposite lib32-libxcomposite autoconf-archive intltool pcre gtk3 \
	icu zsh fish rust stow hashcat kolourpaint libreoffice-fresh \
	evolution borg asciinema httrack helvum veracrypt zip p7zip \
	kate lib32-vulkan-icd-loader xsel solaar code bash-language-server \
	libva-mesa-driver mesa-vdpau jdk-openjdk \
	adobe-source-han-sans-jp-fonts alacritty libappimage corectrl dotnet-sdk dotnet-runtime flatpak freerdp fuzzel hyprland \
	libfido2 yubikey-manager yubikey-manager-qt swappy waybar \
	xdg-desktop-portal-hyprland xdg-desktop-portal-kde xdg-desktop-portal-wlr \
	xwaylandvideobridge zsh lazygit kvantum kscreen krdc fwupd kiten scrcpy
)

#TODOs
#lib32-gnutls
#lib32-libxcomposite
#lib32-mesa
#lib32-pipewire
#lib32-pipewire-jack
#lib32-vulkan-radeon

# yay --needed -S
PACKAGES_YAY=(
	'opentabletdriver'
	'osu-lazer-bin'
	'osu-mime'
	#'soundux'
	'rr'
	'bitwise'
	#'gitkraken'
	'peazip-qt-bin'
	'sublime-text-4'
	'needrestart'
	'fcp-bin'
	'anydesk-bin'
	'jamesdsp'
	'ttf-koruri' # ttf-koruri => works with musicbee (Koruri Regular, 9pt)
	'ttc-iosevka' # ttc-iosevka => coding font
	'ttf-jetbrains-mono' # ttf-jetbrains-mono => coding font
	'ttf-times-new-roman' # For documents
	'jetbrains-toolbox' # ttf-jetbrains-mono => coding font
	'ttf-win10'
	'phinger-cursors'
	'fsearch'
	#'preload'
	'mprime-bin'
	'hunspell-en_us' # Spell checking
	'hunspell-de'
	'hyphen' # Hyphenation rules
	'hyphen-en'
	'hyphen-de'
	'libreoffice-extension-languagetool' # Grammar checking
	'libmythes'
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
)

PACKAGS_GIT=(
	#git://source.winehq.org/git/wine.git
)
