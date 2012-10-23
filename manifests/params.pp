# = Class: kibana::params
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
class kibana::params {
  $elasticsearch_host = hiera('elasticsearch_host')
}
