#!/bin/sh

set -ue

install_cowsay() {
  sudo apt update
  sudo apt install cowsay
}

install_cowsay
