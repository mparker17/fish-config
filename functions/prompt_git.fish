#!/usr/local/bin/fish
#
# @file
# A git prompt.
#
# Used in fish_greeting.fish and fish_prompt.fish.
#
function prompt_git -d "Wrapper for the fish git prompt."
  if not command -sq git
      return 1
  end
  set -l repo_info (command git rev-parse --git-dir --is-inside-git-dir --is-bare-repository --is-inside-work-tree HEAD 2>/dev/null)
  test -n "$repo_info"
  or return

  set -l git_dir $repo_info[1]
  set -l inside_gitdir $repo_info[2]
  set -l bare_repo $repo_info[3]
  set -l inside_worktree $repo_info[4]
  set -q repo_info[5]
  and set -l sha $repo_info[5]

  if test "true" = $inside_worktree
    set_color normal
    echo -n '('
    set_color $__fish_git_prompt_color_branch
    echo -n (git rev-parse --abbrev-ref HEAD)
    set_color normal
    echo -n @
    set_color red
    echo -n (git rev-parse --short HEAD)
    set_color normal
    echo -n ')'
  end
end
