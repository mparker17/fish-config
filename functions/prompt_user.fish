#
# @file
# Colored username.
#
# Used in fish_greeting.fish and fish_prompt.fish.
#
function prompt_user
  set_color brown
  echo -n (id -un)
  set_color normal
end
