#!/usr/local/bin/fish
#
# @file
# Run PHP_CodeSniffer with the DrupalPractice sniffs on a path.
#
function dpcs -d 'Run PHP_CodeSniffer with the DrupalPractice sniffs on a path.'
  docker run --rm -v $PWD:/app mparker17/phpcs-drupalpractice:latest $argv
end
