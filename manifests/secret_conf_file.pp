define puppet_conjurdemo::secret_conf_file (
  $path = $title,
  $secrets,
) {

  file { $path :
    ensure => present,
  }

  datacat_collector { "$title Conjur secret":
    template_body   => template('puppet_conjurdemo/conjur_secret.erb'),
    target_resource => File[$path],
    target_field    => 'content',
    notify          => File[$path],
  }
}
