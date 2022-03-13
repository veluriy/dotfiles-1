#!/bin/bash

set -ue

mkdir -pv ~/.config/terminator

ln -snfv ~/dotfiles/.config/terminator/config ~/.config/teminator/config
