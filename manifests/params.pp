class mysql::params{
        case $::osfamily {
                'Redhat':{
                        $package_name = ["MariaDB-server","MariaDB-client"]
                        $service_name = "mysql"
        }
                'Debian': {
                        $package_name = ["mysql-client-5.1","mysql-server-5.1"]
                        $service_name = "mysql"
        }

}
}

