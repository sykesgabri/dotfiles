#!/bin/bash

# THIS IS NOT COMPLETE YET AND SHOULDN'T BE USED

REPO_URL="https://github.com/sykesgabri/dotfiles.git"
REPO_SSH="git@github.com:sykesgabri/dotfiles.git"
DOTFILES_DIR="$HOME/dotfiles"

# Check if pacman is available on the system
echo "Checking if pacman is available..."
if pacman --version ; then
        echo "Pacman is available, proceeding."
else
        echo "This script is meant to be run on Arch based systems, you are either running this on a non-Arch system, or Pacman is broken."
        exit
fi

# Update the system
echo "Updating the system..."
sudo pacman -Syyu --noconfirm

# Install required packages
sudo pacman -S --needed --noconfirm git stow wget unzip i3-wm zsh zsh-syntax-highlighting starship alacritty fastfetch arandr polybar noto-fonts-cjk nitrogen lxsession lxappearance picom rofi i3lock playerctl nvim helix

# Install Hack Nerd Font
echo "Installing Hack Nerd Font..."
mkdir $HOME/Hack
cd $HOME/Hack
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip"
unzip Hack.zip
sudo rm -rf Hack.zip
cd $HOME
sudo mv Hack/ /usr/share/fonts/

# Install polybar-spotify module
echo "Installing polybar-spotify..."
mkdir $HOME/github
cd $HOME/github
git clone "https://github.com/PrayagS/polybar-spotify.git"

# Check if yay is installed, and install it if it isn't
echo "Checking if yay is available..."
if yay --version ; then
        echo "Yay is available, proceeding..."
else
        echo "Yay is not available, installing yay now..."
        mkdir $HOME/AUR
        cd $HOME/AUR
        git clone "https://aur.archlinux.org/yay.git"
        cd yay
        makepkg -si
        echo "Yay has been installed, proceeding..."
fi

# Install zscroll-git
echo "Installing zscroll-git..."
yay -S --noconfirm zscroll-git

# Install Catpuccin GTK Theme
echo "Installing Catppuccin GTK Theme..."
mkdir $HOME/.themes
cd $HOME/.themes
wget "https://github.com/catppuccin/gtk/releases/download/v0.7.5/Catppuccin-Mocha-Standard-Sapphire-Dark.zip"
unzip Catppuccin-Mocha-Standard-Sapphire-Dark.zip
sudo rm -rf Catppuccin-Mocha-Standard-Sapphire-Dark.zip

