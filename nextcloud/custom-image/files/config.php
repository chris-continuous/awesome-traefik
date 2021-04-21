<?php
$CONFIG = array (
  "overwritewebroot"  => "/" . getenv('INSTANCE_PATH'),
  'htaccess.RewriteBase' => '/'. getenv('INSTANCE_PATH') .'/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'passwordsalt' => 'hvxxZILIg0PBqyiF2m1LIA6kfp1WeB',
  'secret' => '4YtsLRRo97Ddz3emUR6hDJmd1rWHSVcgkL1tnapV66jGs8Lh',
  'trusted_domains' => 
  array (
    0 => 'christophe-docker-master.training01.continuous.team',
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',
  'version' => '18.0.14.1',
  'overwrite.cli.url' => 'http://localhost',
  'dbname' => 'nextcloud_test2',
  'dbhost' => '10.10.1.185',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'admtest2',
  'dbpassword' => '12345',
  'instanceid' => 'ocpg7gyd1tir',
  'installed' => true,
);
