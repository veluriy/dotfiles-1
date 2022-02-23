#!/bin/sh
cd $HOME

vim_home=~/.vim
nvim_home=~/.nvim
DOTPATH=~/dotfiles

mkdir -pv ${vim_home}
mkdir -pv ${nvim_home}
mkdir -pv "$HOME/.config/nvim"

ln -snfv "$DOTPATH/.vim/.vimrc" "$HOME/.vimrc"
ln -snfv "$DOTPATH/.vim/rc" "${vim_home}/rc"
ln -snfv "$DOTPATH/.vim/.vimrc" "$HOME/.config/nvim/init.vim"
ln -snfv "$DOTPATH/.vim/rc" "${nvim_home}/rc"
