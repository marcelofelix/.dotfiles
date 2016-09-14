ln -fs ~/.dotfiles/vimrc ~/.vimrc
ln -fs ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -fs ~/.dotfiles/inputrc ~/.inputrc
ln -fs ~/.dotfiles/editorconfig ~/.editorconfig
ln -fs ~/.dotfiles/gitconfig ~/.gitconfig
ln -fs ~/.dotfiles/gitignore_global ~/.gitignore_global
ln -fs ~/.dotfiles/profile ~/.profile
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.dotfiles/.alias
source ~/.dotfiles/.env
source ~/.dotfiles/.functions

