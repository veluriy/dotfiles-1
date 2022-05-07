#!/bin/sh

set -ue

install_binutils() {
  sudo apt update
  sudo apt install binutils -y
}

install_binutils
