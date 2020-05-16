# Dotfiles

A collection of my personal configuration files for:
- Bash
- Vim
- tmux
- Starship prompt

## Requirements

The scripts assume that the following are already installed:
- cURL
- Git (obviously)
- Vim >= 8
- Firacode Nerd Font Mono (for Starship prompt)

## Installation

- Clone this repository in your HOME directory and cd into it
- Run the install dotfiles script:
```
./install-dotfiles
```
- Run the setup vim script:
```
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

- To restore the initial state of the HOME directory before running the install
script:
```
./restore-dotfiles
```
- To restore the state of the .vim folder:
```
./restore-vim
```
## Installed Tools and Plugins

The following are installed by the scripts:

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

