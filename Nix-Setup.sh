#!/bin/bash
# by Ahaupt3

# Colorization
GREEN='\033[0;1;32m'
YELLOW='\033[0;33m'

# Variables
SETUPDIR=$(pwd)
TOOLS=~/Tools
DIRS=("$TOOLS")

# Source Scripts
for SCRIPT in scripts/*; do
    source "$SCRIPT"
done

# Check if Root
if [[ ! $(whoami) == root ]]; then
    echo -e "${YELLOW}This script must be run as root!" 
    sudo ls > /dev/null
fi

# Check what Distro
for OS in $(lsb_release -i | grep ID | cut -d ":" -f 2); do
    if [[ "$OS" == @(Ubuntu|Kali) ]]; then
        echo -e "\n${GREEN}OS: $OS"
    else
        echo -e "\n${GREEN}OS: ${YELLOW}$OS"
    fi
done

# Setup DIRS
echo -e "\n${GREEN}Creating Directories${YELLOW}"
for DIR in "${DIRS[@]}"; do
    if [ ! -d "$DIR" ]; then
        mkdir -p "$DIR" || exit
    fi
done

# Preconfig
preconfig

# Install Tools
ohmyzsh
terminator
tweaks
nautilus
chrome
code
flameshot

# Postconfig
postconfig

# Complete
echo -e "\n${GREEN}Nix-Setup complete, reboot to complete now or run 'source ~/.zshrc' until next reboot."
sudo chsh -s "$(which zsh)" "$USER"

exit 0
