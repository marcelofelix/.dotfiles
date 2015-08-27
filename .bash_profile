[[ -s ~/.bashrc ]] && source ~/.bashrc
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export DOCKER_TLS_VERIFY=1
eval "$(docker-machine env dev)"
export DOCKER_CERT_PATH=/Users/marcelofelix/.docker/machine/machines/dev
export DOCKER_HOST=tcp://192.168.99.100:2376
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias ls='ls -l'
alias v='vim'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u $PURPLE@ $GREEN\w\n $BLUE[\#] → $RESETCOLOR"
  export PS2="| → $RESETCOLOR"
}

prompt
