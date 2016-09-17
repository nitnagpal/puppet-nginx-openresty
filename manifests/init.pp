class openresty {
  include openresty::install
  include openresty::config
  include openresty::service
}
class openresty::install { 
 class { 'openresty::prereqs': }

 exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

 exec { "get openresty" :
    cwd         => "/tmp",
    command     => "/usr/bin/wget -c https://openresty.org/download/openresty-1.11.2.1.tar.gz && /bin/tar xvzf openresty-1.11.2.1.tar.gz \
                    && cd openresty-1.11.2.1.tar.gz && /tmp/openresty-1.11.2.1.tar.gz/configure --prefix=--prefix=/opt/openresty \
                    --conf-path=/opt/openresty/nginx.conf \
                    --with-cc-opt='-O2' \
		    --with-luajit  \
		    --with-pcre \
		    --with-pcre-jit \
		    --without-ngx_devel_kit_module \
		    --without-http_echo_module \
		    --without-http_xss_module \
		    --without-http_coolkit_module \
		    --without-http_set_misc_module \
		    --without-http_form_input_module \
		    --without-http_encrypted_session_module \
		    --without-http_srcache_module \
		    --without-http_headers_more_module \
		    --without-http_array_var_module \
		    --without-http_memc_module \
		    --without-http_redis2_module \
		    --without-http_redis_module \
		    --without-http_rds_json_module \
		    --without-http_rds_csv_module \
    		    && make && make install",
    logoutput   => true,
 }
} 
