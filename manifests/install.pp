class oraclejava::install {
  case $::operatingsystem {
    debian, ubuntu : {
      file { '/tmp/java.preseed':
        content => template('oraclejava/java.preseed.erb'),
        mode    => '0600',
        backup  => false,
      }

      package { "oracle-java${oraclejava::version}-installer":
        responsefile => '/tmp/java.preseed',
        require      => [
          Apt::Source['webupd8team'],
          File['/tmp/java.preseed']],
      }
    }
    default        : {
      notice "Unsupported operatingsystem ${::operatingsystem}"
    }
  }
}