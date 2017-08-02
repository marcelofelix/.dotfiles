export CC=/usr/bin/gcc-5
export PKG_CONFIG_PATH=/usr/lib/openssl-1.0/pkgconfig
export EDITOR=vim
export M2=/usr/local/Cellar/maven/3.3.3
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin"
export PATH="$PATH:$HOME/Applications/idea/bin"
eval "$(rbenv init -)"
