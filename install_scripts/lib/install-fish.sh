#!/bin/sh

set -ue

install_fish() {
  sudo apt-add-repository ppa:fish-shell/release-3
  sudo apt update
  sudo apt install fish
}

install_fish
