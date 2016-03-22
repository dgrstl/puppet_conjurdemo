class puppet_conjurdemo::setup {

  class { conjur:
    conjur_url => 'https://ec2-54-145-247-64.compute-1.amazonaws.com/api',
    conjur_certificate => file('conjur-demo.pem'),
    conjur_account => 'demo',
    host_id => 'ec2/i-c223b605',
    host_key => 'x34kt69b5nxf1826kxh395e2wm3c3tvgk119hckp3dq8qt52wc3290',
  }

}
