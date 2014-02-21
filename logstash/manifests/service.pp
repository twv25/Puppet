#logstash::service
#manages logstash shipper service

class logstash::service inherits logstash {
  service { 'logstash':
    ensure     => 'running',
    enable     => true,
    name       => 'logstash',
    hasstatus  => true,
    hasrestart => true,
  }
}