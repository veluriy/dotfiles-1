#!/bin/bash

set -ue

install_neovim() {
  mkdir -pv ~/repo
  cd ~/repo
  git clone https://github.com/neovim/neovim.git
  cd neovim
  make CMAKE_BUILD_TYPE=Release
  sudo make install
  cd ~
}

install_neovim
