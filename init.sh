#!/bin/bash

export PATH="/Users/marcelofelix/.rbenv/shims:${PATH}"
source /usr/local/Cellar/rbenv/0.4.0/completions/rbenv.bash
source /usr/local/etc/bash_completion.d/git-completion.bash


DOTFILES_DIR="$HOME/Code/dotfiles"
bash "$DOTFILES_DIR"/tools.sh

DOTFILES_HOME="$DOTFILES_DIR"/home/*
for DOTFILE in $DOTFILES_HOME
do
	if [ -f "$DOTFILE" ]; then
		rm "$HOME/.$(basename $DOTFILE)"
        cp -f "$DOTFILE" "$HOME/.$(basename $DOTFILE)"
	fi
done

DOTFILES_SOURCE="$DOTFILES_DIR"/source/*
for DOTFILE in $DOTFILES_SOURCE
do
	if [ -f "$DOTFILE" ]; then
		rm "$HOME/.$(basename $DOTFILE)"
        cp -f "$DOTFILE" "$HOME/.$(basename $DOTFILE)"
        . "$HOME/.$(basename $DOTFILE)"
	fi
done

DOTFILES_SCRIPTS="$DOTFILES_DIR"/scripts/*
for DOTFILE in $DOTFILES_SCRIPTS
do
	if [ -f "$DOTFILE" ]; then
        . "$DOTFILE"
	fi
done


rm "$HOME"/.vim
ln -s -f "$DOTFILES_DIR"/vim "$HOME"/.vim

eval "$(rbenv init -)"
