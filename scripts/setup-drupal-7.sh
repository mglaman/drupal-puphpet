#!/bin/sh

echo "Checking out latest of Drupal 7.x into sites..."
rm -rf ../sites/drupal-7
git clone --branch 7.x http://git.drupal.org/project/drupal.git ../sites/drupal-7
