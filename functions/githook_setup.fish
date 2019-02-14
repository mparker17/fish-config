#!/usr/local/bin/fish
#
# @file
# Set up git hooks.
#
# Run from a git repo root. Requires icefox/git-hooks to be in $PATH.
#
function githook_setup -d "Set up git hooks."
  git hooks --install
  mkdir .githooks
  cp -r $HOME/Projects/Extensions/simple-linter-git-hooks/pre-commit ./.githooks/
  echo ".githooks" | tee -a .git/info/exclude
  git hooks
end
