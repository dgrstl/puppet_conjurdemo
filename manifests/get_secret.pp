class puppet_conjurdemo::get_secret (
  $secret = "Puppet/${environment}/foo",
) {

  notify { "Value of ${secret}" :
    message => conjur_secret($secret),
  }

}
