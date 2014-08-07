#!/bin/sh

echo "Checking out latest of Drupal 8.0.x into sites..."
rm -rf ../sites/drupal-8
git clone --branch 8.0.x http://git.drupal.org/project/drupal.git ../sites/drupal-8
