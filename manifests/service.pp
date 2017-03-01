class ssh::servic {
  service { 'sshd': 
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
