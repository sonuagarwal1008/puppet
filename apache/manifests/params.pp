class apache::params {

if($::fqdn){
    	$servername = $::fqdn
} else { 
 	$servername = $::fqdn
 }


$document_root = "/var/www/html"
case $::osfamily {
	'Redhat':{
		$package_name = "httpd"
		$service_name = "httpd"
	}

	'Debian': {
		$package_name = "apache2"
		$service_name = "apache2"
	}
}
}
