#!/bin/sh

set -ue

install_exa() {
  sudo apt update
  sudo apt install exa
}

install_exa
