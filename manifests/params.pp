class update_notifier::params {
  # AFAIK update-notifier is only supported on Debian derivatives
  if $::operatingsystem !~ /(?i-mx:ubuntu|debian)/ {
    fail ("Operating system ${::operatingsystem} is not supported")
  }

  $package = $::operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'update-notifier-common',
  }

  $ensure = 'present'
}
