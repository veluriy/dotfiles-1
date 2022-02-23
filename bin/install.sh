#!/bin/bash

echo "Dotfiles"
echo "Install"

DOTPATH=~/dotfiles

# link top .files
echo "----------"
echo "Link .files"
cd $DOTPATH
for f in .??*
do
	[ "$f" = ".git" ] && continue

	ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done

# link .zsh/config .zsh files
echo "----------"
echo "Link .zsh files"
mkdir -pv "$HOME/.zsh/config"
cd "$DOTPATH/.zsh/config"
for f in *.zsh
do
	ln -snfv "$DOTPATH/.zsh/config/$f" "$HOME/.zsh/config"/"$f"
done

# install powerline shell
echo "----------"
echo "Install power shell"
mkdir -pv "$HOME/repo"
cd "$HOME/repo"
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
