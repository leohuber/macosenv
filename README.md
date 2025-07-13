# Project Name

## Description
This project automates the setup and configuration of a development environment by providing scripts to install and configure essential files such as `.zprofile` and `.vimrc`. It includes a release process that packages these configuration files into a zip archive, ready for distribution. The project ensures that the latest version of the configuration files is always used by replacing placeholder version strings with the actual version number during the release process.

## Prerequisites

### Prerequisites

1. **Install Homebrew**:
    If not already installed, install [Homebrew](https://brew.sh).

1. **Install Starship Prompt:**
    Install [Starship](https://starship.rs) with Homebrew:
    ```sh
    brew install starship
    ```

## Installation
To install and set up the project, follow these steps:

1. **Download the latest release:**
    - Go to the [Releases](https://github.com/leohuber/macosenv/releases) page.
    - Download the latest release zip file.
    - Extract the zip file to your desired location.

2. **Run the installation script:**
```sh
./install.sh
```

3. **Configure the fonts**:
The font DroidSansMono has been copied to `/Users/leo/Library/Fonts` and is availabel to Mac OS X. Make sure to configure the font ***DroidSansM Nerd*** font in your terminal application.

This will copy the configuration files to your home directory, replacing any existing versions.