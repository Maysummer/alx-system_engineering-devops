# make changes to the config file

file { '/etc/ssh/ssh_config':
  ensure => present,
  content => "Host *
  	IdentifyFIle ~/.ssh/school
	PasswordAuthentication no",
}
