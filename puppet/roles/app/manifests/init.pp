class app {
    include app::base
    include app::db-demouser
    include app::group
    include app::httpd
    include app::iptables
    include app::lang
    include app::localtime
    include app::memcached
    include app::mongodb
    include app::mysql
    include app::nginx
    include app::php
    include app::sshd
    include app::user
    include app::varnish
}
