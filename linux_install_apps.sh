#!/bin/bash

PROGS="vlc vim tmux r-base r-base-dev gdb git gparted gufw htop"
SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
BASE16_DIR=$HOME/.base16

echo ====UPDATING=============================
sudo apt-get update

echo ====INSTALLING APPS======================
sudo apt-get install $PROGS

echo ====INSTALLING BASE 16===================
mkdir -p $BASE16_DIR

if [ -d $BASE16_DIR/base16-vim ]
then
    rm -rf $BASE16_DIR/base16-vim
fi
git clone https://github.com/azzoam/base16-vim.git $BASE16_DIR/base16-vim

if [ -d $BASE16_DIR/base16-shell ]
then
    rm -rf $BASE16_DIR/base16-shell
fi
git clone https://github.com/azzoam/base16-shell.git $BASE16_DIR/base16-shell

echo ====CONFIGURING BASE 16==================
mkdir -p $HOME/.config
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/colors

if [ -d $HOME/.config/base16-shell ]
then
    rm -rf $HOME/.config/base16-shell
fi
echo Copying $BASE16_DIR/base16-shell to $HOME/.config
cp -r $BASE16_DIR/base16-shell $HOME/.config

if [ -d $HOME/.vim/colors/base16 ]
then
    rm -rf $HOME/.vim/colors/base16
fi
echo Copying $BASE16_DIR/base16-vim to $HOME/.vim/colors/base16
cp -r $BASE16_DIR/base16-vim $HOME/.vim/colors/base16
cp $HOME/.vim/colors/base16/colors/*.vim $HOME/.vim/colors


echo ====INSTALLING FONTS=====================
if [ -d $HOME/.fonts ]
then
    rm -rf $HOME/.fonts
fi
mkdir -p $HOME/.fonts
cp -rv $SCRIPT_DIR/../fonts/* $HOME/.fonts








