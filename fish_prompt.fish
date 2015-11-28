#
# @file
# mparker17's prompt.
#
# Put in ~/.config/fish/functions/fish_prompt.fish
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

function prompt_user
  set_color brown
  echo -n (id -un)
  set_color normal
end

function prompt_host
  set_color blue
  echo -n (hostname -s)
  set_color normal
end

function prompt_wd_full
  set_color red
  echo -n (pwd)
  set_color normal
end

function prompt_wd
  set_color red
  echo -n (prompt_pwd)
  set_color normal
end

function prompt_git
  echo -n (__fish_git_prompt)
end

function prompt_exit_status
  switch $status
    case 0
      # Noop.
    case 1
      echo "💥  [exited with error code $status: (invalid arguments?)]"
    case 124
      echo "💥  [exited with error code $status: (no glob matches?)]"
    case 125
      echo "💥  [exited with error code $status: (found and executable but could not execute?)]"
    case 126
      echo "💥  [exited with error code $status: (found but not executable?)]"
    case 127
      echo "💥  [exited with error code $status: (no function, builtin or command found?)]"
    case '*'
      echo "💥  [exited with error code $status]"
  end
end

function prompt_fish_version
  set_color green
  echo -n "fish, version $version"
  set_color normal
end

function prompt_interactivity
  set_color cyan
  if status -i
    echo -n "interactive"
  else
    echo -n "non-interactive"
  end
  set_color normal
end

function prompt_login
  set_color cyan
  if status -l
    echo -n "login"
  end
  set_color normal
end

function prompt_level
  set_color cyan
  echo -n "level-$SHLVL"
  set_color normal
end

function prompt_term
  set_color cyan
  echo -n "$TERM"
  set_color normal
end

function prompt_tty
  set_color blue
  echo -n (tty)
  set_color normal
end

function prompt_machine
  set_color blue
  echo -n (uname -sr)
  set_color normal
end

function prompt_home
  set_color cyan
  echo -n "$HOME"
  set_color normal
end

function fish_greeting -d "what's up, fish?"
  printf "%s: a %s %s shell running at %s on a %s connected to %s on %s: a %s machine.\nYou are %s@%s in directory %s and your home folder is %s." (prompt_fish_version) (prompt_interactivity) (prompt_login) (prompt_level) (prompt_term) (prompt_tty) (prompt_host) (prompt_machine) (prompt_user) (prompt_host) (prompt_wd_full) (prompt_home)
end

#
# Callbacks.
#

# Display the prompt.
function fish_prompt
  prompt_exit_status
  printf '%s@%s:%s %s %s ' (prompt_user) (prompt_host) (prompt_wd) (prompt_git) '🐟 '
end
