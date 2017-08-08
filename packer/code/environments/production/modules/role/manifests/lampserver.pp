class role::lampserver {
  include profile::apache
  include profile::mysql
  include profile::php
}
