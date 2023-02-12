#!/bin/bash

sudo apt install -y bspwm sxhkd feh kitty dmenu polybar picom rofi apcalc

mkdir -p ~/.config/gtk-3.0
rm -fr ~/.config/bspwm ~/.config/sxhkd ~/.config/polybar ~/.config/kitty \
    ~/.config/picom ~/.config/gtk-3.0/settings.ini

ln -s $PWD/bspwm ~/.config/bspwm
ln -s $PWD/sxhkd ~/.config/sxhkd
ln -s $PWD/polybar ~/.config/polybar
ln -s $PWD/kitty ~/.config/kitty
ln -s $PWD/picom ~/.config/picom
ln -s $PWD/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

# Install networkmanager-dmenu
#sudo apt install -y libnm-dev
mkdir ~/.local/bin
git clone https://github.com/firecat53/networkmanager-dmenu.git --depth 1
cd networkmanager-dmenu
mkdir -p ~/.local/bin
mkdir -p ~/.local/share/applications
cp networkmanager_dmenu ~/.local/bin
cp networkmanager_dmenu.desktop ~/.local/share/applications/
cd ..
rm -fr networkmanager-dmenu

# Install fonts
mkdir -p ~/.local/share/fonts
cp -rf $PWD/fonts/* ~/.local/share/fonts

# Install cursor
sudo apt install breeze-cursor-theme

# Install icons
git clone https://github.com/vinceliuice/Tela-icon-theme.git --depth 1
cd Tela-icon-theme
./install.sh -a
cd ..
rm -fr Tela-icon-theme

# Install Themes
git clone https://github.com/ParrotSec/parrot-themes.git --depth 1
cd parrot-themes
mkdir -p ~/.themes
mv themes/* ~/.themes
cd ..
rm -fr parrot-themes
