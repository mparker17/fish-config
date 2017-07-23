#
# @file
# Colored shell level.
#
# Used in fish_greeting.fish.
#
function prompt_level
  set_color cyan
  echo -n "level-$SHLVL"
  set_color normal
end
