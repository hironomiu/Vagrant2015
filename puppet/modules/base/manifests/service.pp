class base::service {
    service{ 'redis':
        enable => true,
        ensure => running,
        hasrestart => true,
    }
}
