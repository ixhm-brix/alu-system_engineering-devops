# Raises nginx's open file descriptor limit to remove failed requests under load
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx && service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/:/usr/bin/',
}
