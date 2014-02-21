#logstash::dependencies
#installs logstash dependencies

class logstash::dependencies inherits logstash {
  $dependencies = [$java,]
  
  package { 
    $dependencies: ensure => installed
  }

}

