#!/bin/sh

DOTPATH=~/dotfiles
CONFIGPATH=$HOME/.config/terminator

echo "Install terminator."

sudo apt update && sudo apt upgrade
sudo apt install terminator

echo "Make terminator config directory."

mkdir -pv $CONFIGPATH

echo "Link."

ln -snfv $DOTPATH/terminator/config $CONFIGPATH/config
