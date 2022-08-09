#!/bin/sh

set -ue

DOTPATH=~/dotfiles
INIT_PATH=$DOTPATH/.config/nvim/init.lua
RC_PATH=$DOTPATH/.config/nvim/rc
LUA_PATH=$DOTPATH/.config/nvim/lua
PLUGIN_PATH=$DOTPATH/./config/nvim/plugin
NVIM_CONFIG_PATH=$HOME/.config/nvim

mkdir -pv $NVIM_CONFIG_PATH
ln -snfv $INIT_PATH $NVIM_CONFIG_PATH/init.lua
ln -snfv $RC_PATH $NVIM_CONFIG_PATH/rc
ln -snfv $LUA_PATH $NVIM_CONFIG_PATH/lua
ln -snfv $PLUGIN_PATH $NVIM_CONFIG_PATH/plugin
