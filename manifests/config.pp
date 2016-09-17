class openresty::config {
  file { "/etc/init.d/openresty":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
    source  => "puppet:///modules/openresty/openresty",
    require => Class["openresty::install"],
    notify  => Class["openresty::service"],
  }
}
