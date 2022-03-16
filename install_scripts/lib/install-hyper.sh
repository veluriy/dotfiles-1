#!/bin/sh

set -ue

install_hyper() {
  sudo apt update
  wget https://github.com/vercel/hyper/releases/download/v3.2.0/hyper_3.2.0_amd64.deb
  sudo apt install ./hyper_3.2.0_amd64.deb
  rm ./hyper_3.2.0_amd64.deb
}

install_hyper
