#!/bin/sh

DOTPATH=~/dotfiles

mkdir -pv $HOME/.config/nvim/plugins
ln -snfv $DOTPATH/.vim/rc/coc.rc.vim $HOME/.config/nvim/plugins/coc.rc.vim
ln -snfv $DOTPATH/.vim/rc/coc-setting.json $HOME/.vim/coc-setting.json
ln -snfv $DOTPATH/.vim/rc/coc-setting.json $HOME/.nvim/coc-setting.json
