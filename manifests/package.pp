class mysql::package ($package_name = $mysql::params::package_name) {
        package { $package_name:
          ensure => present,
          before => Service['mysql'],
   }
 }

