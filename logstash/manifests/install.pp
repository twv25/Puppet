#logstash::install
#installs logstash

class logstash::install inherits logstash {
  file { $jar:
    ensure => 'present',
    source => $jar_file,
  }
}