#!/bin/bash

set -ue

install_neovim() {
  sudo apt update
  sudo apt install neovim
  sudo pip3 install pynvim
  sudo pip3 install neovim-remote
  sudo pip3 install pylint
}

install_neovim
