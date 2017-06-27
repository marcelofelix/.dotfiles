sudo apt-key adv -qq --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get -qq update
apti -y -qq git
apti -y -qq tmux
apti -y -qq xclip
apti -y -qq curl
apti -y -qq spotify-client
apti -y -qq maven

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
