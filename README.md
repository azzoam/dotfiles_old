# Debian Setup  
A folder of scripts and instructions for setting up a new
debian linux machine with settings that I enjoy.

## Author  
Alexander Azzo

## What it does  
- `install-apps.sh` - installs common programs  
  + vlc  
  + vim  
  + tmux  
  + gdb  
  + R  
  + git  
  + gparted  
  + gufw  
  + htop  
- `setup-links.sh` - backs up and creates symlinks to dotfiles
- sets up base-16 for gnome terminal  
- sets up base-16 shell  
- sets up base-16 Vim  
- installs dotfiles (.bashrc, .vimrc, .tmux.conf)  

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

Install common apps
```
cd ~/dotfiles
sudo ./debian/install-apps.sh
```

Setup dotfile symlinks  
```
cd ~/dotfiles
./debian/setup-links.sh
```

Install base16-shell
```
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

Install base16-vim
```
cd ~/.vim/colors
git clone https://github.com/chriskempson/base16-vim.git base16
cp base16/colors/*.vim .
```











