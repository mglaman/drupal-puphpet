#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`
SITE_DIR=$ROOT_DIR/sites/commerce-2.x

echo "Checking out latest of Drupal 8.0.x into sites..."
if [ -d "$SITE_DIR" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git $SITE_DIR
fi

echo "Checkout out latest Composer Manager 8.x-1.x..."
if [ -d "$SITE_DIR/modules/composer_manager" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.x-1.x http://git.drupal.org/project/composer_manager.git $SITE_DIR/modules/composer_manager
fi

echo "Checkout out latest Devel 8.x-1.x (see https://www.drupal.org/node/2315801)..."
if [ -d "$SITE_DIR/modules/devel" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.x-1.x http://git.drupal.org/project/devel.git $SITE_DIR/modules/devel
fi

echo "Checkout out latest Commerce 8.x-2.x..."
if [ -d "$SITE_DIR/modules/commerce" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.x-2.x git@github.com:commerceguys/commerce.git $SITE_DIR/modules/commerce
fi

echo "All set! Please review the README.md in the Commerce 2.x module folder."
