#!/bin/sh

set -ue

echo "Create fish links."

for f in ??*.fish; do
  ln -snfv $(pwd)/$f $HOME/.config/fish/functions/$f
done

echo "Success."
