Drupal PuPHPet
------------------------------------------
Drupal PuPHPet is a [Drupal](https://www.drupal.org) development environment utilize [Vagrant](http://www.vagrantup.com/) configured through [PuPHPet](https://puphpet.com/)!

Configuring environments suck enough, so this project aims to be a one-stop-shop to start contributing with Drupal!

Currently the project just supports setting up various Drupal profiles to work on them (after all, a profile leads to a lot of contrib work and fixes!). Personally, I also keep any of my individual module work in this folder as well, for organization sake.

###Current development sites provided
* [Commerce Deploy](https://www.drupal.org/project/commerce_deploy): a distribution meant to spark Commerce contrib development, or simplify developers client work by bootstrapping a simple install.
* [Commerce Kickstart](https://www.drupal.org/project/commerce_kickstart): the most installed Drupal installation. Quickest way to deploy a fully functional Commerce site!
* [Commerce 2.x](https://github.com/commerceguys/commerce): Commerce 2.x development environment.
* Drupal 7: A vanilla Drupal 7 site for regular module development.
* Drupal 8: A Drupal 8 environment for those bleeding edge folks!
* [Open Atrium](https://www.drupal.org/project/openatrium) an intranet in a box! Built on the Panopoly distribution it provides an "extensible collaboration framework"
* [Panopoly](https://www.drupal.org/project/panopoly)!: Panopoly is powerful base distribution of Drupal powered by lots of Chaos Tools and Panels magic.

###How to setup Drupal PuPHPet
@todo: Fill this out better, but for now..
* Setup /etc/hosts to point development sites.
   * IP Address: 10.22.22.10
   * Environments are ENVNAME.dev
* Setup drush aliases (example provided for automated creation.)
* cd into scripts, sh a setup-*, then SITENEV-si.sh to setup database.

###Running Selenium for Behat Drupal Development
Some profiles (and modules) utilize Behat for testing, such as Panopoly. When drupal-puphpet is first ran it will install Selenium and a bash alias to run it. Here's how to get started with testing with Panopoly, as an example.
* SSH into the VM using `vagrant ssh`
* Run the alias `selenium` to kick it off.
* Open a new terminal window and once again run `vagrant ssh`
* Get to the Panopoly Test folder by `cd /var/www/panopoly/profiles/panopoly/panopoly_test/tests`
* Run `composer update`
* Kick off the tests with `bin/behat` and watch it go!
