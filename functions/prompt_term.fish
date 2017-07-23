#
# @file
# Colored terminal ID.
#
# Used in fish_greeting.fish.
#
function prompt_term
  set_color cyan
  echo -n "$TERM"
  set_color normal
end
