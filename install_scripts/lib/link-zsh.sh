#!/bin/bash

set -ue

ZSHRCPATH=~/dotfiles/.config/zsh
ZSHPATH=$HOME/.zsh

mkdir -pv $ZSHPATH
ln -snfv $ZSHRCPATH/.zshrc $HOME/.zshrc
ln -snfv $ZSHRCPATH/config $ZSHPATH/config
