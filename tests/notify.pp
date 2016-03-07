  notify { "Value of secret" :
    message => conjur_secret("Puppet/${environment}/foo"),
  }
