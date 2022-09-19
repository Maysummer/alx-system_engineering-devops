# make changes to the config file
file { '/etc/ssh/ssh_config':
  ensure  => file,
  content => 'Host *
  	IdentityFile ~/.ssh/school
	PasswordAuthentication no',
}
