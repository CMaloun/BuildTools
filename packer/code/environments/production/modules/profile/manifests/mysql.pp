class profile::mysql {
  class { '::mysql::server':
    root_password           => 'Password1',
    remove_default_accounts => true,
    override_options        => $override_options
  }

  include mysql::client
}
