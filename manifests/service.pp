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
  file {'/etc/httpd/conf.d/kibana.conf':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/kibana/etc/httpd/conf.d/kibana.conf',
    require => Class['kibana::packages'],
    notify  => Service['httpd']
  }
}
