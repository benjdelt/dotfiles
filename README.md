# Dotfiles

A collection of my personal configuration files for:
- Bash
- Vim
- tmux
- git

## Installation

- Clone this repository in your ~ directory
- Run the install script:
```
./dotfiles/install
```
The script creates a backup of the existing dotfiles in the ~ directory before
creating symlinks to the dotfiles of the repo.
Note that the install script can safely be run multiple times.
- To restore the initial state of the ~ directory before running the install
script:
```
./dotfiles/resore
```


