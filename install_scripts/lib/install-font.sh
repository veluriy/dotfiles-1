#!/bin/sh

set -ue

sudo apt install fonts-ricty-diminished
mkdir -pv ~/repo
cd ~/repo
if [ -e $HOME/repo/nerd-fonts ]; then
  echo nerd-fonts exists.
else
  git clone https://github.com/ryanoasis/nerd-fonts
  cd $/nerd-fonts
  sudo ./install.sh
fi
sudo apt install fontforge
cd /usr/share/fonts/truetype/ricty-diminished
for file in `find . -name "RictyDiminished*.ttf"`; do
  echo $file
  sudo fontforge $/HOME/repo/nerd-fonts/font-patcher -c $file
done
