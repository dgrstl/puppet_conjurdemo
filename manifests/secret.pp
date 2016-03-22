define puppet_conjurdemo::secret (
  $path = $title,
  $secrets,
) {

  data_collector { "$title Conjur secret":
    template_body => template('puppet_conjurdemo/conjur_secret.erb'),
  }
}
