# == Class: build-essential
#
# Install build-essential packages
#
# === Examples
#
#  class { build-essential: }
#  
#  or
#  
#  include build-essential
#
# === Authors
#
# Rogerio Prado de Jesus <rogeriopradoj@gmail.com>
#
# === Copyright
#
# Copyright 2013 Rogerio Prado de Jesus.
#
class build-essential {
    if $osfamily == 'Debian' {
        package { 'build-essential':
            ensure => 'present',
        }
    }
    else {
        warn( 'Just Debian-ish for now' )
    }
}
