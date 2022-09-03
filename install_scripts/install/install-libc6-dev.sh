#!/bin/sh

set -ue

install_libc6_dev() {
  sudo apt update
  sudo apt install libc6-dev -y
}

install_libc6_dev
