class mysql::user ($mysql_password="redhat"){
	exec{"set user-pass":
		path => ["/bin","/usr/bin"],
		command => "mysqladmin -u root password $mysql_password",
		require => Service['mysql'],
}


}
