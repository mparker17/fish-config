#
# @file
# Colored hostname.
#
# Used in fish_greeting.fish and fish_prompt.fish.
#
function prompt_host -d "Colored hostname."
  set_color blue
  echo -n (hostname -s)
  set_color normal
end
