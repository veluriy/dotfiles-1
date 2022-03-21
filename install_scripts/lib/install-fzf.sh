#!/bin/sh

set -ue

install_fzf() {
  sudo apt update
  sudo apt install fzf
}

install_fzf
