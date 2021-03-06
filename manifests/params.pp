# Katello development parameters
class katello_devel::params() inherits ::katello::params { # lint:ignore:inherits_across_namespaces
  $user = undef

  $use_passenger = false
  $oauth_key          = cache_data('foreman_cache_data', 'oauth_consumer_key', random_password(32))
  $oauth_secret       = cache_data('foreman_cache_data', 'oauth_consumer_secret', random_password(32))

  $db_type = 'sqlite'
  $mongodb_path  = '/var/lib/mongodb'

  $deployment_dir = 'UNSET'

  $post_sync_token = 'test'

  $use_rvm = true
  $rvm_ruby = '1.9.3-p448'

  $initial_organization = 'Default Organization'
  $initial_location = 'Default Location'
  $admin_password = 'changeme'

}
