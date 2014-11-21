set fish_theme mparker17

# Some others that might be useful based on environment: brew
set fish_plugins bundler node rbenv

# Add my own paths.
# set PATH /important/path $PATH
# set PATH $PATH /normal/path
# Composer globals (priority):
set PATH /Users/mparker17/.composer/vendor/bin $PATH

# My local bin:
set PATH $PATH /Users/mparker17/Library/bin
# Githooks:
set PATH $PATH /Users/mparker17/Repositories/git-hooks

# Command-specific settings:
set -x GREP_OPTIONS '--line-number --color=auto'

# Aliases
alias gut 'git'
alias l 'ls -CF'
alias ll 'ls -l'
alias la 'ls -A'
alias lla 'ls -A -l'
alias rgrep 'grep -r'

# MacOS Aliases.
#alias sed 'gsed'
