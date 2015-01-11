class user::config{
    include group::config
    Class['group::config'] ~> Class['user::config']

    user { 'appuser':
        ensure => present,
        gid => 'appgroup',
        comment => 'appuser',
        home => '/home/appuser',
        password => '$6$y/Bbu4WytvRtiHjg$fq1MHUEAK2DF/f54S3tjbW01IVrzRiW4Nukq2xWwuK2bDe063kNwZLNWQR0c50jpT7.oH8XcQ.Oj5TfdzKiFD.',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/appuser/.ssh':
        ensure => directory,
        owner => 'appuser',
        group => 'appgroup',
        mode => '0700',
        require => User["appuser"]
    }

    file { '/home/appuser':
        ensure => directory,
        owner => 'appuser',
        group => 'appgroup',
        mode => '0755',
        require => User["appuser"]
    }

    user { 'demouser':
        ensure => present,
        gid => 'demogroup',
        comment => 'demouser',
        home => '/home/demouser',
        password => '$6$3kjx22dgk.isOwXI$tE9MF05bKW.R3d5010nHhXgsQ2VqGLcuG0czce3C5EV3iyW9P8IyA1Vu/glDEEb1S80bVifmofxLn6d.arFAy/',
        managehome => true,
        shell => '/bin/bash',
    }

    file { '/home/demouser/.ssh':
        ensure => directory,
        owner => 'demouser',
        group => 'demogroup',
        mode => '0700',
        require => User["demouser"]
    }

    file { '/home/demouser':
        ensure => directory,
        owner => 'demouser',
        group => 'demogroup',
        mode => '0755',
        require => User["demouser"]
    }
}
