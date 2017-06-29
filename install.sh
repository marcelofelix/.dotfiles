sudo apt-key adv -qq --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get -qq update
sudo apt-get remove -y vim
sudo apt-get install -y vim-gtk
sudo apt install -y -qq git
sudo apt install -y -qq tmux
sudo apt install -y -qq xclip
sudo apt install -y -qq curl
sudo apt install -y -qq spotify-client
sudo apt install -y -qq maven
sudo apt install -y -qq docker.io

if [ -d "~/.rbenv" ]; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  cd ~/.rbenv && src/configure && make -C src
  cd -
fi

if [ -d "~/.rbenv/plugins/ruby-build" ]; then
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  cd ~/.rbenv/plugins/ruby-build
  sudo ./install.sh
fi

if [ -d "~/.nvm" ]; then
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
fi

apti -y -qq default-jdk

if [ -d "~/.dotfiles/tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/tmux/plugins/tpm
fi

sudo apt-get install -y -qq\
  linux-image-extra-$(uname -r) \
  linux-image-extra-virtual

sudo apt-get install -y -qq \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
sudo apt-get install -y -qq docker-ce
