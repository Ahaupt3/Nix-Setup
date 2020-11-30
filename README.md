# Nix-Setup

> My automated setup scripts for freshly installed NIX machines. Primarily intended for use with Ubuntu & Kali machines, use at your own discretion.

## Installation Guide

> 1. `git clone https://github.com/Ahaupt3/Nix-Setup.git`
> 2. `cd Nix-Setup && chmod +x Nix-Setup.sh && ./Nix-Setup.sh`

## Tools Installed & Configurations

> - Oh My Zsh
>   - Check if ZSH is installed, install if not
>   - Install [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh)
>   - Update .zshrc (theme & plugins)
>   - Install [Solarized](https://github.com/aruhier/gnome-terminal-colors-solarized)
>   - Install NPM/[Github-Files-Fetcher](https://github.com/Gyumeijie/github-files-fetcher)
>   - Install ZSH plugins - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo), [vscode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode)
> - Terminator
>   - Install [Terminator](https://github.com/gnome-terminator/terminator)
>   - Add custom [config file](https://github.com/Ahaupt3/Nix-Setup/blob/main/config/terminator-config) (see file for keyboard shortcuts)
> - Gnome-Tweaks
>   - Check if Gnome-Tweaks is installed, install if not
>   - Install [chrome-gnome-shell](https://wiki.gnome.org/Projects/GnomeShellIntegrationForChrome/Installation)
>   - TODO: Add installation of tweaks
> - Nautilus Plugins
>   - Install Nautilus plugins - [python3-nautilus](https://packages.debian.org/sid/python3-nautilus), [nautilus-admin](https://github.com/brunonova/nautilus-admin), [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
>   - TODO: Add custom nautilus config
> - Chrome
>   - Install Chrome
> - VS Code
>   - Install VS Code
>   - Install [Powerline Font for Terminal](https://github.com/abertsch/Menlo-for-Powerline)
>     (need to update settings - Settings > Search "Terminal Font" > Add "Menlo for Powerline" in Font Family)
>   - TODO: Add custom vs code config
> - Flameshot (screenshot tool)
>   - Install Flameshot

## System Configurations

> - Disable Wayland - to fix issues w/ VMware freezing
> - Update PATH - to
>   - Add directories in `~/Tools`
>   - Add pyserve alias (`sudo python3 -m http.server 80`)

## Post-Setup Tasks

> - Reboot machine to finish disabling Wayland

## STATUS:

> - Kali 2020.3: Working
> - Ubuntu 20.04: Not Tested

## TODO:

> - Finish System Config script
>   - Add system keyboard shortcuts
>   - Add nautilus preferences
> - Update Tools dir
>   - Copy primary script & symlink `cp ~/Tools/<dir>/<script> /usr/local/bin/<script - extension> && ln /usr/local/bin/<script> ~/Tools/<dir>/<script>`
> - Update VS Code
>   - Add extensions
>   - Add editor prefs
> - Update Gnome-Tweaks
>   - Add extensions
> - Add Ubuntu/Kali specific tools to install
> - Add script errortests
> - Create verification script to ensure all tools are working as expected
