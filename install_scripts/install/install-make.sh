#!/bin/sh

set -ue

install_make() {
  sudo apt update
  sudo apt install make -y
}

install_make
