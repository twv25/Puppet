#logstash::config
#logstash config shipper file and init file
class logstash::config inherits logstash {
  file { '/opt/logstash':
    ensure => directory
  }
  
  file { $config:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0755',
    content => template($config_temp),
    require => File['/opt/logstash'],
  }
  
  file { $init_file:
    ensure  => present,
    owner   => 0,
    group   => 0,
    mode    => '0755',
    content => template($init_temp),
  }
}