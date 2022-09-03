#!/bin/sh

set -ue

install_neovim() {
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install neovim
}

install_neovim
