#!/bin/sh
drush @drupal.commerce_deploy si commerce_deploy --debug --site-name="CommerceDeploy.dev" --sites-subdir="commercedeploy.dev" --db-url="mysql://commercedeploy:commercedeploy@localhost/commercedeploy" --account-pass="admin" -y
