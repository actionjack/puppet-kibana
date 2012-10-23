# = Class: kibana::service
#
#   class description goes here.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class kibana::service {
  service {'httpd':
    ensure     => 'running',
    enable     => 'true',
    hasrestart => 'true',
    hasstatus  => 'true',
    require => Class['kibana::packages']
  }
  File {
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Class['kibana::packages'],
  }
  file {'/etc/httpd/conf.d/kibana.conf':
    source  => 'puppet:///modules/kibana/etc/httpd/conf.d/kibana.conf',
    notify  => Service['httpd']
  }
  file {'/var/www/html/kibana/config.php':
    content => template('kibana/config.php.erb'),
  }
}
