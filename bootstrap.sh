#!/usr/bin/env bash
set -eu

REPO="https://github.com/jpk68/dotfiles.git"
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

# Create directories if they don't yet exist
mkdir -p ~/.vim
mkdir -p ~/.config/python

echo "Creating symlinks..."

ln -sfn "$DIR/.config/foot/" "$HOME/.config/foot"
ln -sfn "$DIR/.config/mpv/" "$HOME/.config/mpv"
ln -sfn "$DIR/.config/lf/" "$HOME/.config/lf"
ln -sfn "$DIR/.config/fish/" "$HOME/.config/fish"
ln -sfn "$DIR/.config/python/pythonrc" "$HOME/.config/python/pythonrc"

ln -sfn "$DIR/.vimrc" "$HOME/.vimrc"
ln -sfn "$DIR/.vim/vimrc.d" "$HOME/.vim/vimrc.d"

ln -sfn "$DIR/.gdbinit" "$HOME/.gdbinit"
ln -sfn "$DIR/.wgetrc" "$HOME/.wgetrc"

echo "Done."
echo "Please manually copy the Git config; you must make personal modifications for it to work."
