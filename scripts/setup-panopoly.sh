#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`
REPO_DIR=$ROOT_DIR/profiles/panopoly
SITE_DIR=$ROOT_DIR/sites/panopoly

# Checkout or clone the repo.
echo "Checking out latest of Panopoly distribution..."
if [ -d "$REPO_DIR" ]; then
  cd $REPO_DIR && git pull
else
  git clone --branch 7.x-1.x http://git.drupal.org/project/panopoly.git $REPO_DIR
fi

echo "Building development version of Panopoly distribution..."
rm -rf $SITE_DIR
cd $REPO_DIR && sh build.sh $SITE_DIR
