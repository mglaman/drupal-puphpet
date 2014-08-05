#!/bin/sh

echo "Checking out latest of Commerce Deploy distribution..."
git clone --branch 7.x-1.x http://git.drupal.org/project/commerce_deploy.git ../profiles/commerce_deploy

echo "Building development version of Commerce Deploy distribution..."
rm -rf ../sites/commerce_deploy
cd ../profiles/commerce_deploy/ && sh build.sh ../../sites/commerce_deploy
