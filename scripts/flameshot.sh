#!/bin/bash

flameshot(){
    echo -e "\n${GREEN}Installing Flameshot${YELLOW}"
    sudo apt-get install -y -qq flameshot > /dev/null
    
    echo -e "\n${GREEN}Finished Installing Flameshot"
        
    return 0
}
