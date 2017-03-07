class mysql::service ($service_name = $mysql::params::service_name){
        service {'mysql':
                name => $service_name,
                enable => true,
                ensure => running,
 }
}

