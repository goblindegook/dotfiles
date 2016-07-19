set ANDROID_SDK_ROOT /usr/local/opt/android-sdk
set ANDROID_HOME     /usr/local/opt/android-sdk
set RBENV_ROOT       /usr/local/var/rbenv
set GOPATH           $HOME/gocode

set PATH $PATH /usr/local/bin /usr/local/sbin /usr/local/opt/ruby/bin /usr/local/share/npm/bin ~/bin ~/.composer/vendor/bin ~/gocode/bin

set LC_CTYPE "en_US.UTF-8"
set LC_ALL   "en_US.UTF-8"

# set fish_function_path $fish_function_path "/Users/goblin/.vim/vim-addons/powerline/powerline/bindings/fish"
# powerline-setup

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme balias brew composer gem msg jump pbcopy percol osx vundle

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

nvm use default