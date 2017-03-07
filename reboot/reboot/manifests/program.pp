class reboot::program ( $time=hiera('time'),
		        $massage=hiera('massage'),
			)  {
			exec {'reboot':
			       command     => "shutdown -r ${time} ${massage}"
			       refreshonly => true,
	}
}
