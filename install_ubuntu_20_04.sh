#!/usr/bin/env bash

FOLDER_NAME="ubuntu_20_04"
SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
FOLDER_PATH="$SCRIPT_DIR/$FOLDER_NAME"

read -p "Install dotfiles found in $FOLDER_PATH? [yN] " res
[ "$res" != "y" ] && exit

echo
echo "Creating symlinks..."

for item in $(ls -A $FOLDER_PATH)
do
    ln -sv "$FOLDER_PATH/$item" ~
done
echo

