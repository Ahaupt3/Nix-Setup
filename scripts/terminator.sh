#!/bin/bash

# Variables
TERM=terminator-config
TERMCONFIG=config/"$TERM"
TERMDIR=~/.config/terminator

terminator(){
    echo -e "${GREEN}Installing Terminator${YELLOW}"
    sudo apt-get install -y -qq terminator > /dev/null
    mkdir -p "$TERMDIR" && cp "$TERMCONFIG" "$TERMDIR" && mv "$TERMDIR"/"$TERM" "$TERMDIR"/config
    echo -e ""

    echo -e "${GREEN}Finished Installing Terminator"
    echo -e ""
    
    return 0
}
