[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

source ~/.bash_aliases

shopt -s expand_aliases
shopt -s histappend

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PS1="\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;27m\]\w\[$(tput sgr0)\]\$ "

[ -f "/home/$USER/.ghcup/env" ] && source "/home/$USER/.ghcup/env"

. "$HOME/.cargo/env"

export PATH="$PATH:/home/$USER/.local/bin"
export LC_CTYPE=en_US.UTF-8

