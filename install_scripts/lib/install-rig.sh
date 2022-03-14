#!/bin/sh

set -ue

install_rig() {
  sudo apt update
  sudo apt install rig
}

install_rig
