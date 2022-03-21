#!/bin/sh

set -ue

install_fish() {
  sudo apt update
  sudo apt install fish
}

install_fish
