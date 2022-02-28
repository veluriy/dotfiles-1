#!/bin/bash

set -ue

install_zsh() {
  sudo apt update
  sudo apt install zsh
}

install_zsh
