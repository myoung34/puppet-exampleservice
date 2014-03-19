# == Class: Example Service
#
# This class installs the example service
#
# === Requires
#  [*puppetlabs-firewall*](https://github.com/puppetlabs/puppetlabs-firewall)
#
# === Variables
#
# === Examples
#
#  class { 'exampleservice':
#  }
#
# === Authors
#
# Marcus Young <myoung34@my.apsu.edu>
#
class exampleservice (
) {
  class { 'exampleservice::exampleservice':
  }
}
