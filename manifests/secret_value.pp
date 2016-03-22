define puppet_conjurdemo::secret_value (
  $secret_key_name,
  $resource,
  $field,
) {

  datacat_collector { "$title Conjur secret":
    template_body   => template('puppet_conjurdemo/conjur_simple_secret.erb'),
    target_resource => $resource,
    target_field    => $field,
    notify          => $resource,
  }
}
