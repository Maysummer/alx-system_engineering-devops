# install Nginx web server
package { 'nginx':
  ensure => installed,
}

file_line { '/etc/nginx/sites-available/default':
  ensure => present,
  after  => 'service_name _;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;'
}

file { '/var/www/html/index.html':
  ensure  => present,
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
