# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Plugin 'brew'
Plugin 'bundler'
Plugin 'gem'
Plugin 'node'
Plugin 'osx'
Plugin 'rbenv'

##########

# Priority paths.
set PATH /Applications/MAMP/Library/bin $PATH
set PATH /Applications/MAMP/bin/php/php5.4.38/bin $PATH
set PATH /Users/mparker17/.composer/vendor/bin $PATH

# Additional paths.
set PATH $PATH /Users/mparker17/Library/bin
set PATH $PATH /usr/local/opt/rbenv/versions/1.9.3-p385/bin
set PATH $PATH /Users/mparker17/Repositories/git-hooks

# Command-specific environment variables.
set -x PYTHONPATH '/usr/local/lib/python2.7/site-packages:$PYTHONPATH'
set -x DRUSH_PHP '/Applications/MAMP/bin/php/php5.4.39/bin/php'

# Aliases.
alias gut 'git'
alias l 'ls -CF'
alias ll 'ls -l'
alias la 'ls -A'
alias lla 'ls -A -l'
alias grep 'grep --line-number --color=auto'
alias rgrep 'grep --line-number --color=auto -r'
alias drupalcs "phpcs --standard=Drupal -- "
alias drupalpcs "phpcs --standard=DrupalPractice -- "
alias sed 'gsed'
