#!/bin/sh

set -ue

install_tmux() {
  sudo apt update
  sudo apt install tmux
}

install_tmux
