export EDITOR=subl
export LANG=en_US.UTF-8
export REACT_EDITOR=subl

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration

export PATH="$(brew --prefix)/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

export CFLAGS="-I$(brew --prefix openssl)/include -O2"
export CPPFLAGS="-I$(brew --prefix zlib)/include"
export LDFLAGS="-L$(brew --prefix gettext)/lib -L$(brew --prefix openssl)/lib -L$(brew --prefix zlib)/lib"
export PKG_CONFIG_PATH="$(brew --prefix openssl)/lib/pkgconfig"
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
export GPG_TTY=$(tty)

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# zplug
export ZPLUG_HOME=$(brew --prefix zplug)
[ -f $ZPLUG_HOME/init.zsh ] && source $ZPLUG_HOME/init.zsh

zplug "caarlos0/zsh-git-sync"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "supercrabtree/k"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if ! zplug check; then
  zplug install
fi

zplug load

unalias run-help
autoload run-help
HELPDIR=$(brew --prefix)/share/zsh/help

fpath=($(brew --prefix)/share/zsh-completions $fpath)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="subl ~/.zshrc"
# alias ohmyzsh="subl ~/.oh-my-zsh"

alias dockerc="docker-compose"
alias dotfiles="vcsh dotfiles"
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
alias lla="ls -la"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias preview="fzf --preview 'bat --color \"always\" {}'"

eval $(thefuck --alias)

export PATH="$(brew --prefix asdf)/bin:$PATH"
export PATH="$(brew --prefix php)/bin:$PATH"
export PATH="$(brew --prefix php)/sbin:$PATH"

export PATH="$GOBIN:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.opam/default/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(jenv init -)"
eval "$(pyenv init --path)"
eval "$(mcfly init zsh)"
eval "$(direnv hook zsh)"

export ERL_AFLAGS="-kernel shell_history enabled"

. $(brew --prefix asdf)/libexec/asdf.sh

[ -f ~/.work.zsh ] && source ~/.work.zsh
[ -f ~/.env.zsh ] && source ~/.env.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"