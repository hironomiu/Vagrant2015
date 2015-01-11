class iptables::service {
    service{ 'iptables':
        enable => true,
        ensure => running,
        hasrestart => true,
        subscribe => File['/etc/sysconfig/iptables'],
    }
}
