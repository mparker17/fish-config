# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

##########


# Additional paths (priority global).
set PATH /Applications/MAMP/Library/bin $PATH
set PATH /Applications/MAMP/bin $PATH
set PATH /Applications/MAMP/bin/php/php5.6.10/bin $PATH
set PATH (brew --prefix homebrew/php/php56) $PATH
set PATH (npm bin) $PATH

# Additional paths (priority user).
set PATH $HOME/.composer/vendor/bin $PATH
set PATH $HOME/Projects/Extensions/git-hooks $PATH

# Additional paths (normal global).

# Additional paths (normal user).
set PATH $PATH $HOME/Library/bin
set PATH $PATH $HOME/Projects/Preferences/git-hooks
set PATH $PATH $HOME/Projects/Extensions/arcanist/bin
set PATH $PATH $HOME/.gem/ruby/2.0.0/bin

# Environment variables.
set -x DRUSH_PHP '/Applications/MAMP/bin/php/php5.6.10/bin/php'
set -x EDITOR (which vim)
set -x PYTHONPATH '/usr/local/lib/python2.7/site-packages:$PYTHONPATH'
set -x USER_ID (id -u)
set -x HTML_TIDY '$HOME/.tidy-config'

# Environment variables (docker).
# You can get these by running (docker-machine env default).
#set -x DOCKER_HOST 'tcp://192.168.99.100:2376'
#set -x DOCKER_CERT_PATH '/Users/mparker17/.docker/machine/machines/default'
#set -x DOCKER_TLS_VERIFY '1'

# Aliases (common mistakes).
alias gut 'git'

# Aliases (efficiency).
alias l 'ls -CF'
alias ll 'ls -l'
alias la 'ls -A'
alias lla 'ls -A -l'
alias grep 'grep --line-number --color=auto'
alias rgrep 'grep --line-number --color=auto -r'
alias dcs "phpcs --standard=Drupal -- "
alias dpcs "phpcs --standard=DrupalPractice -- "
alias dcr 'docker-compose run --rm '

# Aliases (Mac OS/X only).
alias sed 'gsed'

# Aliases (fun).
alias mike 'git'

# Rbenv.
status --is-interactive; and . (rbenv init -|psub)
