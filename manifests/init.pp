class puppet_conjurdemo {

  file {'/tmp/secrets':
    ensure => present,
  }

  puppet_conjurdemo::secret { '/tmp/secrets':
    secrets => ['Puppet/production/foo', 'production/foo', 'puppetdemo/planet'],
  }
  #file {'/tmp/foo':
  #  content => template('puppet_conjurdemo/foo.erb'),
  #}

}
