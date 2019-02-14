#
# @file
# Colored terminal ID.
#
# Used in fish_greeting.fish.
#
function prompt_term -d "Colored terminal ID."
  set_color cyan
  echo -n "$TERM"
  set_color normal
end
