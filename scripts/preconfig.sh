#!/bin/bash

# Variables
CMDS=(curl git)

preconfig(){
    echo -e "\n${GREEN}Pre-Configuration"
    
    echo -e "\n${GREEN}Updating Packages${YELLOW}"
    if [[ "$OS" == Ubuntu ]]; then
        sudo add-apt-repository universe
    fi
    sudo apt -q update
    
    echo -e "\n${GREEN}Checking for commands - installing if not found${YELLOW}"
    for CMD in "${CMDS[@]}"; do
        echo -e "${YELLOW}Looking for $CMD"
        which "$CMD" > /dev/null || sudo apt-get install -y -qq "$CMD" > /dev/null
    done
    echo -e "\n${GREEN}All prerequisite commands are installed"
        
    echo -e "\n${GREEN}Linking Python3/Pip3 to Python/Pip${YELLOW}"
    if [ "$(realpath "$(which python)")" = "$(realpath "$(which python3)")" ]; then
        :
    else
        sudo rm "$(which python)"
        sudo ln -s "$(which python3)" /usr/bin/python
    fi
    which pip > /dev/null || sudo apt-get install -y -qq python3-pip > /dev/null
    
    echo -e "\n${GREEN}Finished Pre-Configuration"
        
    return 0
}
