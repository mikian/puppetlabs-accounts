define accounts::group(
  $ensure = 'present',
  $gid    = undef,
  $system = false
) {
  validate_re($ensure, '^(present|absent)$')
  validate_bool($system)

  if $gid != undef {
    validate_re($gid, '^\d+$')
  }
  $_gid = $gid

  group { $name:
    ensure => $ensure,
    gid    => $_gid,
    system => $system
  }
}
