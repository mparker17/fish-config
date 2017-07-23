#
# @file
# Colored shell interactivity.
#
# Used in fish_greeting.fish.
#
function prompt_interactivity
  set_color cyan
  if status -i
    echo -n "interactive"
  else
    echo -n "non-interactive"
  end
  set_color normal
end
