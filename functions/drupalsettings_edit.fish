#!/usr/local/bin/fish
#
# @file
# Edit Drupal's settings settings.local.php and development.services.yml.
#
# Run from a Drupal 6, 7, or 8 webroot.
#
function drupalsettings_edit -d "Set up a Drupal site's settings.php and settings.local.php."
  chmod u+w sites/default sites/default/*
  edit sites/default/development.services.yml sites/default/settings.local.php
end
