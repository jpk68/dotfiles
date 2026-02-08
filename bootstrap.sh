#!/bin/bash
set -e

REPO="https://codeberg.org/jpk68/dotfiles.git"
DIR="$HOME/dotfiles"

# If the directory already exists
if [ -d "$DIR" ]; then
    echo "Directory already exists, pulling latest changes..."
    cd "$DIR"
    git pull origin master
else
    echo "Cloning repo..."
    git clone "$REPO" "$DIR"
fi

# If this directory doesn't yet exist (otherwise it will just error)
mkdir ~/.vim

echo "Creating symlinks..."
ln -sf "$DIR/.config/foot/" "$HOME/.config/foot/"
ln -sf "$DIR/.config/git/" "$HOME/.config/git/"
ln -sf "$DIR/.config/mpv/" "$HOME/.config/mpv/"

ln -sf "$DIR/.vim/vimrc.d/" "$HOME/.vim/vimrc.d/"
ln -sf "$DIR/.vimrc" "$HOME/.vimrc"

ln -sf "$DIR/.gdbinit" "$HOME/.gdbinit"

echo "Done."
