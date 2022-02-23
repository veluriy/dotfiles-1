#!/bin/sh

DOTPATH=~/dotfiles

mkdir -pv $HOME/.config/nvim/plugins
ln -snfv $DOTPATH/.vim/rc/coc.rc.vim $HOME/.config/nvim/plugins/coc.rc.vim
