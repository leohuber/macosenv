#!/bin/bash

VERSION="1.2.0"

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null
then
    echo "GitHub CLI could not be found. Please install it to proceed."
    exit 1
fi

# Check if GitHub CLI is authenticated
if ! gh auth status &> /dev/null
then
    echo "GitHub CLI is not authenticated. Please log in to proceed."
    exit 1
fi

# Remove old versions of release if they exist
rm -Rf release

# Create a release directory
mkdir -p release/tmp
mkdir -p release/tmp/fonts

# Copy necessary files to the release directory
cp .zprofile .zshrc .vimrc install.sh starship.toml release/tmp/
cp ./fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf release/tmp/fonts/

# Loop through all scripts and replace DEVELOPMENT_VERSION with the string stored in VERSION
cd release/tmp
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" .zprofile
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" .zshrc
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" .vimrc
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" install.sh
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" starship.toml

# Create a new release zip file
zip ../release_v${VERSION}.zip .zprofile .zshrc .vimrc install.sh starship.toml ./fonts/DroidSansMNerdFont-Regular.otf
cd ../../

gh release create v${VERSION} --title "Release v${VERSION}" --generate-notes release/release_v${VERSION}.zip