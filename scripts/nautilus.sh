#!/bin/bash

nautilus(){
    echo -e "${GREEN}Installing Nautilus plugins${YELLOW}"
    sudo apt-get install -y -qq nautilus-admin > /dev/null
    pip install nautilus-open-any-terminal
    glib-compile-schemas ~/.local/share/glib-2.0/schemas/
    gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal terminator
    sudo apt purge --autoremove -y -qq nautilus-extension-gnome-terminal > /dev/null
    nautilus -q
    echo -e ""

    echo -e "${GREEN}Finished Installing Nautilus plugins"
    echo -e ""
    
    return 0
}
