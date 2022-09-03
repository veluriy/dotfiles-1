#!/bin/sh

set -ue

install_gcc() {
  sudo apt update
  sudo apt install gcc -y
}

install_gcc
