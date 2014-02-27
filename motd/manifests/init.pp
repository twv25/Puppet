# Class: motd
#
# This module manages motd
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#  include motd
#
class motd {
  if $::kernel == 'Linux' {
	  file { '/etc/motd':
	    ensure  => file,
	    mode    => 644,
	    content => template('motd/motd.erb');
	  }
  } 
}
