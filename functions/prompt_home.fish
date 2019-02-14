#
# @file
# Colored home directory.
#
# Used in fish_greeting.fish.
#
function prompt_home -d "Colored home directory."
  set_color cyan
  echo -n "$HOME"
  set_color normal
end
