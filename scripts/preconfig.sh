#!/bin/bash

# Variables
CMDS=(curl git)

preconfig(){
    echo -e "${GREEN}Pre-Configuration"
    echo -e ""

    echo -e "${GREEN}Checking for commands - installing if not found${YELLOW}"
    for CMD in "${CMDS[@]}"; do
        echo -e "${YELLOW}Looking for $CMD"
        which "$CMD" > /dev/null || sudo apt-get install -y -qq "$CMD" > /dev/null
    done
    echo -e "${GREEN}All necessary commands are installed"
    echo -e ""
    
    echo -e "${GREEN}Linking Python3/Pip3 to Python/Pip${YELLOW}"
    if [ "$(realpath "$(which python)")" = "$(realpath "$(which python3)")" ]; then
        :
    else
        sudo rm /usr/bin/python
        sudo ln -s /usr/bin/python3 /usr/bin/python
        sudo apt-get install -y -qq python3-pip  > /dev/null
        sudo rm /usr/bin/pip
        sudo ln -s /usr/bin/pip3 /usr/bin/pip
    fi
    echo -e ""

    echo -e "${GREEN}Finished Pre-Configuration"
    echo -e ""
    
    return 0
}
