#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`

echo "Checking out latest of Commerce Deploy distribution..."
git clone --branch 7.x-1.x http://git.drupal.org/project/commerce_deploy.git $ROOT_DIR/profiles/commerce_deploy

echo "Building development version of Commerce Deploy distribution..."
rm -rf $ROOT_DIR/sites/commerce_deploy
cd $ROOT_DIR/profiles/commerce_deploy/ && sh build.sh $ROOT_DIR/sites/commerce_deploy
