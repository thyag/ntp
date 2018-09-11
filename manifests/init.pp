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
#include classes
include ::ntp::install
include ::ntp::config
include ::ntp::service    
}
