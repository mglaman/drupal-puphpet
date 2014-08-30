#!/bin/sh
ROOT_DIR="$( cd "$( dirname "$( dirname "$0" )" )" && pwd )"
SITE_DIR="$ROOT_DIR/sites/commerce-2.x"

echo "Setting up Commerce 2.x Dev Environment!"
echo "Please make sure you have forked the repo:
        https://github.com/commerceguys/commerce"
echo "----------------------------------------------------"


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
  read -p "What is your GitHub username? I'll setup your fork: " origin
  git clone --branch 8.x-2.x git@github.com:$origin/commerce.git $SITE_DIR/modules/commerce
  cd $SITE_DIR/modules/commerce
  git remote add upstream git@github.com:commerceguys/commerce.git && git fetch upstream
fi

echo "All set! Please review the README.md in the Commerce 2.x module folder."
