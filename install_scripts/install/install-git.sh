#!/bin/sh

set -ue

install_git() {
  sudo apt update
  sudo apt install git -y
}

install_git
