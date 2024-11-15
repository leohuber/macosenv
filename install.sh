#!/bin/bash

echo "Installing Version DEVELOPMENT_VERSION"

# Remove old .zprofile file if it exists
if [ -f "$HOME/.zprofile" ]; then
    rm "$HOME/.zprofile"
fi

# Copy new .zprofile file
cp .zprofile $HOME/.zprofile