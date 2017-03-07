class mysql (
        $package_name = $mysql::params::package_name,
        $service_name = $mysql::params::service_name,
) inherits mysql::params {
include mysql::repo
include mysql::package
include mysql::service
include mysql::user

}

