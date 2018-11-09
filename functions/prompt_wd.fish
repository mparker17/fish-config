#
# @file
# Colored working directory, reduced.
#
# Used in fish_prompt.fish.
#
function prompt_wd -d "Colored working directory, reduced."
  set_color red
  echo -n (prompt_pwd)
  set_color normal
end
