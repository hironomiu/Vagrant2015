class user{
    include user::install
    include user::config

       Class['user::install']
    -> Class['user::config']
}
