#!/bin/bash

set -ue

install_cmatrix() {
  sudo apt update
  sudo apt install cmatrix
}

install_cmatrix
