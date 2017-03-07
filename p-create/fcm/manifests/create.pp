class fcm::create ($allow=hiera('allow'),) {
	File {
		mode => 0677,
		owner => root,
		group => root,
	}
	
	file {'create_dir':
		path => '/home/pupt',
		ensure => directory,

	}

 	file {'create_file':
		path => "/home/pupt/${allow}",
		ensure => present,
	}

}
