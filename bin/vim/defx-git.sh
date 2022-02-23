#!/bin/sh

DOTPATH=~/dotfiles

mkdir -pv $HOME/.config/nvim/plugins
ln -snfv $DOTPATH/.vim/rc/defx-git.rc.vim $HOME/.config/nvim/plugins/defx-git.rc.vim
