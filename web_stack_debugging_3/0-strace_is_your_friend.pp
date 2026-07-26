# Fixes the WordPress 500 error caused by a '.phpp' typo in wp-settings.php
exec { 'fix-wordpress':
  command => 'sed -i s/.phpp/.php/g /var/www/html/wp-settings.php',
  path    => '/usr/bin/:/usr/local/bin/:/bin/',
}
