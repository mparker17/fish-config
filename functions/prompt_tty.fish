#
# @file
# Colored teletypewriter device.
#
# Used in fish_greeting.fish.
#
function prompt_tty -d "Colored teletypewriter device."
  set_color blue
  echo -n (tty)
  set_color normal
end
