class oraclejava::repository {
  case $::operatingsystem {
    debian, ubuntu : {
      include apt

      apt::source { 'webupd8team':
        location    => 'http://ppa.launchpad.net/webupd8team/java/ubuntu',
        release     => 'precise',
        repos       => 'main',
        key         => 'EEA14886',
        key_server  => 'keyserver.ubuntu.com',
        include_src => true
      }
    }
    default        : {
      notice "Unsupported operatingsystem ${::operatingsystem}"
    }
  }
}