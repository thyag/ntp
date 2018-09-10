#class: ntp
#
class ntp (
  $package_ensure = 'present',
  $file_path = '/etc/ntp.conf',
  $file_source = '/tmp/ntp.conf',
  $package_provider = 'yum',
  $file_ensure = 'present',
  $service_ensure = 'present',

){
  # reso
  # package install 
  package { 'ntp':
    ensure   => $package_ensure,
    provider => $package_provider,
  }
  # confi files
  file { $file_path:
    ensure => $file_ensure,
    source => $file_source,
  }
  # manage service 
  service { 'ntpd':
    ensure => $service_ensure,
    enable => true,
  }
}
