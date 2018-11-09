#
# @file
# Colored shell type.
#
# Used in fish_greeting.fish.
#
function prompt_login -d "Colored shell type."
  set_color cyan
  if status -l
    echo -n "login"
  end
  set_color normal
end
