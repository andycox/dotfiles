# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

DISABLE_AUTO_UPDATE="true"

plugins=(git osx brew ruby rails3 rails4 bundler coffee)

export PATH="/usr/local/bin:$HOME/bin:$PATH:/usr/local/share/npm/bin"
export EDITOR="subl -w"

source $ZSH/oh-my-zsh.sh

# https://coderwall.com/p/j6cjnq
eval "$(rbenv init - --no-rehash)"

# Aliases - where should these go?
alias web='python -m SimpleHTTPServer'
