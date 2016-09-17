class openresty::service {
  exec { "run openresty":
    command  => "/etc/init.d/openresty start openresty",
   require => Class["openresty::config"],
  }
}
