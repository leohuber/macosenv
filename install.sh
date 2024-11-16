#!/bin/bash

echo "Installing Version DEVELOPMENT_VERSION"

# Remove old .zprofile file if it exists
if [ -f "$HOME/.zprofile" ]; then
    rm "$HOME/.zprofile"
fi

# Remove old .vimrc file if it exists
if [ -f "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi

# Copy new .zprofile file
cp .zprofile $HOME/.zprofile

# Copy new .vimrc file
cp .vimrc $HOME/.vimrc