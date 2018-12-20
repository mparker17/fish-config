#!/usr/local/bin/fish
#
# @file
# Run PHP_CodeSniffer with the Drupal and DrupalPractice sniffs on a path.
#
function dchk -d 'Run PHP_CodeSniffer with the Drupal and DrupalPractice sniffs on a path.'
  docker run --rm -v $PWD:/app mparker17/phpcs-drupal:latest $argv
  docker run --rm -v $PWD:/app mparker17/phpcs-drupalpractice:latest $argv
end
