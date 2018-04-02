# Dotfiles and new machine setup
A folder of dotfiles and scripts for setting up a new
machine with settings that I enjoy.

## Author  
Alexander Azzo

## What each file does  
Machine specific setup scripts are located under named
folders (eg. debian, macos, windows)  
- `install-apps.sh`
  + installs common programs  
    * vlc  
    * vim  
    * tmux  
    * gdb  
    * R  
    * git  
    * gparted  
    * gufw  
    * htop  
  + installs base-16 for colorschemes
    * base-16 shell
    * base-16 vim
  + installs fonts
    * Inconsolata
- `setup-links.sh` 
  + backs up and creates symlinks to dotfiles
    * .bashrc
    * .vimrc
    * .tmux.conf

## Installation  
Install git  
```
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git
```

Install dotfiles  
```
git clone https://github.com/azzoam/dotfiles.git ~/dotfiles
```

Install common apps and base16
```
cd ~/dotfiles
./debian/install-apps.sh
```

Setup dotfile symlinks  
```
cd ~/dotfiles
./debian/setup-links.sh
```












