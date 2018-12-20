#!/usr/local/bin/fish
#
# @file
# Run PHP Coding Standards Beautifier with the DrupalPractice sniffs on a path.
#
function dpcsf -d 'Run PHP Coding Standards Beautifier with the DrupalPractice sniffs on a path.'
  docker run --rm -v $PWD:/app mparker17/phpcbf-drupalpractice:latest $path_to_lint
end
