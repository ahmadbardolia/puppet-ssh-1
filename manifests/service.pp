class ssh::service(
  $service_name = $::ssh::service_name,
) {
  service { $service_name: 
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
