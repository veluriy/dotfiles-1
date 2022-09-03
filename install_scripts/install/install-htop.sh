#!/bin/sh

set -ue

install_htop(){
  sudo apt update
  sudo apt install htop -y
}

install_htop
