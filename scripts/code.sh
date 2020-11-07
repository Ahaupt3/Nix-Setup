#!/bin/bash

# Variables
FONT=~/.font

code(){
    echo -e "\n${GREEN}Installing VS Code${YELLOW}"
    curl -L -o ~/Downloads/code.deb https://go.microsoft.com/fwlink/?LinkID=760868
    sudo apt-get install -y -qq ~/Downloads/code.deb > /dev/null
    
    echo -e "\n${GREEN}Installing Powerline Font for Terminal${YELLOW}"
    if [ ! -d "$FONT" ]; then
        mkdir "$FONT" || exit
    fi
    fetcher --url="https://github.com/abertsch/Menlo-for-Powerline/blob/master/Menlo%20for%20Powerline.ttf" --out="$FONT"
    fc-cache -vf "$FONT"
    
    echo -e "\n${GREEN}Cleaning Up...${YELLOW}"
    rm ~/Downloads/code.deb
    
    echo -e "\n${GREEN}Finished Installing VS Code"
        
    return 0
}
