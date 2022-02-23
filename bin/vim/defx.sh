#!/bin/sh

DOTPATH=~/dotfiles

mkdir -pv $HOME/.config/nvim/plugins
ln -snfv $DOTPATH/.vim/rc/defx.rc.vim $HOME/.config/nvim/plugins/defx.rc.vim
