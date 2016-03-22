class puppet_conjurdemo::setup (
  $conjur_url     = 'https://ec2-54-145-247-64.compute-1.amazonaws.com/api',
  $conjur_account = 'demo',
  $conjur_pem     = 'conjur-demo.pem',
  $host_key       = 'xhz066wnnsm0sv6rxtp9qzt2wpj6cr25g03ga1tf354q37mdnne',
) {

  class { 'conjur' :
    conjur_url         => $conjur_url,
    conjur_certificate => file("puppet_conjurdemo/${conjur_pem}"),
    conjur_account     => $conjur_account,
    host_id            => "ec2/i-da4e291d-n",
    hostfactory_token  => $host_key,
  }

}
