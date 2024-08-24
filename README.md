# Gabe's dotfiles

This repo contains the dotfiles for my desktop PC setup, a set of similar dotfiles with some slight modifications for laptops can (eventually) be found [here](https://github.com/sykesgabri/laptop-dotfiles).

I use these dotfiles on EndeavourOS, but they will probably work fine on other distros.

## Requirements, dependencies, and the programs these dots contain configs for.

- Git
- Stow
- zsh
- zsh-syntax-highlighting
- Starship
- Alacritty
- fastfetch

Here's one massive fucking pacman command to install everything on the above list:
```
sudo pacman -S --needed git stow zsh zsh-syntax-highlighting starship alacritty fastfetch
```

## Requirements you can't get through pacman.

- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip) (Extract in `/usr/share/fonts`)

## Installation

1. Clone this repo into your home directory, and cd into it:
```
cd ~
git clone https://github.com/sykesgabri/dotfiles
cd dotfiles
```
2. Use Stow to create symlinks from the repo to your home directory:
```
stow .
```

This repo was created following this tutorial: https://www.youtube.com/watch?v=y6XCebnB9gs
