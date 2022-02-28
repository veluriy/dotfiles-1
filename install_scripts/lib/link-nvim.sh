#!/bin/bash

set -ue

DOTPATH=~/dotfiles
INIT_PATH=$DOTPATH/.config/vim/.vimrc
NVIM_CONFIG_PATH=$HOME/.config/nvim

mkdir -pv $NVIM_CONFIG_PATH
ln -snfv $INIT_PATH $NVIM_CONFIG_PATH/init.vim
