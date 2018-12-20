#!/usr/local/bin/fish
#
# @file
# Run PHP_CodeSniffer with the Drupal sniffs on a path.
#
function dcs -d 'Run PHP_CodeSniffer with the Drupal sniffs on a path.'
  docker run --rm -v $PWD:/app mparker17/phpcs-drupal:latest $argv
end
