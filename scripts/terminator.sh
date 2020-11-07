#!/bin/bash

# Variables
TERM=terminator-config
TERMCONFIG=config/"$TERM"
TERMDIR=~/.config/terminator

terminator(){
    echo -e "\n${GREEN}Installing Terminator${YELLOW}"
    sudo apt-get install -y -qq terminator > /dev/null
    mkdir -p "$TERMDIR" && cp "$TERMCONFIG" "$TERMDIR" && mv "$TERMDIR"/"$TERM" "$TERMDIR"/config
    
    echo -e "\n${GREEN}Finished Installing Terminator"
        
    return 0
}
