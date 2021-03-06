#
# @file
# Friendly Interactive Shell (fish) configuration.
#
# Prompt settings.
set -g fish_color_user brown
set -g fish_color_host blue
set -g fish_color_cwd  red
set -e __fish_git_prompt_show_informative_status
set -g __fish_git_prompt_color_branch         magenta
set -g __fish_git_prompt_color_cleanstate     green
set -g __fish_git_prompt_color_dirtystate     brown
set -g __fish_git_prompt_color_invalidstate   red
set -g __fish_git_prompt_color_stagedstate    cyan
set -g __fish_git_prompt_color_untrackedfiles yellow
set -g __fish_git_prompt_color_upstream       cyan

# Where to find commands (priority).
#set -x PATH /example $PATH
#set -x PATH $HOME/example $PATH

# Where to find commands (normal).
#set -x PATH $PATH /example
#set -x PATH $PATH $HOME/example
set -x PATH $PATH $HOME/.config/bin

# Environment variables.
#set -x BROWSER (which links)
set -x EDITOR (which vim)
set -x GREP_COLORS "ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36"
#set -x GPGKEY
set -x LESS "-F -i -m -R -w -x4 -X -Pm?f%F:[stdin]. | [Lines %lt–%lb/%L=%Pt–%Pb] col %c [Page %dt/%D] [Bytes %bt–%bb/%B=%pt–%pb\%] ?e[EOF].%t"
set -x USER_ID (id -u)

# Aliases (common mistakes).
alias gut 'git'

# Aliases (efficiency).
alias l 'ls -CF'
alias ll 'ls -l'
alias la 'ls -A'
alias lla 'ls -A -l'
alias dcr 'docker-compose run --rm '
alias drgrep "grep -r --exclude-dir='.git' --exclude-dir='.idea' --exclude-dir='vendor'"
alias jsc 'node -i'
alias which 'type'

# Aliases (Linux only).
#alias pbcopy 'xclip -selection clipboard'
#alias open xdg-open
#alias mate xdg-open

# Aliases (Mac OS/X only).
#alias grep 'ggrep --color=auto'
#alias gpg 'gpg2'
#alias rgrep 'ggrep --line-number --color=auto -r'
#alias sed 'gsed'

# Aliases (fun).
alias mike 'git'

# Rbenv.
#status --is-interactive; and source (rbenv init -|psub)
