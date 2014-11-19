#!/bin/sh
drush @drupal.d8panels si standard --debug --site-name="D8Panels.dev" --sites-subdir="d8panels.dev" --db-url="mysql://d8panels:d8panels@localhost/d8panels" --account-pass="admin" -y
# Enable certain modules
drush @drupal.d8panels en page_manager layout_plugin panels -y
