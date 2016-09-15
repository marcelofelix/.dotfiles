export PATH="/Users/marcelofelix/.rbenv/shims:${PATH}"
eval "$(rbenv init -)"

if [ -f ~/.env_local ]; then
   source ~/.env_local
fi

source ~/.bashrc
source ~/.profile

export NVM_DIR="/Users/marcelofelix/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
