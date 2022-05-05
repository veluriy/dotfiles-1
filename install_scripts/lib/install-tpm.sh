#!/bin/sh

set -ue

install_tpm() {
  git clone https://github.com/tmux-plugins/tpm $HOME/repo/tpm
}

install_tpm
