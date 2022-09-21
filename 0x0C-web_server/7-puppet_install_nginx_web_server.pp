# install Nginx web server
package { 'nginx':
  ensure => installed,
}

file_line { '/etc/nginx/sites-available/default':
  ensure => present,
  line   => 'rewrite ^//redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  after  => 'service_name _;',
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => Hello World!,
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
