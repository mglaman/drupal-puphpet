#!/bin/sh
drush @drupal.commerce2x si standard --debug --site-name="Commerce2x.dev" --sites-subdir="commerce2x.dev" --db-url="mysql://commerce2x:commerce2x@localhost/commerce2x" --account-pass="admin" -y
# Enable certain modules
drush @drupal.commerce2x en devel simpletest -y
# Commerce module (minus Price..requires a library and composer is still janked)
drush @drupal.commerce2x en commerce commerce_order commerce_product
# Composer update
vagrant ssh -c "cd /var/www/commerce-2.x/sites/default/files/composer && composer update"
