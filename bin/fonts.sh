#!/bin/sh

ln -snfv ~/dotfiles/.fonts ~/.fonts

git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
cd ..
rm -rf nerd-fonts
