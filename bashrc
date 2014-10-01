# .bashrc should be for non-console stuff and source into .bash_profile

EDITOR=/usr/bin/emacs
export EDITOR

PATH="$HOME/bin:$PATH"
# 4 Jan 2013 - New machine doesn't have MySQL installed. (Not even sure where Homebrew installs it.)
#PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/bin:$PATH"
# 4 Jan 2013 - Fixing Homebrew warning
# Warning: Homebrew's sbin was not found in your path.
# Consider amending your PATH variable so it contains:
#   /usr/local/sbin
PATH="/usr/local/sbin:$PATH"
# 4 Mar 2013 - Adding directory for NPM-installed binaries
PATH="/usr/local/share/npm/bin:$PATH"

# 4 Jan 2013 - Old PATH changes that were already commented out.
#export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
#export PATH=/usr/local/flex_sdk_3/bin:$PATH

export PATH
unset USERNAME

# suggested by TextMate manual for SVN
export LC_CTYPE=en_US.UTF-8

# 13 apr 2012 - GDAL python stuff via Homebrew
# "Unless you are using Homebrew's Python, both the bindings and the
# additional tools will be unusable unless the following directory is added to
# the PYTHONPATH: /usr/local/lib/python2.7/site-packages "
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# 6 April 2009 - Ruby & Rails stuff to fix apparent problems in Leopard
# 7 Jan 2012 - Disabled after moving to new machine with Lion
# used http://www.luisdelarosa.com/2007/11/19/reinstalling-rubygems-on-leopard/
# still not clear what GEM_HOME is for (see http://blog.divergentsoftware.com/2007/11/gemhome-is-where-partys-at.html)
#export GEM_HOME=/Library/Ruby/Gems/1.8
# but also had to put my /usr/local in front of the framework gem path
#export GEM_PATH=/usr/local/lib/ruby/gems/1.8:/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/gems/1.8

# 4 jan 2013 - Removed all references to MacPorts, RVM from the old machine, as we now use Homebrew, rbenv instead. See .bash_profile.backup-after-mountainlion-upgrade
