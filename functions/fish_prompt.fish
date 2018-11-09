#!/usr/local/bin/fish
#
# @file
# Message to display when the shell is ready for input.
#
# @see https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
#

#
# Helper functions.
#
function prompt_git -d "Wrapper for the fish git prompt."
  echo -n (__fish_git_prompt)
end

#
# Main function.
#
function fish_prompt -d "Message to display when the shell is ready for input."
  prompt_exit_status
  printf '%s@%s:%s %s %s' (prompt_user) (prompt_host) (prompt_wd) (prompt_git)
  echo
  printf '~> '
end
