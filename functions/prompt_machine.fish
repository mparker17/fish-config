#
# @file
# Colored machine type.
#
# Used in fish_greeting.fish.
#
function prompt_machine
  set_color blue
  echo -n (uname -sr)
  set_color normal
end
