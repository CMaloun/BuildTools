class profile::apache {
  class {'apache' :
    default_vhost => true,
  }
}
