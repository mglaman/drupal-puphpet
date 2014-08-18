<?php
/**
 * @file
 * Example Drush alias file to automatically make aliases for drupal-puphpet
 * sites.
 */

// We strip 3 for ., .., .DS_Store (so, this is Mac specific.)
$home = drush_server_home();
// Modify below as needed. I have repo cloned to ~/Drupal.
$sites_path = $home . '/Drupal/sites';
$clients = array_slice(scandir($sites_path), 3);

foreach ($clients as $key => $name) {
  $aliases[$name] = array(
    'uri' => $name . '.dev',
    'remote-host' => '10.22.22.10',
    'remote-user' => 'vagrant',
    'ssh-options' => '-p 22 -i ' . $home . '/.vagrant.d/insecure_private_key',
    'root' => '/var/www/' . $name,
    'path-aliases' => array(
       '%files' => 'sites/default/files',
     ),
  );
}
