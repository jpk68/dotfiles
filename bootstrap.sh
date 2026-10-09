#!/usr/bin/env bash
set -eu

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create directories if they don't yet exist
mkdir -p ~/.vim
mkdir -p ~/.config/python
mkdir -p ~/.config/ghostty

echo "Creating symlinks..."

ln -sfn "$DIR/.config/foot/" "$HOME/.config/foot"
ln -sfn "$DIR/.config/mpv/" "$HOME/.config/mpv"
ln -sfn "$DIR/.config/lf/" "$HOME/.config/lf"
ln -sfn "$DIR/.config/fish/" "$HOME/.config/fish"
ln -sfn "$DIR/.config/python/pythonrc" "$HOME/.config/python/pythonrc"
ln -sfn "$DIR/.config/ghostty/config.ghostty" "$HOME/.config/ghostty/config.ghostty"

ln -sfn "$DIR/.vimrc" "$HOME/.vimrc"
ln -sfn "$DIR/.vim/vimrc.d" "$HOME/.vim/vimrc.d"

ln -sfn "$DIR/.gdbinit" "$HOME/.gdbinit"
ln -sfn "$DIR/.wgetrc" "$HOME/.wgetrc"

echo "Done."
echo "Please manually copy the Git config; you must make personal modifications for it to work."
