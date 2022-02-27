#!/bin/sh

DOTPATH=~/dotfiles

cd $DOTPATH/.vim/rc
for f in ??*.rc.vim
do
  ln -snfv "$DOTPATH/.vim/rc/$f" "$HOME/.config/nvim/plugins"/"$f"
done
