#!/bin/sh

set -ue

install_ctags() {
  mkdir -pv $HOME/repo
  cd $HOME/repo
  git clone https://github.com/universal-ctags/ctags.git
  cd ctags
  ./autogen.sh
  ./configure
  make
  sudo make install
}

install_ctags
