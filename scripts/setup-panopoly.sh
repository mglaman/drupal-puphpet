#!/bin/sh

echo "Checking out latest of Panopoly distribution..."
git clone --branch 7.x-1.x http://git.drupal.org/project/panopoly.git ../profiles/panopoly

echo "Building development version of Panopoly distribution..."
rm -rf ../sites/panopoly
cd ../profiles/panopoly/ && sh build.sh ../../sites/panopoly
