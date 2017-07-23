#
# @file
# Colored exit status.
#
# Used by fish_prompt.fish.
#
function prompt_exit_status
  switch $status
    case 0
      # Noop.
    case 1
      echo "💥  [exited with error code $status: (invalid arguments?)]"
    case 124
      echo "💥  [exited with error code $status: (no glob matches?)]"
    case 125
      echo "💥  [exited with error code $status: (found and executable but could not execute?)]"
    case 126
      echo "💥  [exited with error code $status: (found but not executable?)]"
    case 127
      echo "💥  [exited with error code $status: (no function, builtin or command found?)]"
    case '*'
      echo "💥  [exited with error code $status]"
  end
end