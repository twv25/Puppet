# Class: logstash
#
# This module manages logstash
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class logstash (
  $config      = $logstash::params::config,
  $config_temp = $logstash::params::config_temp,
  $jar         = $logstash::params::jar,
  $jar_file    = $logstash::params::jar_file,
  $java        = $logstash::params::java,
  $init_file   = $logstash::params::init_file,
  $init_temp   = $logstash::params::init_temp,
) inherits logstash::params {
 
  anchor { 'logstash::begin': } ->
  class {'::logstash::dependencies': } ->
  class {'::logstash::config': } ->
  class {'::logstash::install': } ->
  class {'::logstash::service': } ->
  anchor { 'logstash::end': }
}
