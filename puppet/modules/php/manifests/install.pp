class php::install{
     yumrepo { 'hhvm-repo':
        descr => 'hhvm repo',
        baseurl  => 'http://www.hop5.in/yum/el6/',
        gpgkey   => 'http://dl.hhvm.com/conf/hhvm.gpg.key',
        enabled  => 1,
        gpgcheck => 0,
        priority => 1,
    }

    package{
        [
        'hhvm',
        ]:
        provider => 'yum',
        ensure => installed,
        require => Yumrepo['hhvm-repo'],
    }

    yumrepo { 'php-remi':
        descr => 'remi repo',
        mirrorlist => 'http://rpms.famillecollet.com/enterprise/6/remi/mirror',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi',
    }

    package{
        [
        'php',
        'php-pdo',
        'php-mcrypt',
        'php-mbstring',
        'php-mysqlnd',
        ]:
        provider => 'yum',
        ensure => installed,
        require => Yumrepo['php-remi'],
    }

}
