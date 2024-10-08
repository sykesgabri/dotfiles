# Gabe's dotfiles | [GitLab Mirror](https://gitlab.com/sykesgabri/dotfiles)

This repo contains the dotfiles for my desktop PC setup, a set of similar dotfiles with some slight modifications for laptops can be found [here](https://github.com/sykesgabri/laptop-dotfiles).

I use these dotfiles on Arch btw, and have tested them on EndeavourOS, but they will probably work fine on other distros.

## Requirements, dependencies, and the programs these dots contain configs for.

- Git
- Stow
- i3 Window Manager
- zsh (Execute `chsh -s /bin/zsh` then log out and back in to make zsh your default shell)
- zsh-syntax-highlighting
- Starship
- Alacritty
- fastfetch
- arandr
- polybar
- Noto Fonts CJK
- Nitrogen (You will have to manually use this to choose your wallpaper after installation, my wallpapers aren't included in the dotfiles as they are modified personal photos)
- lxsession
- lxappearance (Use this to set the theme to Catppuccin Mocha Sapphire, the theme is included in these dotfiles)
- Picom
- rofi
- i3lock
- playerctl
- Neovim
- Helix

Here's one massive fucking pacman command to install everything on the above list (Arch based distros only):
```
sudo pacman -S --needed git stow i3-wm zsh zsh-syntax-highlighting starship alacritty fastfetch arandr polybar noto-fonts-cjk nitrogen lxsession lxappearance picom rofi i3lock playerctl nvim helix
```

## Requirements you can't get through pacman.

- [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip) (Extract in `/usr/share/fonts`)
- [polybar-spotify](https://github.com/PrayagS/polybar-spotify) <details><summary>Click here for notes.</summary><br>A Polybar module that provides Spotify status and controls, my Polybar config expects it to be in ~/github/, if you clone this repo somewhere else, you'll have to change the path in .config/polybar/config.ini. If you use a player other than Spotify, you can change where it pulls its status from in get_spotify_status.sh, my own one is set to "chromium" for Tidal-HiFi.</details>
- [zscroll](https://github.com/noctuid/zscroll) (Install `zscroll-git` from the AUR. If your distro didn't come with an AUR helper, go through the steps to set up [yay](https://github.com/Jguer/yay))
- [Catppuccin GTK theme](https://github.com/catppuccin/gtk/releases/v0.7.5) (Download the Mocha Sapphire zip, extract it to ~/.themes, and set using lxappearance. 0.7.5 is linked because it is the last version to include the GTK-2.0 directory needed for lxappearance)
- [Catppuccin cursors](https://github.com/catppuccin/cursors) (Follow the instructions in the readme and use lxappearance to set them)
- [Catppuccin Papirus folders](https://github.com/catppuccin/papirus-folders) (Follow the instructions in the readme and use lxappearance to set them)
- [Any other Catppuccin themes](https://catppuccin.com/ports) (Find and install the ones you need for the programs you use so that all their appearances match, the variant you want is Mocha Sapphire)

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

If you get a `Stowing . would cause conflicts` warning, it is because your home directory already has a file in the same name and location as the one stow is trying to create a symlink for. Read whatever paths Stow is saying causes conflicts, and delete those files in your home directory, then try the Stow command again.

## Setting up Firefox the way I like it

The reason my .mozilla folder is not included in the dots is a combination of just being careful, and it only working some of the time when transferring to new installs. In lieu of that folder, I'll just document how Firefox is set up on all my computers regardless of type or OS. My settings are fairly strict, and I make use of a good number of extensions, you may wish to do stuff differently, this is just how I do it.

<details>
<summary>Firefox settings:</summary><br>

### General

<img src="assets/general1.png"><br>
<img src="assets/general2.png"><br>
<img src="assets/general3.png"><br>
<img src="assets/general4.png">

### Home

<img src="assets/home1.png">

### Search

<img src="assets/search1.png">

### Privacy & Security

<img src="assets/prisec1.png"><br>
<img src="assets/prisec2.png"><br>
<img src="assets/prisec3.png"><br>
<img src="assets/prisec4.png">

Set all permissions to auto disallow (you can still manually enable them on a per site basis when needed), and autoplay to block audio and video.

No syncing, no importing from previous browser, set Firefox to default browser.

</details>

<details>
<summary>Extensions:</summary><br>

- [uBlock Origin](https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/)
- [SponsorBlock](https://addons.mozilla.org/en-GB/firefox/addon/sponsorblock/) (All categories set to manual skip, highlights, chapters, and muted segments turned off)
- [Return YouTube Dislike](https://addons.mozilla.org/en-GB/firefox/addon/return-youtube-dislikes/) (Neon ratio bar and thumbs)
- [Unhook](https://addons.mozilla.org/en-GB/firefox/addon/youtube-recommended-videos/) <br> <img src="assets/unhook1.png"><br><img src="assets/unhook2.png"><br>
- [Violentmonkey](https://addons.mozilla.org/en-GB/firefox/addon/violentmonkey/) (List of userscripts below)
- [Fastforward](https://addons.mozilla.org/en-GB/firefox/addon/fastforwardteam/)
- [User-Agent Switcher and Manager](https://addons.mozilla.org/en-GB/firefox/addon/user-agent-string-switcher/)
- [YouTube Volume Normalizer](https://addons.mozilla.org/en-GB/firefox/addon/youtube-volume-normalizer/)
- [Stylus](https://addons.mozilla.org/en-GB/firefox/addon/styl-us/) (List of themes below)
- [Wayback Machine](https://addons.mozilla.org/en-GB/firefox/addon/wayback-machine_new)
- [Turn Off the Lights](https://addons.mozilla.org/en-GB/firefox/addon/turn-off-the-lights/)
- [Firefox Color](https://addons.mozilla.org/en-GB/firefox/addon/firefox-color) (Used to apply [Catppuccin](https://github.com/catppuccin/firefox) to Firefox)
- [TOSDR](https://addons.mozilla.org/en-GB/firefox/addon/terms-of-service-didnt-read/)
- [TTV LOL PRO](https://addons.mozilla.org/en-GB/firefox/addon/ttv-lol-pro/)
- [No Dumb TLDs](https://addons.mozilla.org/en-GB/firefox/addon/no-dumb-tld-s/)

Userscripts:
- [YouTube Shorts Redirect](https://greasyfork.org/en/scripts/439993-youtube-shorts-redirect)
- [Twitch Auto Channel Points Claimer](https://greasyfork.org/en/scripts/392348-twitch-auto-channel-points-claimer)
- [Restore YouTube Username](https://greasyfork.org/en/scripts/468740-restore-youtube-username-from-handle-to-custom)
- [YouTube JS Engine Tamer](https://greasyfork.org/en/scripts/473972-youtube-js-engine-tamer)

Userstyles:
- [Arch Wiki Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/arch-wiki)
- [Canvas LMS Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/canvas-lms)
- [ChatGPT Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/chatgpt)
- [DuckDuckGo Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/duckduckgo)
- [Github Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/github)
- [Gmail Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/gmail)
- [Google Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/google)
- [Modrinth Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/modrinth)
- [Reddit Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/reddit)
- [Stylus Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/stylus)
- [Twitch Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/twitch)
- [WhatsApp Web Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/whatsapp-web)
- [Wikipedia Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/wikipedia)
- [YouTube Catppuccin](https://github.com/catppuccin/userstyles/tree/main/styles/youtube)

All Catppuccin variants are Mocha Sapphire.

</details>

## If you are not me, read this:

Some parts of these dotfiles will be very specific to my setup, which is probably not the exact same as yours. Assuming you are not me, here's a list of some configs you may want to change:

- The .sh files in .screenlayout/ correspond to my monitor setup. I strongly recommend deleting them and using arandr to create a .sh file for your monitor setup. Ensure that whatever you name it is reflected in the exec command at the bottom of .config/i3/config so that it is automatically executed when you log in.

- You may wish to remove various exec commands from the i3 config. The top one prevents the screen from going to sleep. The rest correspond to various programs, some of which you may not use. Just don't delete the ones for lxsession, picom, the .screenlayout/ script, polybar, and nitrogen.

This repo was created following this tutorial: https://www.youtube.com/watch?v=y6XCebnB9gs
