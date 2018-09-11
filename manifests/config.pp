#class ntp config

class ntp::config inherits ntp {
  file { $file_path:
    ensure => $file_ensure,
    source => $file_source,
  }
}
