#!/usr/local/bin/fish
#
# @file
# Run PHP Coding Standards Beautifier with the Drupal sniffs on a path.
#
function dcsf -d 'Run PHP Coding Standards Beautifier with the Drupal sniffs on a path.'
  docker run --rm -v $PWD:/app mparker17/phpcbf-drupal:latest $path_to_lint
end
