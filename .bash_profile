source ~/.profile
export PATH=~/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:/usr/local/share/npm/bin:$PATH
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk
export RBENV_ROOT=/usr/local/var/rbenv

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

RESET="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DARK_GRAY="\[\033[1;30m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
LIGHT_CYAN="\[\033[1;36m\]"
WHITE="\[\033[1;37m\]"

PS_LINE=`printf -- '·%.0s' {1..200}`
PS_INFO="${LIGHT_GRAY}\u${LIGHT_GRAY}@${LIGHT_GRAY}\h${DARK_GRAY}:${LIGHT_BLUE}\w${RESET}"
PS_TIME="\[\033[\$((COLUMNS-5))G\]${DARK_GRAY} \$(date +%H:%M)${RESET}"

function setup_prompt() {
    local LastStatus=$?

    if [[ $LastStatus -eq "0" ]]; then
        PS_STATUS="${GREEN}✔${RESET}"
    else
        PS_STATUS="${RED}✘${RESET}"
    fi

    PS_FILL=${PS_LINE:0:$COLUMNS}

    GIT_PROMPT_START="\n${DARK_GRAY}\${PS_FILL}\[\033[0G\]${PS_STATUS} ${PS_INFO}"
    GIT_PROMPT_END=" ${PS_TIME}\n\$ "
}

PROMPT_COMMAND=setup_prompt

GIT_PROMPT_ONLY_IN_REPO=0

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

alias ls="ls -G"
alias ll="ls -l"
alias la="ls -la"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
