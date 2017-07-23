# PHP 5.6
#set PATH /Applications/MAMP/bin/php/php5.6.30/bin $PATH
#set -x DRUSH_PHP '/Applications/MAMP/bin/php/php5.6.30/bin/php'

# PHP 7.0
#set PATH /Applications/MAMP/bin/php/php7.0.15/bin $PATH
#set -x DRUSH_PHP '/Applications/MAMP/bin/php/php7.0.15/bin/php'

# PHP 7.1
#set PATH /Applications/MAMP/bin/php/php7.1.1/bin $PATH
#set -x DRUSH_PHP '/Applications/MAMP/bin/php/php7.1.1/bin/php'


# Additional paths (priority global).
set PATH /Applications/MAMP/Library/bin $PATH
set PATH /Applications/MAMP/bin $PATH

# Additional paths (priority user).
set PATH $HOME/.composer/vendor/bin $PATH
set PATH $HOME/.rbenv/bin $PATH

# Additional paths (normal global).

# Additional paths (normal user).
set PATH $PATH $HOME/Library/bin
set PATH $PATH $HOME/Projects/Utils/git-hooks

# Environment variables.
set -x EDITOR (which vim)
set -x USER_ID (id -u)
set -x HTML_TIDY "$HOME/.tidy-config"
#set -x GPGKEY

# Aliases (common mistakes).
alias gut 'git'

# Aliases (efficiency).
alias l 'ls -CF'
alias ll 'ls -l'
alias la 'ls -A'
alias lla 'ls -A -l'
alias dcs "phpcs --standard=Drupal -- "
alias dpcs "phpcs --standard=DrupalPractice -- "
alias dcsf "phpcbf --standard=Drupal -- "
alias dpcsf "phpcbf --standard=DrupalPractice -- "
alias dcr 'docker-compose run --rm '
alias jsc 'node -i'

# Aliases (Mac OS/X only).
#alias grep 'ggrep --color=auto'
#alias rgrep 'ggrep --line-number --color=auto -r'
#alias sed 'gsed'

# Aliases (fun).
alias mike 'git'

# Rbenv.
status --is-interactive; and source (rbenv init -|psub)
