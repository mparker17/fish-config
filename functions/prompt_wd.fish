#
# @file
# Colored working directory, reduced.
#
# Used in fish_prompt.fish.
#
function prompt_wd
  set_color red
  echo -n (prompt_pwd)
  set_color normal
end
