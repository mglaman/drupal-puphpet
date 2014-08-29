#!/bin/sh
drush @drupal.commerce2x si standard --debug --site-name="Commerce2x.dev" --sites-subdir="commerce2x.dev" --db-url="mysql://commerce2x:commerce2x@localhost/commerce2x" --account-pass="admin" -y
