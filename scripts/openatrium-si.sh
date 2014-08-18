#!/bin/sh
drush @drupal.openatrium si openatrium --debug --site-name="openatrium.dev" --sites-subdir="openatrium.dev" --db-url="mysql://openatrium:openatrium@localhost/openatrium" --account-pass="admin" -y
