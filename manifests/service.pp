class openresty::service {
  include openresty::install
  service { "openresty":
  ensure  => running,
  start   => "/opt/openresty/nginx/sbin/nginx -c /opt/openresty/nginx/conf/nginx.conf",
  stop    => "/opt/openresty/nginx/sbin/nginx -s stop -c /opt/openresty/nginx/conf/nginx.conf",
  pattern => "/opt/openresty/nginx/conf/nginx.conf",
  require => Class["openresty::install"],
}
}
