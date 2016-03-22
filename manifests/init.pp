class puppet_conjurdemo {

  secret { '/tmp/secrets':
    secrets => ['Puppet/production/foo'],

}
