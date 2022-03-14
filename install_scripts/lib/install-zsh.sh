#!/bin/bash

set -ue

install_zsh() {
  sudo apt update
  sudo apt install zsh
  sudo chsh $(which zsh)
  sudo apt install locales-all
}

install_zsh
