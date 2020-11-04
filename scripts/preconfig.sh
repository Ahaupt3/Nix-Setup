#!/bin/bash

preconfig(){
    echo -e "${GREEN}Pre-Configuration"
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
