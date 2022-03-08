#!/bin/bash

set -ue

install_zplug() {
  sudo apt update
  sudo apt install zplug
}

install_zplug
