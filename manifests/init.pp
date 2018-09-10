#class: ntp
#
class ntp (
  $package_name = 'ntp',
  $package_ensure = 'present',
  $package_provider = 'yum',
  $file_path = '/etc/ntp.conf',
  $file_source = '/tmp/ntp.conf',  
  $file_ensure = 'present',
  $service_ensure = 'running',
  $service_name = 'ntpd',
  $service_enable = 'true',
){
  # reso
  # package install 
  package { $package_name:
    ensure   => $package_ensure,
    provider => $package_provider,
  }
  # confi files
  file { $file_path:
    ensure => $file_ensure,
    source => $file_source,
  }
  # manage service 
  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
  }
}
