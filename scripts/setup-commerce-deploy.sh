#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`
REPO_DIR=$ROOT_DIR/profiles/commerce_deploy
SITE_DIR=$ROOT_DIR/sites/commerce_deploy

echo "Checking out latest of Commerce Deploy distribution..."
if [ -d "$REPO_DIR" ]; then
  cd $REPO_DIR && git pull
else
  git clone --branch 7.x-1.x http://git.drupal.org/project/commerce_deploy.git $SITE_DIR
fi


echo "Building development version of Commerce Deploy distribution..."
rm -rf $SITE_DIR
cd $REPO_DIR && sh build.sh $SITE_DIR
