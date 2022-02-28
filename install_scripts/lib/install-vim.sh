#!/bin/bash

set -ue

install_vim() {
  sudo apt update
  sudo apt install vim
}

install_vim
