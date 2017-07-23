#!/usr/local/bin/fish
#
# @file
# Set up a Drupal site's settings.php and settings.local.php.
#
# Run from a Drupal 6, 7, or 8 webroot.
#
chmod u+w sites/default sites/default/*

cp sites/default/default.settings.php sites/default/settings.php
echo "
/**
 * Include a local settings file if it exists.
 */
\$local_settings = dirname(__FILE__) . '/settings.local.php';
if (file_exists(\$local_settings)) {
  include \$local_settings;
}
" | tee -a sites/default/settings.php
echo "<?php" | tee -a sites/default/settings.local.php
mate sites/default/settings.local.php $HOME/Projects/Extensions/drupal-settings_local_snippets
