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
class exampleservice::exampleservice (
) {
  firewall { '102 allow exampleservice':
    action => accept,
    port   => [
      8000,
    ],
    proto  => tcp,
  }

  package { 'python':
    ensure => present,
  }

  package { 'myapp':
    ensure => latest,
  }

  service { 'myapp':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['myapp'],
  }
}
