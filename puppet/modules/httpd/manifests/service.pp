class httpd::service {
    service{ 'httpd':
        enable => false,
        ensure => stopped,
        hasrestart => false,
    }
}
