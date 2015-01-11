class group{
    include group::install
    include group::config

       Class['group::install']
    -> Class['group::config']
}
