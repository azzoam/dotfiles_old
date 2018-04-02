#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
BACKUP_DIR=$HOME/.settings_backups/
BACKUP_DATETIME="$( date +"%Y%m%d_%H%M%S" )"

mkdir -p $BACKUP_DIR
mkdir -p $BACKUP_DIR/$BACKUP_DATETIME


# vimrc backup and symlink
if [ -f $HOME/.vimrc ]
then
    mv $HOME/.vimrc $BACKUP_DIR/$BACKUP_DATETIME/.vimrc
else
    if [ -L $HOME/.vimrc ]
    then
        rm $HOME/.vimrc
    fi
fi
ln -s $SCRIPT_DIR/../vim/vimrc $HOME/.vimrc


# bashrc backup and symlink
if [ -f $HOME/.bashrc ]
then
    mv $HOME/.bashrc $BACKUP_DIR/$BACKUP_DATETIME/.bashrc
else
    if [ -L $HOME/.bashrc ]
    then
        rm $HOME/.bashrc
    fi
fi
ln -s $SCRIPT_DIR/../bash/bashrc $HOME/.bashrc


# tmux.conf backup and symlink
if [ -f $HOME/.tmux.conf ]
then
    mv $HOME/.tmux.conf $BACKUP_DIR/$BACKUP_DATETIME/.tmux.conf
else
    if [ -L $HOME/.tmux.conf ]
    then
        rm $HOME/.tmux.conf
    fi
fi
ln -s $SCRIPT_DIR/../tmux/tmux.conf $HOME/.tmux.conf





