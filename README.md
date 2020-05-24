# Dotfiles 

A collection of my personal configuration files for: 
- Bash 
- Vim
- tmux
- [Starship prompt](https://starship.rs/)
- Specific configurations for the terminal itself, using the 
[GNOME terminal](https://help.gnome.org/users/gnome-terminal/stable/) for Linux
and [wsltty](https://github.com/mintty/wsltty) for WSL.

The repo also includes scripts to setup a machine: installing different
programming languages and tools. [See the full list of  
installed packages, tools and plugins](#installed-packages-tools-and-plugins).

## Requirements

The scripts assume that the following are already installed:
- Git

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
```
./install -T
```

- [Droid Sans Mono Nerd Font (for Starship prompt)](https://github.com/ryanoasis/nerd-fonts)

### Deb Packages
```
./install -p
```

- Python3
- pip
- node.js
- npm
- nvm
- Yarn
- Ruby

### Command Line Tools
```
./install -t
```

- [Starship prompt](https://starship.rs/)
- [tldr pages](https://tldr.sh/)


### Vim

#### Plugins
```
./install -d
```

- [Vim Plug](https://github.com/junegunn/vim-plug)
- [ctrlp](https://github.com/kien/ctrlp.vim)
- [fugitive](https://github.com/tpope/vim-fugitive)
- [ALE (Asynchronous Lint Engine)](https://github.com/dense-analysis/ale)

#### Color Schemes
```
./install -d
```

- [Solarized](https://github.com/altercation/vim-colors-solarized)
- [seoul256](https://github.com/junegunn/seoul256.vim)
- [jellybeans](https://github.com/nanotech/jellybeans.vim)
- [PaperColor](https://github.com/NLKNguyen/papercolor-theme)

#### Personal File Type Plugins
```
./install -v
```

- Javascript
- Markdown
- Python
- Ruby
- Text

