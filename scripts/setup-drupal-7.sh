#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`

echo "Checking out latest of Drupal 7.x into sites..."
rm -rf $ROOT_DIR/sites/drupal-7
git clone --branch 7.x http://git.drupal.org/project/drupal.git $ROOT_DIR/sites/drupal-7
