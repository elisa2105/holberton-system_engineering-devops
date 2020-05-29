# increase limits

# restart service
exec { 'limit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

exec { 'nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
