define puppet_conjurdemo::secret (
  $path = $title,
  $secrets,
) {

  datacat_collector { "$title Conjur secret":
    template_body   => template('puppet_conjurdemo/conjur_secret.erb'),
    target_resource => File["$path"],
    target_field    => 'content',
  }
}
