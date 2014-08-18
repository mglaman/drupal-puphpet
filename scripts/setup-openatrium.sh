#!/bin/sh

echo "Checking out latest of Panopoly distribution..."
git clone --branch 7.x-2.x http://git.drupal.org/project/openatrium.git ../profiles/openatrium

echo "Building development version of Panopoly distribution..."
rm -rf ../sites/openatrium
cd ../profiles/openatrium/ && sh build.sh ../../sites/openatrium
