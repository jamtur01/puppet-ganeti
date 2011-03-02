Puppet Ganeti Type
=========================

This type starts and stops Ganeti instances

License: GPLv2

Requirements
------------

* NA

Usage
-----

    gnt-instance { "instance":
      target_node => node,
      os_type => ostype,
      disk_template => template,
      disk_size => 1234,
      ensure => present,
    }
