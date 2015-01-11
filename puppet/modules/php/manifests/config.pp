class php::config {
    file { '/etc/hhvm/server.hdf':
        owner => 'root',
        group => 'root',
        content => template('php/hhvm/server.hdf'),
        mode => '0644',
    }

    file { '/etc/init.d/hhvm':
        owner => 'root',
        group => 'root',
        content => template('php/hhvm/hhvm'),
        mode => '0755',
    }

    file { '/etc/hhvm/php.ini':
        owner => 'root',
        group => 'root',
        content => template('php/hhvm/php.ini'),
        mode => '0644',
    }

    file { '/var/run/hhvm':
        ensure => directory,
        owner => 'nginx',
        group => 'root',
        mode => '0755',
    }

}
