#!/bin/sh

set -ue

install_autotools() {
  sudo apt install autoconf automake libtool -y
}

install_autotools
