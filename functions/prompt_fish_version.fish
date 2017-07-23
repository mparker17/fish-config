#
# @file
# Colored fish version.
#
# Used in fish_greeting.fish.
#
function prompt_fish_version
  set_color green
  echo -n "fish, version $version"
  set_color normal
end
