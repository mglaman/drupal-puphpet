<?php
/**
 * @file
 * Example Drush alias file to automatically make aliases for drupal-puphpet
 * sites.
 */

// Home directory, used to get Vagrant insecure private key.
$home = drush_server_home();

$aliases['commerce2x'] = array(
  'uri' => 'commerce2x.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/commerce-2.x',
  'path-aliases' => array(
     '%files' => 'sites/commerce2x.dev/files',
   ),
);

$aliases['commercedeploy'] = array(
  'uri' => 'commercedeploy.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/commerce_deploy',
  'path-aliases' => array(
     '%files' => 'sites/commercedeploy.dev/files',
   ),
);

$aliases['commercekickstart'] = array(
  'uri' => 'commercekickstart.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/commerce_kickstart',
  'path-aliases' => array(
     '%files' => 'sites/commercekickstart.dev/files',
   ),
);

$aliases['drupal7'] = array(
  'uri' => 'drupal7.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/drupal-7',
  'path-aliases' => array(
     '%files' => 'sites/drupal7.dev/files',
   ),
);

$aliases['drupal8'] = array(
  'uri' => 'drupal8.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/drupal-8',
  'path-aliases' => array(
     '%files' => 'sites/default/files',
   ),
);

$aliases['d8panels'] = array(
  'uri' => 'd8panels.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/d8-panels',
  'path-aliases' => array(
    '%files' => 'sites/default/files',
  ),
);

$aliases['openatrium'] = array(
  'uri' => 'openatrium.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/openatrium',
  'path-aliases' => array(
     '%files' => 'sites/openatrium.dev/files',
   ),
);

$aliases['panopoly'] = array(
  'uri' => 'panopoly.dev',
  'remote-host' => '10.22.22.10',
  'remote-user' => 'vagrant',
  'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
  'root' => '/var/www/panopoly',
  'path-aliases' => array(
     '%files' => 'sites/panopoly.dev/files',
   ),
);
