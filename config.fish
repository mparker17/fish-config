#
# @file
# Friendly Interactive Shell (fish) configuration.
#

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
set -x LESS "-F -i -m -R -w -x4 -X -Pm?f%F:[stdin]. | [Lines %lt–%lb/%L=%Pt–%Pb] col %c [Page %dt/%D] [Bytes %bt–%bb/%B=%pt–%pb\%] ?e[EOF].%t"

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
alias drgrep "grep -r --exclude-dir='.git' --exclude-dir='.idea' --exclude-dir='vendor'"
alias jsc 'node -i'
alias which 'type'

# Aliases (Mac OS/X only).
#alias grep 'ggrep --color=auto'
#alias gpg 'gpg2'
#alias rgrep 'ggrep --line-number --color=auto -r'
#alias sed 'gsed'

# Aliases (fun).
alias mike 'git'

# Rbenv.
status --is-interactive; and source (rbenv init -|psub)
