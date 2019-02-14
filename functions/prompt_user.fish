#
# @file
# Colored username.
#
# Used in fish_greeting.fish and fish_prompt.fish.
#
function prompt_user -d "Colored username."
  set_color $fish_color_user
  echo -n (id -un)
  set_color normal
end
