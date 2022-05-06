#!/bin/sh

set -ue

install_tpm() {
  git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
}

install_tpm
