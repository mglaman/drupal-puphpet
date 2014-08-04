#!/bin/sh
drush @drupal.panopoly si panopoly --debug --site-name="Panopoly.dev" --sites-subdir="panopoly.dev" --db-url="mysql://panopoly:panopoly@localhost/panopoly" --account-pass="admin" -y
