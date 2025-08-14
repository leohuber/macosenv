# Project Name

## Description
This project automates the setup and configuration of a development environment by providing scripts to install and configure essential files such as `.zprofile` and `.vimrc`. It includes a release process that packages these configuration files into a zip archive, ready for distribution. The project ensures that the latest version of the configuration files is always used by replacing placeholder version strings with the actual version number during the release process.

## Prerequisites

### Prerequisites

1. **Install Homebrew**:
    If not already installed, install [Homebrew](https://brew.sh).

1. **Update vim version**:
    The default vim version shipped with Mac OS X does not come with python3 support. Update it using Homebrew:
    ```sh
    brew update
    brew install vim
    ```

1. **Install Starship Prompt:**
    Install [Starship](https://starship.rs) with Homebrew:
    ```sh
    brew update
    brew install starship
    ```

## Installation
To install and set up the project, follow these steps:

1. **Download the latest release:**
    Go to the [Releases](https://github.com/leohuber/macosenv/releases) page. Download the latest release zip file, extract the zip file to your desired location.

1. **Run the installation script:**
    ```sh
    ./install.sh
    ``` 
    This will copy the configuration files to your home directory, replacing any existing versions.

1. **Configure the fonts**:
    The font DroidSansMono has been copied to `/Users/leo/Library/Fonts` and is availabel to Mac OS X. Make sure to configure the font ***DroidSansM Nerd*** font in your terminal application.

1. **Install vim plugins**:
    Make sure the vim plugins configured in .vimrc are installed. Open vim and run the following command:
    ```sh
    :PlugUpdate
    ```

1. **Install github cli**:
    Install [github cli](https://cli.github.com) with homebrew:
    ```sh
    brew install gh
    ```
    After installation authenticate with github.com:
    ```sh
    gh auth login
    ```
    After auhtentication install copilot for cli:
    ```sh
    gh extension install github/gh-copilot
    ```