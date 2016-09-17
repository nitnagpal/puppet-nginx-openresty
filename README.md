# puppet-nginx-openresty

Puppet Module for openresty compiled from source with below selected modules

1. HTTP SSL
2. Lua JIT
3. PCRE and PCRE JIT

Tested with Puppet Masterless on Debian, Ubuntu & CentOS

Commands to run :-

1. Installing Module

   `puppet module install puppet-nginx-openresty.tar.gz`

2. Applying the Module

   ` puppet apply -e 'include openrestly' `
