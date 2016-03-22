class puppet_conjurdemo (
  $fname,
) {

  file { $fname :
    ensure => present,
  }

  puppet_conjurdemo::secret { $fname :
    secrets => ['Puppet/production/foo', 'production/foo', 'puppetdemo/planet'],
    notify  => File[$fname],
  }
  #file { $fname :
  #  content => template('puppet_conjurdemo/foo.erb'),
  #}

}
