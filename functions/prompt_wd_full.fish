#
# @file
# Colored working directory, full.
#
# Used in fish_greeting.fish.
#
function prompt_wd_full
  set_color red
  echo -n (pwd)
  set_color normal
end
