# Nix-Setup

> My automated setup scripts for freshly installed NIX machines. Primarily intended for use with Ubuntu & Kali machines, use at your own discretion.

## Tools Installed & Configurations

> TODO: Add notes about tools/configs
> - Oh My Zsh
> - Terminator
> - Gnome-Tweaks
> - Nautilus Plugins
> - Chrome
> - VS Code
> - Flameshot

## System Configurations

> TODO: Add notes about system config changes
> - Disable Wayland - to fix issues w/ VMware freezing
> - Update PATH - to include directories in `~/Tools`

## Post-Setup Tasks

> TODO: Add any additional tasks after running Setup script
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
