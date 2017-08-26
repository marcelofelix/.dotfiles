p -S gvim --noconfirm
p -S xclip --noconfirm
p -S tmux --noconfirm
p -S maven --noconfirm
p -S docker --noconfirm
p -S docker-compose --noconfirm
p -Syyu openssl-1.0 gcc5 --noconfirm
p -S aws-cli --noconfirm
# p -S base-devel yaourt --noconfirm
# sudo yaourt rbenv
# sudo yaourt google-chrome

if [ -d "~/.dotfiles/tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/tmux/plugins/tpm
fi

if [ -d "~/.dotfiles/tmux/plugins/tmux-yank" ]; then
  git clone https://github.com/tmux-plugins/tmux-yank.git ~/.dotfiles/tmux/plugins/tmux-yank
fi

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
