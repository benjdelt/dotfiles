#!/usr/bin/env bash

readonly BOLD='\033[1m'
readonly RED='\033[1;31m'
readonly RED_BOLD='\033[1;91m'
readonly GREEN='\033[1;32m'
readonly GREEN_BOLD='\033[1;92m'
readonly BLUE='\033[1;34m'
readonly BLUE_BOLD='\033[1;94m'
readonly YELLOW='\033[1;33m'
readonly YELLOW_BOLD='\033[1;93m'
readonly RESET_FORMAT='\033[0m'

# All scripts

# Messages

msg_info () {
    echo -e "${BLUE}$1${RESET_FORMAT}"
}

msg_success () {
    echo -e "${GREEN}$1${RESET_FORMAT}"
}

msg_warning () {
    echo -e "${YELLOW_BOLD}$1${RESET_FORMAT}"
}

msg_alert () {
    echo -e "${RED_BOLD}$1${RESET_FORMAT}"
}

# Install scripts

backup_file () {
    rsync -rv --no-links --ignore-existing "$1" "$2"
}

remove_existing_dir () {
    local basename
    basename=$(basename "$1")
    local target_dir=$HOME/$basename
    if [[ -d $1 && -d $target_dir ]]; then
	echo "target $target_dir"
	sudo rm -rf "$target_dir"
    fi
}

make_link () {
    ln -svf "$1" "$2"
}

# Main scripts

handle_missing_option () {
    if (("$1" == 1)); then
        echo 'Missing option' 1>&2
        echo "Try './scripts/install -h' for more information" 1>&2
        exit 1
    fi
}

handle_invalid_arg () {
    if [[ "$1" -gt  0 ]]; then
        echo "Unrecognized argument(s): $2" 1>&2
        echo "Try './scripts/install -h' for more information" 1>&2
        exit 1
    fi
}

