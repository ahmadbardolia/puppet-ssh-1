class ssh::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'ssh'
      $package_name = 'openssh-server'
    }
    'RedHat': {
      $service_name = 'sshd'
      $package_name = 'openssh-server'
    }
    default: {
      fail("${::operatingsystem} is not supported!")
    }
  }
}
