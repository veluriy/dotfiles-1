#!/bin/sh

set -ue

DOTPATH=~/dotfiles
INIT_PATH=$DOTPATH/.config/nvim/init.lua
RC_PATH=$DOTPATH/.config/nvim/rc
NVIM_CONFIG_PATH=$HOME/.config/nvim

mkdir -pv $NVIM_CONFIG_PATH
ln -snfv $INIT_PATH $NVIM_CONFIG_PATH/init.lua
ln -snfv $RC_PATH $NVIM_CONFIG_PATH/rc
