#!/bin/bash

flameshot(){
    echo -e "${GREEN}Installing Flameshot${YELLOW}"
    sudo apt-get install -y -qq flameshot > /dev/null
    echo -e ""

    echo -e "${GREEN}Finished Installing Flameshot"
    echo -e ""
    
    return 0
}
