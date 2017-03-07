class mysql::repo{
	yumrepo { 'mariadb':
		descr => 'install mariadb client and server',
		baseurl => 'http://yum.mariadb.org/10.0/rhel7-amd64',
		gpgkey => 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB',
		enabled => 1,
		gpgcheck => 1,

}

}

