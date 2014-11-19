#!/bin/sh
if [ -d "/var/selenium" ]; then
  sudo mkdir /var/selenium && cd /var/selenium
  wget http://selenium-release.storage.googleapis.com/2.40/selenium-server-standalone-2.40.0.jar
  # @todo: The following could be moved into Puppet, I'm assuming?
  sudo apt-get update
  sudo apt-get install openjdk-7-jre-headless -y
  sudo apt-get install firefox -y
  sudo apt-get install xvfb -y
fi
