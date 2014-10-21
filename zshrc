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

plugins=(git osx brew ruby rails bundler gem vagrant coffee)

export PATH="/usr/local/bin:$HOME/bin:$PATH"
# Homebrew versions should supersede defaults set up in /etc/paths

export EDITOR=vim

source $ZSH/oh-my-zsh.sh

# Not sure why oh-my-zsh rbenv wanted to init homebrew rbenv
# even though I've done everything so far in ~/.rbenv
# https://coderwall.com/p/j6cjnq
# --no-rehash is needed with more rubies. let it go for now
# add zsh to be explicit about which shell we want
eval "$(rbenv init - zsh)"


# Aliases - where should these go?
alias web='python -m SimpleHTTPServer'
alias cleantab='crontab -l|grep -v "^#"|grep -v "^$"'

