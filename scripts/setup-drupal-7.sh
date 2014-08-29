#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`
SITE_DIR=$ROOT_DIR/sites/drupal-7

echo "Checking out latest of Drupal 7.x into sites..."
if [ -d "$SITE_DIR" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 7.x http://git.drupal.org/project/drupal.git $SITE_DIR
fi
