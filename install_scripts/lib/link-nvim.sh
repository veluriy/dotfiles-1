#!/bin/bash

set -ue

DOTPATH=~/dotfiles
INIT_PATH=$DOTPATH/.config/vim/.vimrc
RC_PATH=$DOTPATH/.config/vim/rc
NVIM_CONFIG_PATH=$HOME/.config/nvim

mkdir -pv $NVIM_CONFIG_PATH/rc
ln -snfv $INIT_PATH $NVIM_CONFIG_PATH/init.vim
ln -snfv $RC_PATH $NVIM_CONFIG_PATH/rc
