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
        exit 1
fi

# Check if the system is Manjaro
echo "Checking if the system is Manjaro..."
if [ -f /etc/manjaro-release ] then
        echo "WARNING: You are running Manjaro. While Manjaro is Arch-based, and this script should work as intended, the Manjaro team are a gaggle of raving morons, and Manjaro should be avoided."
        echo "For examples of Manjaro's various issues: https://github.com/arindas/manjarno, https://github.com/arindas/manjarno/issues/28"
        echo "If you're looking for an Arch based distro that's easier to set up than mainline Arch, use EndeavourOS, it's like Manjaro, but maintained by people who know what they're doing."
        read -p "Proceed anyway? [y/N]: " choice
        case "$choice" in
                [yY][eE][sS]|[yY])
                        echo "Proceeding despite the warning."
                        ;;
                *)
                        exit 1
                        ;;
        esac
else
        echo "You are not running Manjaro, proceeding without warning."
fi

# Update the system
echo "Updating the system..."
sudo pacman -Syyu --noconfirm

# Install required packages
sudo pacman -S --needed --noconfirm git stow wget unzip i3-wm zsh zsh-syntax-highlighting starship alacritty fastfetch arandr polybar noto-fonts-cjk nitrogen lxsession lxappearance picom rofi i3lock playerctl nvim helix papirus-icon-theme

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

# Install Catppuccin Cursors
echo "Installing Catppuccin Cursors..."
yay -S --noconfirm catppuccin-cursors-mocha

# Install Catppuccin Papirus Folders
cd $HOME/github
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
curl -LO https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/papirus-folders && chmod +x ./papirus-folders
./papirus-folders -C cat-mocha-sapphire --theme Papirus-Dark

# Set up the dotfiles
cd $HOME
git clone https://github.com/sykesgabri/dotfiles.git
cd dotfiles
stow .
