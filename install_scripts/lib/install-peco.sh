#!/bin/bash

set -ue

install_peco() {
  sudo apt update
  sudo apt install peco
}

install_peco
