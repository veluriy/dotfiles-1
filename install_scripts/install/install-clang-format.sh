#!/bin/sh

set -ue

install_clang_format() {
  sudo apt update
  sudo apt install -y clang-format
}

install_clang_format
