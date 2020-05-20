# Dotfiles A collection of my personal configuration files for: - Bash - Vim
- tmux
- Starship prompt

The repo also includes scripts to setup a machine: installing different
programming languages and tools. [See the full list of  
installed packages, tools and plugins](#installed-packages-tools-and-plugins).

## Requirements

The scripts assume that the following are already installed:
- cURL
- Git
- Vim >= 8
- Firacode Nerd Font Mono (for Starship prompt)

## Installation

- Clone this repository in your HOME directory and cd into it
- Run the install script with the appropriate option(s):
```
./install -a
```
For a list of available options, run the install script with the help option:
```
./install -h
```
When applicable, the scripts make a backup of the existing targeted files 
before creating symlinks to the dotfiles of the repo.
Note that the install scripts can safely be run multiple times.

Running Vim for the first time installs the plugins:
```
vim
```

## Restore Initial State

- To restore the backup made during installation, run the install script with 
the appropriate option(s):
```
./restore -a
```
For a list of available options, run the restore script with the help option:
```
./restore -h
```

## Installed Packages, Tools and Plugins

The following are installed by the scripts:

### Terminal

- Droid Sans Mono Nerd Font (for Starship prompt)

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
- tldr pages

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

