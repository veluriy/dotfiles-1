#!/bin/bash

set -eu

install_git() {
  sudo apt update
  apt install git
  return 0
}
