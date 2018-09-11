#class service

class ntp::service inherits ntp {
  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }
}
