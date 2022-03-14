#!/bin/bash

set -ue

sudo apt install fonts-ricty-diminished
mkdir -pv ~/repo
cd ~/repo
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
sudo ./install.sh
