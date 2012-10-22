# = Class: kibana::packages
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
class kibana::packages {
  $packagelist = ['kibana']
  package { $packagelist: ensure => installed }
}
