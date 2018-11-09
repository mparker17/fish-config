#!/usr/local/bin/fish
#
# @file
# Message to display when the shell is ready for input.
#
# @see https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
#

#
# Settings. Previously set to global.
#
# What to show:
set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_showupstream "informative"

# Colors:
set __fish_git_prompt_color_branch         magenta
set __fish_git_prompt_color_cleanstate     green
set __fish_git_prompt_color_dirtystate     brown
set __fish_git_prompt_color_invalidstate   red
set __fish_git_prompt_color_stagedstate    cyan
set __fish_git_prompt_color_untrackedfiles yellow
set __fish_git_prompt_color_upstream       cyan

# Icons:
set __fish_git_prompt_char_cleanstate      "✓"
set __fish_git_prompt_char_conflictedstate "💢 "
set __fish_git_prompt_char_dirtystate      "✏️ "
set __fish_git_prompt_char_stagedstate     "🎭 "
set __fish_git_prompt_char_untrackedfiles  "✨ "
set __fish_git_prompt_char_upstream_ahead  "↑"
set __fish_git_prompt_char_upstream_behind "↓"
set __fish_git_prompt_char_upstream_prefix "|"

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
  printf '%s@%s:%s %s\n%s ' (prompt_user) (prompt_host) (prompt_wd) (prompt_git) ' 🐟 '
#  printf '%s@%s:%s %s\n%s ' (prompt_user) (prompt_host) (prompt_wd) ' 🐟 '
end
