#!/bin/sh

set -ue

install_octave() {
  sudo apt update
  sudo apt install octave -y
}

install_octave
