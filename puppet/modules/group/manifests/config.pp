class group::config{
    group { 'appgroup':
        ensure => present,
        gid => 506,
    }

    group { 'demogroup':
        ensure => present,
        gid => 505,
        require => Group['appgroup']
    }

    exec { "usermod nginx" :
        user => 'root',
        path => ['/usr/sbin'],
        command => "usermod -G demogroup,appgroup nginx",
        timeout => 999,
        require => Group['demogroup']
    }

}
