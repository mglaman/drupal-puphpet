#!/bin/sh
ROOT_DIR=`dirname $(dirname $(readlink -f $0))`
REPO_DIR=$ROOT_DIR/profiles/openatrium
SITE_DIR=$ROOT_DIR/sites/openatrium

# Checkout or clone the repo.
echo "Checking out latest of Open Atrium distribution..."
if [ -d "$REPO_DIR" ]; then
  cd $REPO_DIR && git pull
else
  git clone --branch 7.x-2.x http://git.drupal.org/project/openatrium.git $REPO_DIR
fi


echo "Building development version of Open Atrium distribution..."
rm -rf $SITE_DIR
cd $REPO_DIR && sh build.sh $SITE_DIR
