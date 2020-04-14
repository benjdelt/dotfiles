#!/usr/bin/env bash

readonly BACKUP_DIR=~/home_backup/
readonly SCRIPT_DIR=`dirname "$0"`

cd $(pwd)/$SCRIPT_DIR

echo 'Removing links...'

find ~/ -lname "$(pwd)/.*" -delete 

echo 'Restoring from backup...'

cp -r $BACKUP_DIR.[^.]* ~/

