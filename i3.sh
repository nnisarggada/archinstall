#!/bin/sh

if ! command -v git &> /dev/null
then
    sudo pacman -S --noconfirm git && curl -sL https://synced.nnisarg.in/shared/archinstall/i3.sh | bash
    exit 1
fi

mkdir -p ~/repos || {
    echo "Failed to create directory. Aborting."
    exit 1
}

cd ~/repos || {
    echo "Failed to change directory. Aborting."
    exit 1
}

git clone --depth=1 https://github.com/nnisarggada/i3-dots || {
    echo "Failed to clone repository. Aborting."
    exit 1
}

cd i3-dots || {
    echo "Failed to change directory. Aborting."
    exit 1
}

./install.sh || {
    echo "Failed to run install script. Aborting."
    exit 1
}

echo "Done!"
