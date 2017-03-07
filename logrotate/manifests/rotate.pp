class logrotate::rotate {
	cron { 'logrotate':
 		 command => '/usr/sbin/logrotate',
		 user    => 'root',
  		 minute  => 1,
		 require => File['/etc/logrotate.conf'],
		 
}

}
