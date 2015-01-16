class base::install{
    yumrepo { 'base-remi':
        descr => 'remi repo',
        mirrorlist => 'http://rpms.famillecollet.com/enterprise/6/remi/mirror',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi',
    }

    package{
        [
        'openssh-clients',
        'wget',
        'screen',
        'unzip',
        'tree',
        'make',
        'git',
        'dstat',
        'sysstat',
        'perf',
        'zsh',
        'golang',
        'redis',
        ]:
        ensure => installed,
        require => Yumrepo['base-remi'],
    }

    yumrepo { 'base-epel':
        descr => 'epel repo',
        mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch',
        enabled    => 1,
        gpgcheck   => 1,
        gpgkey     => 'https://fedoraproject.org/static/0608B895.txt',
    }

    package{
        [
        'siege',
        'nodejs',
        'npm',
        ]:
        ensure => installed,
        require => Yumrepo['base-epel'],
    }
}
