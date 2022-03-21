#!/bin/sh

set -ue

FISHCONFIGPATH=~/dotfiles/.config/fish
FISHPATH=$HOME/.config/fish

mkdir -pv $FISHPATH
ln -snfv $FISHCONFIGPATH/config.fish $FISHPATH/fish.config
ln -snfv $FISHCONFIGPATH/conf.d $FISHPATH/conf.d
