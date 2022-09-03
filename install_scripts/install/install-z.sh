#!/bin/sh

set -ue

install_z() {
  mkdir -pv ~/repo
  git clone https://github.com/rupa/z.git ~/repo/z
}

install_z
