#!/bin/bash

set -ue

install_neovim() {
  sudo apt update
  sudo apt install neovim
}

install_neovim
