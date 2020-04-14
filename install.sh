#!/usr/bin/env bash

readonly BACKUP_DIR=~/home_backup/
readonly IGNORE=(.git .gitignore .install.sh.swp .restore.sh.swp)
readonly SCRIPT_DIR=`dirname "$0"`

in_ignore () {
    for i in "${IGNORE[@]}"; do
	if [[ $i = $1 ]]; then
            return 0
	fi
    done
    return 1
}

remove_existing_dir () {
    local basename=`basename "$1"` 
    local target_dir=~/$basename
    if [[ -d $1 && -d $target_dir ]]; then
	echo "target $target_dir"
	rm -rf $target_dir
    fi
}
        
echo 'Backing up Home Directory dotfiles...'

if [[ ! -d $BACKUP_DIR ]]; then
    mkdir -v $BACKUP_DIR
fi

rsync -r --no-links ~/.[^.]* $BACKUP_DIR

echo 'Creating links to dotfiles...'

cd $(pwd)/$SCRIPT_DIR

for f in ./.[^.]*; do
    basename=`basename $f`
#    echo "pwd $(pwd)"
#    echo "f $f"
#    echo "basename $basename"
#    echo "script dir $SCRIPT_DIR"
    in_ignore `basename "$f"`
    if [[ "$?" -ne 0 ]]; then
	remove_existing_dir $f
	ln -svf $(pwd)/$basename ~/
    fi
done

