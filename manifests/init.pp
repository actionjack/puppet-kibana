# = Class: kibana
#
# This class installs and configures the kibana service.
#
# == Parameters:
#
# Check params.pp to configure
#
# == Actions:
#   Installs and configures the kibana service.
#
# == Requires:
#   - Package["kibana"] in your local repo
#
# == Sample Usage:
#
# site.pp:
#    import "kibana" (optional since it's in autoload format)
#
# nodes.pp:
#    class kibana-client{
#        include kibana
#    }
#
class kibana inherits kibana::params {
  include kibana::packages
  include kibana::service
}
