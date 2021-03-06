#!/bin/bash

chrome(){
    echo -e "\n${GREEN}Installing Chrome${YELLOW}"
    curl -o ~/Downloads/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt-get install -y -qq ~/Downloads/chrome.deb > /dev/null
    
    echo -e "\n${GREEN}Cleaning Up...${YELLOW}"
    rm ~/Downloads/chrome.deb
    
    echo -e "\n${GREEN}Finished Installing Chrome"
        
    return 0
}
