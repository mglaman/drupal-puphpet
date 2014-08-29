#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`

echo "Checking out latest of Panopoly distribution..."
git clone --branch 7.x-2.x http://git.drupal.org/project/openatrium.git $ROOT_DIR/profiles/openatrium

echo "Building development version of Panopoly distribution..."
rm -rf $ROOT_DIR/sites/openatrium
cd $ROOT_DIR/profiles/openatrium/ && sh build.sh $ROOT_DIR/sites/openatrium
