#!/bin/bash

postconfig(){
    echo -e "\n${GREEN}Post-Configuration${YELLOW}"
    
    echo -e "\n${GREEN}Disabling Wayland${YELLOW}"
    sudo sed -i "s/\#Wayland/Wayland/" /etc/gdm3/custom.conf > /dev/null 2>&1 || sudo sed -i "s/\#Wayland/Wayland/" /etc/gdm3/daemon.conf > /dev/null 2>&1
    
    # Set Nautilus settings
    # - gsettings list-keys org.gnome.Terminal.ProfilesList
    # - gsettings list-recursively org.gnome.Terminal.ProfilesList
    # - gsettings get org.gnome.Terminal.ProfilesList list
    # - gsettings set SCHEMA[:PATH] KEY VALUE

    # if [ $(lsb_release -i | grep ID | cut -d ":" -f 2) == Ubuntu ]; then
    #     Set Ubuntu config
    # else
    #     :
    # fi

    echo -e "\n${GREEN}Purging unused packages${YELLOW}"
    sudo apt purge --autoremove -y
    
    echo -e "\n${GREEN}Updating PATH${YELLOW}"
    echo -e "\n# Add to PATH" >> "$ZSHRC"
    echo -e 'export PATH="${PATH}":$(ls -d ~/Tools/* | tr "\\n" ":" | sed "s/:$//")' >> $ZSHRC
    
    echo -e "\n${GREEN}Finished Post-Configuration"
        
    return 0
}
