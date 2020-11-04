#!/bin/bash

# Variables
# EXTS=(eonpatapon/gnome-shell-extension-caffeine.git clipboard-indicator )
# EXTDIR=~/.local/share/gnome-shell/extensions

tweaks(){
    echo -e "${GREEN}Installing Gnome-Tweaks${YELLOW}"
    which gnome-tweaks > /dev/null || sudo apt-get install -y -qq gnome-tweak-tool > /dev/null
    echo -e ""

    echo -e "${GREEN}Installing Chrome-Gnome-Shell${YELLOW}"
    which chrome-gnome-shell > /dev/null || sudo apt-get install -y -qq chrome-gnome-shell > /dev/null
    echo -e ""

    # echo -e "${GREEN}Installing Extensions${YELLOW}"
    # if [ ! -d "$EXTDIR" ]; then
    #     mkdir -p "$EXTDIR" || exit
    # fi
    # for EXT in "$EXTS"; do
    #     sudo apt-get install -y -qq gnome-shell-extension-"$EXT" > /dev/null
    # done
    # echo -e ""

    echo -e "${GREEN}Finished Installing Gnome-Tweaks"
    echo -e ""
    
    return 0
}
