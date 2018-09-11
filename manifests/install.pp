#class ntp install
# package install 
class ntp::install inherits ntp {
  package { $package_name:
    ensure   => $package_ensure,
    provider => $package_provider,
  }
}
