#!/bin/sh

set -ue

install_sl() {
  sudo apt update
  sudo apt install sl
}

install_sl
