# .bash_profile

# Get the aliases and functions
# 25 jan 2013 - split .bash_profile and .bashrc
# .bash_profile should be for console stuff only. source other stuff from .bashrc
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

alias ll='ls -l'
alias la='ls -la'

# ssh aliases

# commands
alias web='python -m SimpleHTTPServer'
# User specific environment and startup programs

# 25 jan 2013 - don't look like we have this (ports?) on the new machine
#test -r /sw/bin/init.sh && . /sw/bin/init.sh

# 5 apr 2012 - for rbenv
eval "$(rbenv init -)"
