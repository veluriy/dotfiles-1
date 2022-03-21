#!/bin/sh

set -ue

install_terminator() {
  sudo apt update
  sudo apt install terminator
}

install_terminator
