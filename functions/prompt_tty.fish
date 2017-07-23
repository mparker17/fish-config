#
# @file
# Colored teletypewriter device.
#
# Used in fish_greeting.fish.
#
function prompt_tty
  set_color blue
  echo -n (tty)
  set_color normal
end
