#!bin/bash
# this shell script will install zsh

sudo apt install zsh git vim neovim tilix tmux 

# proxychains proxychains-ng
sudo apt install  proxychains proxychains-ng 

# newsboat
sudo apt install newsboat

# oh-my-zsh

# conda
proxychains wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
bash Anaconda3-2022.05-Linux-x86_64.sh

# vscode
code

# chrome
cd /tmp
sudo proxychains wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# ranger
sudo apt install ranger

