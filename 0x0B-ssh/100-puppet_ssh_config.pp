# make changes to the config file

file { '~/.ssh/config':
  ensure => file,
  content => "Host *
  	IdentifyFIle ~/.ssh/school
	PasswordAuthentication no",
}
