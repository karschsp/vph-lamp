include apache
include drush
include firewall
include gcc
include mongodb

package { "lynx":
  ensure => present
}

notify { 'my_message':
  message => hiera('my_message'),
}

class { '::mysql::server':
  root_password    => 'strongpassword',
}
