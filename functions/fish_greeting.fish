#!/usr/local/bin/fish
#
# @file
# Message to display when the shell starts.
#
function fish_greeting -d "Message to display when the shell starts."
  printf "%s: a %s %s shell running at %s on a %s connected to %s on %s: a %s machine. You are %s@%s in directory %s and your home folder is %s." (prompt_fish_version) (prompt_interactivity) (prompt_login) (prompt_level) (prompt_term) (prompt_tty) (prompt_host) (prompt_machine) (prompt_user) (prompt_host) (prompt_wd_full) (prompt_home)
  echo
end
