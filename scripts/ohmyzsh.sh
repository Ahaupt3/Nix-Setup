#!/bin/bash

# Variables
ZSHPLUGINS=~/.oh-my-zsh/custom/plugins
ZSHRC=~/.zshrc

ohmyzsh(){
    echo -e "${GREEN}Installing Oh My Zsh${YELLOW}"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    echo -e ""

    echo -e "${GREEN}Updating .zshrc${YELLOW}"
    sed -i "s/robbyrussell/agnoster/;s/(git)/(git sudo vscode zsh-autosuggestions zsh-syntax-highlighting)/" "$ZSHRC"
    echo -e ""

    echo -e "${GREEN}Installing Solarized${YELLOW}"
    git -C ~ clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
    sed -i "s/master\//master/;s/\$scheme/dark/" ~/gnome-terminal-colors-solarized/src/dircolors.sh
    cd ~/gnome-terminal-colors-solarized && ./install.sh -s dark_alternative -p b1dcc9dd-5262-4d8d-a863-c897e6d979b9 --install-dircolors && cd "$SETUPDIR" || exit
    echo -e ""

    echo -e "${GREEN}Installing npm${YELLOW}"
    sudo apt-get install -y -qq npm > /dev/null
    echo -e ""

    echo -e "${GREEN}Installing github-files-fetcher${YELLOW}"
    sudo npm install -g github-files-fetcher
    echo -e ""

    echo -e "${GREEN}Installing plugin zsh-autosuggestions${YELLOW}"
    git -C "$ZSHPLUGINS" clone https://github.com/zsh-users/zsh-autosuggestions.git
    echo -e ""

    echo -e "${GREEN}Installing plugin zsh-syntax-highlighting${YELLOW}"
    git -C "$ZSHPLUGINS" clone https://github.com/zsh-users/zsh-syntax-highlighting.git
    echo -e ""

    echo -e "${GREEN}Installing plugin sudo${YELLOW}"
    fetcher --url="https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo" --out=$ZSHPLUGINS
    echo -e ""

    echo -e "${GREEN}Installing plugin vscode${YELLOW}"
    fetcher --url="https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode" --out=$ZSHPLUGINS
    echo -e ""

    echo -e "${GREEN}Finished Installing Oh My Zsh"
    echo -e ""
    
    return 0
}
