#!/bin/sh

set -ue

install_fortune() {
  sudo apt update
  sudo apt install fortune
}

install_fortune
