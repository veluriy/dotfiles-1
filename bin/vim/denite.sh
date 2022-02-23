#!/bin/sh

DOTPATH=~/dotfiles

mkdir -pv $HOME/.config/nvim/plugins
ln -snfv $DOTPATH/.vim/rc/denite.rc.vim $HOME/.config/nvim/plugins/denite.rc.vim
