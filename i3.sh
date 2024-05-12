#!/bin/sh

sudo pacman -S git

mkdir $HOME/repos
cd $HOME/repos

git clone --depth=1 https://github.com/nnisarggada/i3-dots
cd i3-dots && ./install.sh
