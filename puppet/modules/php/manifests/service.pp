class php::service {
    service{ 'hhvm':
        enable => true,
        ensure => running,
        hasrestart => true,
    }
}
