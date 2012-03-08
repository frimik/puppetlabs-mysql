# Class: mysql::params
#
# This class holds parameters that need to be 
# accessed by other classes.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class mysql::params{
  case $::operatingsystem {
    'centos', 'redhat', 'fedora': {
      $service_name         = 'mysqld'
      $client_package_name  = 'mysql'
      $socket               = '/var/lib/mysql/mysql.sock'
    }
    'ubuntu', 'debian': {
      $socket                   = '/var/run/mysqld/mysqld.sock'
      $service_name         = 'mysql'
      $client_package_name  = 'mysql-client'
    }
    default: {
      $socket                   = '/var/run/mysqld/mysqld.sock'
      $python_package_name  = 'python-mysqldb'
      $ruby_package_name    = 'ruby-mysql'
      $client_package_name  = 'mysql'
    }
  }
}
