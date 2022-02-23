#!/bin/sh

DOTPATH=~/dotfiles

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
rm ./installer.sh
mkdir -pv ~/.config/nvim/

ln -snfv "$DOTPATH/.vim/rc/dein.toml" "$HOME/.config/nvim/dein.toml"
ln -snfv "$DOTPATH/.vim/rc/dein_lazy.toml" "$HOME/.config/nvim/dein_lazy.toml"
