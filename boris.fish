#
# @file
# Run boris with the correct PHP version.
#
function boris
  set -lx PATH (brew --prefix homebrew/php/php54)/bin
  eval $HOME/.composer/vendor/bin/boris $argv
end
