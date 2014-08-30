#!/bin/sh
ROOT_DIR="$( cd "$( dirname "$( dirname "$0" )" )" && pwd )"
SITE_DIR=$ROOT_DIR/sites/drupal-8

echo "Checking out latest of Drupal 8.0.x into sites..."
if [ -d "$SITE_DIR" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git $SITE_DIR
fi
