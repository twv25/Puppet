#logstash::params
#Used to change variables in one file

class logstash::params {
  $config      = '/opt/logstash/logstash.conf'
  $jar         = '/opt/logstash/logstash.jar'
  $config_temp = 'logstash/logstash.conf.erb'
  $jar_file    = "puppet:///modules/logstash/logstash.jar"
  $java        = 'java-1.7.0-openjdk'
  $init_file   = '/etc/init.d/logstash'
  $init_temp    = 'logstash/logstash.erb'
}