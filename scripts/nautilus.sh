#!/bin/bash

nautilus(){
    echo -e "${GREEN}Installing Nautilus plugins${YELLOW}"
    echo -e ""

    which python3-nautilus > /dev/null || sudo apt-get install -y -qq python3-nautilus > /dev/null

    echo -e "${GREEN}Installing plugin nautilus-admin${YELLOW}"
    sudo apt-get install -y -qq nautilus-admin > /dev/null
    echo -e ""

    echo -e "${GREEN}Installing plugin nautilus-open-any-terminal${YELLOW}"
    pip install -q nautilus-open-any-terminal
    glib-compile-schemas ~/.local/share/glib-2.0/schemas/
    gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal terminator
    sudo apt purge --autoremove -y nautilus-extension-gnome-terminal > /dev/null
    echo -e ""

    echo -e "${GREEN}Finished Installing Nautilus plugins"
    echo -e ""
    
    return 0
}
