# Dotfiles

A collection of my personal configuration files for:
- Bash
- Vim
- tmux
- Starship prompt

The repo also includes scripts to setup a machine: installing different
programming languages and tools. [See the full list of  
installed packages, tools and plugins](#installed-packages-tools-and-plugins).

## Requirements

The scripts assume that the following are already installed:
- cURL
- Git (obviously)
- Vim >= 8
- Firacode Nerd Font Mono (for Starship prompt)

## Installation

- Clone this repository in your HOME directory and cd into it
- Run the install script:
```
./install-all
```
- Scripts can be run separately for dotfiles and vim setup
```
./install-deb-packages
./install-cli-tools
./install-dotfiles
./setup-vim
```
The scripts make a backup of the existing targeted files in this directory
before creating symlinks to the dotfiles of the repo.
Note that the install scripts can safely be run multiple times.

Running Vim for the first time installs the plugins:
```
vim
```

## Restore Initial State

- To restore the backup made during installation:
```
./restore-all
```
- Restore scripts can also be run separately for dotfiles and vim setup
```
./restore-dotfiles
./restore-vim
```
## Installed Packages, Tools and Plugins

The following are installed by the scripts:

### Deb Packages

- Python3
- pip
- node.js
- npm
- nvm
- Yarn
- Ruby

### Command Line Tools

- Starship prompt

### Vim

#### Plugins

- ctrlp
- fugitive
- ALE (Asynchronous Lint Engine)

#### Color Schemes

- Solarized
- seoul256
- jellybeans
- PaperColor

#### Personal File Type Plugins

- Javascript
- Markdown
- Python
- Ruby
- Text

