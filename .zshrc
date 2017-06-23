export EDITOR=subl
export LANG=en_US.UTF-8
export REACT_EDITOR=subl

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(battery brew brew-cask colored-man-pages colorize composer docker docker-compose git git-extras git-flow grunt gulp httpie jsontools jump lein man node npm nvm osx sbt scala screen yarn z)

# User configuration

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME

# Android
if [ -d "~/Library/Android/sdk/platform-tools" ] ; then
  export PATH="~/Library/Android/sdk/platform-tools:$PATH"
fi

# nvm
export NVM_DIR=~/.nvm

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
[ -f $ZPLUG_HOME/init.zsh ] && source $ZPLUG_HOME/init.zsh
zplug "caarlos0/zsh-git-sync"

# oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $(brew --prefix nvm)/nvm.sh
[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# iTerm 2
# [ -f $HOME/.iterm2_shell_integration.zsh ] && source ${HOME}/.iterm2_shell_integration.zsh

# Lunchy
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
. $LUNCHY_DIR/lunchy-completion.zsh
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-default-dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="subl ~/.oh-my-zsh"

alias lla="ls -la"
alias dockerc="docker-compose"

autoload -U promptinit; promptinit
prompt pure

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
