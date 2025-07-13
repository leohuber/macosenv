#!/bin/bash

echo "Installing Version DEVELOPMENT_VERSION"

# Remove old .zprofile file if it exists
if [ -f "$HOME/.zprofile" ]; then
    rm "$HOME/.zprofile"
fi

# Remove old .zshrc file if it exists
if [ -f "$HOME/.zshrc" ]; then
    rm "$HOME/.zshrc"
fi

# Remove old .vimrc file if it exists
if [ -f "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi

# Check if .config directory exists and contains starship.toml
if [ -d "$HOME/.config" ] && [ -f "$HOME/.config/starship.toml" ]; then
    rm "$HOME/.config/starship.toml"
fi

# Copy new .zprofile file
cp .zprofile $HOME/.zprofile

# Copy new .zshrc file
cp .zshrc $HOME/.zshrc

# Copy new .vimrc file
cp .vimrc $HOME/.vimrc

# Ensure .config directory exists
if [ ! -d "$HOME/.config" ]; then
    mkdir -p "$HOME/.config"
fi

# Copy new starship.toml file
cp starship.toml "$HOME/.config/starship.toml"