class openresty::prereqs () {

    include stdlib

    if (
        ($::operatingsystem == 'Ubuntu') or
        ($::operatingsystem == 'Debian')
    ) {
        $deps = [
            'libreadline-dev',
            'libncurses5-dev',
            'libpcre3-dev',
            'libssl-dev',
            'perl',
            'make',
            'build-essential'
        ]

    } elsif ($::operatingsystem == 'Centos') {

        $deps = [
            'readline-devel',
            'pcre-devel',
            'openssl-devel',
            'gcc'
        ]

    }
    ensure_packages ($deps, {ensure => 'installed' })
}
