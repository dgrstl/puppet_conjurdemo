class puppet_conjurdemo (
  $fname           = '/tmp/secrets',
  $secret_key_name = 'Puppet/production/foo',
) {

  puppet_conjurdemo::secret_conf_file { $fname :
    secrets => ['Puppet/production/foo', 'production/foo', 'puppetdemo/planet'],
  }

  user { 'josh':
    ensure => 'present',
  }

  puppet_conjurdemo::secret_value { 'josh' :
    secret_key_name => 'Puppet/production/foo',
    field           => 'comment',
    resource        => User['josh'],
  }

}
