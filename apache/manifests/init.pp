class apache (
	$package_name = $apache::params::package_name,
	$service_name = $apache::params::service_name,
	$document_root = $apache::params::document_root,
	$servername = $apache::params::servername
) inherits apache::params {

include apache::package
include apache::service

file {  'dir':
        path => $document_root,
	ensure => directory,
	recurse => true,
}

file {  'index':
	path => "${document_root}/index.html",
	ensure => file,
 	content => template('apache/index.html.erb'),
	require => File['dir'],
}

}
