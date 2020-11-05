#!/bin/bash

# Variables
CMDS=(curl git)

preconfig(){
    echo -e "${GREEN}Pre-Configuration"
    echo -e ""

    echo -e "${GREEN}Updating Packages${YELLOW}"
    if [[ "$OS" == Ubuntu ]]; then
        sudo add-apt-repository universe
    fi
    sudo apt -q update
    echo -e ""

    echo -e "${GREEN}Checking for commands - installing if not found${YELLOW}"
    for CMD in "${CMDS[@]}"; do
        echo -e "${YELLOW}Looking for $CMD"
        which "$CMD" > /dev/null || sudo apt-get install -y -qq "$CMD" > /dev/null
    done
    echo -e "${GREEN}All prerequisite commands are installed"
    echo -e ""
    
    echo -e "${GREEN}Linking Python3/Pip3 to Python/Pip${YELLOW}"
    if [ "$(realpath "$(which python)")" = "$(realpath "$(which python3)")" ]; then
        :
    else
        sudo rm "$(which python)"
        sudo ln -s "$(which python3)" /usr/bin/python
    fi
    which pip > /dev/null || sudo apt-get install -y -qq python3-pip > /dev/null
    echo -e ""

    echo -e "${GREEN}Finished Pre-Configuration"
    echo -e ""
    
    return 0
}
