#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`

echo "Checking out latest of Panopoly distribution..."
git clone --branch 7.x-1.x http://git.drupal.org/project/panopoly.git $ROOT_DIR/profiles/panopoly

echo "Building development version of Panopoly distribution..."
rm -rf $ROOT_DIR/sites/panopoly
cd $ROOT_DIR/profiles/panopoly/ && sh build.sh $ROOT_DIR/sites/panopoly
