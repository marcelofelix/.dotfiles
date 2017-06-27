#!/bin/bash

function dotfiles() {
  ln -fs ~/.dotfiles/bashrc ~/.bashrc
  ln -fs ~/.dotfiles/bash_profile ~/.bash_profile
  ln -fs ~/.dotfiles/vimrc ~/.vimrc
  ln -fs ~/.dotfiles/tmux.conf ~/.tmux.conf
  ln -fs ~/.dotfiles/inputrc ~/.inputrc
  ln -fs ~/.dotfiles/editorconfig ~/.editorconfig
  ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
  ln -fs ~/.dotfiles/gitignore_global ~/.gitignore_global
  ln -fs ~/.dotfiles/vim ~/.vim
  ln -fs ~/.dotfiles/tmux ~/.tmux
}

dotfiles
source ~/.bash_profile


