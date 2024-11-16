#!/bin/bash

VERSION="1.1.1"

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

# Loop through all scripts and replace DEVELOPMENT_VERSION with the string stored in VERSION
cp .zprofile .vimrc install.sh release/tmp/
cd release/tmp
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" .zprofile
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" .vimrc
sed -i '' "s/DEVELOPMENT_VERSION/${VERSION}/g" install.sh

# Create a new release zip file
zip ../release_v${VERSION}.zip .zprofile .vimrc install.sh
cd ../../

gh release create v${VERSION} --title "Release v${VERSION}" --generate-notes release/release_v${VERSION}.zip