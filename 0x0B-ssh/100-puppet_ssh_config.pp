# make changes to the config file
include stdlib
file_line { 'Host name':
  ensure  => present,
  path    => '~/.ssh/config',
  line    => 'Host *',
  replace => true,
}
-> file_line { 'identify':
  ensure  => present,
  path    => '~/.ssh/config',
  line    => '	IdentityFile ~/.ssh/school',
  after   => '^Host name',
  replace => true,
}
-> file_line { 'password':
  ensure  => present,
  path    => '~/.ssh/config',
  line    => '	PasswordAuthentication no',
  after   => '^identify',
  replace => true,
}
