#
# @file
# Colored manpages.
#
# Put in ~/.config/fish/functions/man.fish
#
# @see https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/colored-man/colored-man.plugin.zsh
#
function man
  set -x LESS_TERMCAP_mb (printf "\e[1;31m")
  set -x LESS_TERMCAP_md (printf "\e[1;31m")
  set -x LESS_TERMCAP_me (printf "\e[0m")
  set -x LESS_TERMCAP_se (printf "\e[0m")
  set -x LESS_TERMCAP_so (printf "\e[1;44;33m")
  set -x LESS_TERMCAP_ue (printf "\e[0m")
  set -x LESS_TERMCAP_us (printf "\e[1;32m")
  command man $argv
end
