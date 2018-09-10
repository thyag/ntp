#class: ntp
#
class ntp (
  $package_ensure = 'present',
){
  # reso
  # package install 
  package { 'ntp':
    ensure   => $package_ensure,
    provider => 'yum',
  }
  # confi files
  file { '/etc/ntp.conf':
    ensure => $package_ensure,
    source => "/tmp/ntp.conf",
  }
  # manage service 
  service { 'ntpd':
    ensure => $package_ensure,
    enable => true,
  }
}
