#!/bin/sh

set -ue

install_figlet() {
  sudo apt update
  sudo apt install figlet
}

install_figlet
