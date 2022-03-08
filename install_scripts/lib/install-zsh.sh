#!/bin/bash

set -ue

install_zsh() {
  sudo apt update
  sudo apt install zsh
  sudo chsh $(which zsh)
}

install_zsh
