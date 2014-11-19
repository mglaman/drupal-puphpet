#!/bin/sh
ROOT_DIR=$HOME/Drupal
SITE_DIR=$ROOT_DIR/sites/d8-panels

echo "Checking out latest of Drupal 8.0.x into sites..."
if [ -d "$SITE_DIR" ]; then
  cd ${SITE_DIR} && git reset --hard HEAD && git pull
else
  git clone --branch 8.0.x http://git.drupal.org/project/drupal.git ${SITE_DIR}
fi

echo "Checkout out latest Page Manager 8.x-1.x..."
if [ -d "${SITE_DIR}/modules/page_manager" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.x-1.x http://git.drupal.org/project/page_manager.git ${SITE_DIR}/modules/page_manager
fi

echo "Checkout out latest Layout 8.x-1.x..."
if [ -d "${SITE_DIR}/modules/layout_plugin" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch 8.x-1.x http://git.drupal.org/project/layout_plugin.git ${SITE_DIR}/modules/layout_plugin
fi

echo "Checkout out latest Panels Sandbox..."
if [ -d "${SITE_DIR}/modules/d8panels" ]; then
  cd $SITE_DIR && git reset --hard HEAD && git pull
else
  git clone --branch d8panels http://git.drupal.org/sandbox/dsnopek/2290237.git ${SITE_DIR}/modules/d8panels
fi
