class puppet_conjurdemo {

  class { '::mysql::server':
    root_password => conjur_secret("puppet/${environment}/mysql/server/root_password")
  }


}
