#!/bin/sh

set -ue

mkdir -pv ~/.config/terminator

ln -snfv ~/dotfiles/.config/terminator/config ~/.config/terminator/config
